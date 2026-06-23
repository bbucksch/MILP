"""
Payload-sharing Apollo V2 model with ISRU and MILP spacecraft design.

This module extends the ClassicApolloV2dictflow_ISRU model with the spacecraft
design model from Chen and Ho Eq. 11.  The nonlinear propellant-capacity part
of the design equation is approximated with the same logarithmic piecewise
linear scheme used for ISRU.  Products between design variables and spacecraft
flow variables are replaced by binary copy variables and big-M product
variables, following the paper's Eq. 20-21.
"""

from dataclasses import dataclass, field
import math

import gurobipy as gp
from gurobipy import GRB
import numpy as np

from Linear_Func import add_log_pwl_1d
from ClassicApolloV2dictflow_ISRU import (
    ISRUConfig,
    NetworkData,
    VehicleData,
    add_isru_constraints,
    all_possible_outflow_arcs,
    create_commodity_flow,
    create_sc_commodity_flow,
    default_demands,
    no_self_payload,
    reverse_tof,
)


@dataclass
class DesignConfig:
    """
    Bounds and constants for the Chen-Ho spacecraft design model.

    Eq. 11 uses one fuel type at a time.  The paper's main design examples use
    LOX/kerosene, with Isp=330 s and alpha=0.045 from Appendix Table A2.
    """
    max_copies_per_vehicle: int = 3
    payload_capacity_bounds: tuple = (0.0, 50000.0)
    propellant_capacity_bounds: tuple = (0.0, 500000.0)
    structure_mass_bounds: tuple = (0.0, 150000.0)
    fuel_isp: float = 330.0
    fuel_alpha: float = 0.045
    burn_time: float = 120.0
    propellant_capacity_ub: float = 500000.0
    n_design_segments: int = 64
    min_payload_capacity: tuple = field(default_factory=tuple)
    min_propellant_capacity: tuple = field(default_factory=tuple)


def spacecraft_propulsion_structure_mass(
    propellant_capacity,
    alpha=0.045,
    isp=330.0,
    g0=9.80665,
    burn_time=120.0,
    propellant_capacity_ub=500000.0,
):
    """
    Nonlinear M-dependent part of Chen-Ho Eq. 11.

    The full model is:
        s = 2.3931*C + alpha*M*(1 - 0.2*M/M_UB)
            + 0.4189*((M*Isp*g0/t_b)**0.7764)/g0

    The first term is linear in payload capacity C.  This function contains the
    nonlinear propellant/tank/engine contribution and is approximated by PWL.
    """
    M = max(0.0, float(propellant_capacity))
    tank_mass = alpha * M * (1.0 - 0.2 * M / propellant_capacity_ub)
    engine_term = 0.0
    if M > 0:
        engine_term = 0.4189 * ((M * isp * g0 / burn_time) ** 0.7764) / g0
    return tank_mass + engine_term


def spacecraft_structure_mass(payload_capacity, propellant_capacity, design_config=None, g0=9.80665):
    """Evaluate Chen-Ho Eq. 11 outside Gurobi for reporting or breakpoints."""
    cfg = design_config or DesignConfig()
    return (
        2.3931 * payload_capacity
        + spacecraft_propulsion_structure_mass(
            propellant_capacity,
            alpha=cfg.fuel_alpha,
            isp=cfg.fuel_isp,
            g0=g0,
            burn_time=cfg.burn_time,
            propellant_capacity_ub=cfg.propellant_capacity_ub,
        )
    )


def phi(i, j, v, network, vehicle_data):
    """Rocket-equation propellant mass fraction for a vehicle and arc."""
    if vehicle_data.isp[v] == 0:
        return 1
    return 1 - np.exp(-(1000 * network.delta_v[i][j] / (vehicle_data.isp[v] * network.g0)))


def add_binary_product(model, continuous_var, binary_var, upper_bound, name):
    """
    Linearize z = continuous_var * binary_var using Chen-Ho Eq. 21.

    The continuous variable is assumed nonnegative and bounded above by
    upper_bound.  binary_var must be binary.
    """
    z = model.addVar(lb=0, ub=upper_bound, vtype=GRB.CONTINUOUS, name=name)
    model.addConstr(z <= upper_bound * binary_var, name=f"{name}_ub_by_binary")
    model.addConstr(z <= continuous_var, name=f"{name}_ub_by_continuous")
    model.addConstr(z >= continuous_var - (1 - binary_var) * upper_bound,
                    name=f"{name}_lb_big_m")
    return z


def create_design_variables(model, ctx):
    """Create C_v, M_v, and s_v and link them through Eq. 11 with PWL."""
    cfg = ctx["design_config"]
    network = ctx["network"]
    vehicle_data = ctx["vehicle_data"]
    V = ctx["V"]

    C_lb, C_ub = cfg.payload_capacity_bounds
    M_lb, M_ub = cfg.propellant_capacity_bounds
    s_lb, s_ub = cfg.structure_mass_bounds

    min_C = cfg.min_payload_capacity or tuple(float(x) for x in vehicle_data.payload_cap)
    min_M = cfg.min_propellant_capacity or tuple(float(x) for x in vehicle_data.propellant_cap)

    payload_capacity = {}
    propellant_capacity = {}
    propulsion_structure = {}
    structure_mass = {}

    for v in range(V):
        payload_capacity[v] = model.addVar(
            lb=max(C_lb, float(min_C[v])),
            ub=C_ub,
            vtype=GRB.CONTINUOUS,
            name=f"design_payload_capacity_vehicle{v}",
        )
        propellant_capacity[v] = model.addVar(
            lb=max(M_lb, float(min_M[v])),
            ub=M_ub,
            vtype=GRB.CONTINUOUS,
            name=f"design_propellant_capacity_vehicle{v}",
        )
        propulsion_structure[v] = model.addVar(
            lb=0,
            ub=s_ub,
            vtype=GRB.CONTINUOUS,
            name=f"design_propulsion_structure_vehicle{v}",
        )
        structure_mass[v] = model.addVar(
            lb=s_lb,
            ub=s_ub,
            vtype=GRB.CONTINUOUS,
            name=f"design_structure_mass_vehicle{v}",
        )

        add_log_pwl_1d(
            model,
            lambda M, cfg=cfg, g0=network.g0: spacecraft_propulsion_structure_mass(
                M,
                alpha=cfg.fuel_alpha,
                isp=cfg.fuel_isp,
                g0=g0,
                burn_time=cfg.burn_time,
                propellant_capacity_ub=cfg.propellant_capacity_ub,
            ),
            M_lb,
            M_ub,
            cfg.n_design_segments,
            name=f"spacecraft_design_pwl_vehicle{v}",
            x_var=propellant_capacity[v],
            z_var=propulsion_structure[v],
        )
        model.addConstr(
            structure_mass[v] == 2.3931 * payload_capacity[v] + propulsion_structure[v],
            name=f"spacecraft_design_eq11_vehicle{v}",
        )

    ctx["design_vars"] = {
        "payload_capacity": payload_capacity,
        "propellant_capacity": propellant_capacity,
        "propulsion_structure": propulsion_structure,
        "structure_mass": structure_mass,
    }


def create_copy_and_product_variables(model, ctx):
    """
    Create binary copy variables and product variables for every feasible arc.

    Active spacecraft:
        y_vijt = sum_k b_vijkt
        dry_on_arc = sum_k s_v * b_vijkt
        payload_cap_on_arc = sum_k C_v * b_vijkt
        prop_cap_on_arc = sum_k M_v * b_vijkt

    Carried spacecraft payloads use the same idea so products such as
    s_payload * carried_count and M_payload * carried_count stay linear.
    """
    cfg = ctx["design_config"]
    max_copies = cfg.max_copies_per_vehicle
    s_ub = cfg.structure_mass_bounds[1]
    C_ub = cfg.payload_capacity_bounds[1]
    M_ub = cfg.propellant_capacity_bounds[1]

    b_arc = {}
    active_dry = {}
    active_payload_cap = {}
    active_prop_cap = {}
    payload_copy = {}
    payload_dry = {}
    payload_prop_cap = {}

    for v in range(ctx["V"]):
        b_arc[v] = {}
        active_dry[v] = {}
        active_payload_cap[v] = {}
        active_prop_cap[v] = {}
        for i in ctx["connections"]:
            b_arc[v][i] = {}
            active_dry[v][i] = {}
            active_payload_cap[v][i] = {}
            active_prop_cap[v][i] = {}
            for j in ctx["connections"][i]:
                b_arc[v][i][j] = {}
                active_dry[v][i][j] = {}
                active_payload_cap[v][i][j] = {}
                active_prop_cap[v][i][j] = {}

    for carrier in range(ctx["V"]):
        payload_copy[carrier] = {}
        payload_dry[carrier] = {}
        payload_prop_cap[carrier] = {}
        for payload_v in ctx["carriable"]:
            payload_copy[carrier][payload_v] = {}
            payload_dry[carrier][payload_v] = {}
            payload_prop_cap[carrier][payload_v] = {}
            for i in ctx["connections"]:
                payload_copy[carrier][payload_v][i] = {}
                payload_dry[carrier][payload_v][i] = {}
                payload_prop_cap[carrier][payload_v][i] = {}
                for j in ctx["connections"][i]:
                    payload_copy[carrier][payload_v][i][j] = {}
                    payload_dry[carrier][payload_v][i][j] = {}
                    payload_prop_cap[carrier][payload_v][i][j] = {}

    for t in ctx["all_arcs"]:
        for i in ctx["all_arcs"][t]:
            for j in ctx["all_arcs"][t][i]:
                for v in range(ctx["V"]):
                    copies = []
                    dry_terms = []
                    payload_cap_terms = []
                    prop_cap_terms = []
                    for k in range(max_copies):
                        b = model.addVar(
                            vtype=GRB.BINARY,
                            name=f"active_copy_vehicle{v}_copy{k}_start{i}_end{j}_time{t}",
                        )
                        copies.append(b)
                        dry_terms.append(add_binary_product(
                            model,
                            ctx["design_vars"]["structure_mass"][v],
                            b,
                            s_ub,
                            f"active_dry_vehicle{v}_copy{k}_start{i}_end{j}_time{t}",
                        ))
                        payload_cap_terms.append(add_binary_product(
                            model,
                            ctx["design_vars"]["payload_capacity"][v],
                            b,
                            C_ub,
                            f"active_payload_cap_vehicle{v}_copy{k}_start{i}_end{j}_time{t}",
                        ))
                        prop_cap_terms.append(add_binary_product(
                            model,
                            ctx["design_vars"]["propellant_capacity"][v],
                            b,
                            M_ub,
                            f"active_prop_cap_vehicle{v}_copy{k}_start{i}_end{j}_time{t}",
                        ))

                    b_arc[v][i][j][t] = copies
                    active_dry[v][i][j][t] = gp.quicksum(dry_terms)
                    active_payload_cap[v][i][j][t] = gp.quicksum(payload_cap_terms)
                    active_prop_cap[v][i][j][t] = gp.quicksum(prop_cap_terms)
                    model.addConstr(ctx["y_outflow"][v][i][j][t][0] == gp.quicksum(copies),
                                    name=f"link_y_out_to_binary_copies_vehicle{v}_start{i}_end{j}_time{t}")
                    model.addConstr(ctx["y_inflow"][v][i][j][t][0] == gp.quicksum(copies),
                                    name=f"link_y_in_to_binary_copies_vehicle{v}_start{i}_end{j}_time{t}")

                    for payload_v in ctx["carriable"]:
                        p_copies = []
                        p_dry_terms = []
                        p_prop_cap_terms = []
                        for k in range(max_copies):
                            p = model.addVar(
                                vtype=GRB.BINARY,
                                name=f"payload_copy_carrier{v}_payload{payload_v}_copy{k}_start{i}_end{j}_time{t}",
                            )
                            p_copies.append(p)
                            p_dry_terms.append(add_binary_product(
                                model,
                                ctx["design_vars"]["structure_mass"][payload_v],
                                p,
                                s_ub,
                                f"payload_dry_carrier{v}_payload{payload_v}_copy{k}_start{i}_end{j}_time{t}",
                            ))
                            p_prop_cap_terms.append(add_binary_product(
                                model,
                                ctx["design_vars"]["propellant_capacity"][payload_v],
                                p,
                                M_ub,
                                f"payload_prop_cap_carrier{v}_payload{payload_v}_copy{k}_start{i}_end{j}_time{t}",
                            ))
                        payload_copy[v][payload_v][i][j][t] = p_copies
                        payload_dry[v][payload_v][i][j][t] = gp.quicksum(p_dry_terms)
                        payload_prop_cap[v][payload_v][i][j][t] = gp.quicksum(p_prop_cap_terms)
                        model.addConstr(
                            ctx["scpayload_outflow"][v][i][j][t][payload_v][0] == gp.quicksum(p_copies),
                            name=f"link_payload_out_to_binary_copies_carrier{v}_payload{payload_v}_start{i}_end{j}_time{t}",
                        )
                        model.addConstr(
                            ctx["scpayload_inflow"][v][i][j][t][payload_v][0]
                            == ctx["scpayload_outflow"][v][i][j][t][payload_v][0],
                            name=f"payload_copy_pass_through_carrier{v}_payload{payload_v}_start{i}_end{j}_time{t}",
                        )

    ctx["copy_vars"] = {
        "active_copy": b_arc,
        "active_dry": active_dry,
        "active_payload_cap": active_payload_cap,
        "active_prop_cap": active_prop_cap,
        "payload_copy": payload_copy,
        "payload_dry": payload_dry,
        "payload_prop_cap": payload_prop_cap,
    }


def add_design_arc_transformation_constraints(model, ctx):
    """
    Add arc transformations with dynamic dry mass terms.

    This replaces the original matrix multiplication where dry mass was a
    constant coefficient.  Propellant burn is linear because dry mass on each
    arc is already represented by big-M product variables.
    """
    prop = ctx["prop_index"]
    packaged = ctx["isru_indices"]["packaged"]
    active = ctx["isru_indices"]["active"]

    for t in ctx["all_arcs"]:
        for i in ctx["all_arcs"][t]:
            for j in ctx["all_arcs"][t][i]:
                eligible_isru = i == j and i in ctx["isru_config"].active_nodes and ctx["isru_config"].enabled
                for v in range(ctx["V"]):
                    xout = ctx["x_outflow"][v][i][j][t]
                    xin = ctx["x_inflow"][v][i][j][t]
                    burn_fraction = 0 if ctx["network"].delta_v[i][j] <= 0 else phi(i, j, v, ctx["network"], ctx["vehicle_data"])

                    model.addConstr(xin[0][0] == xout[0][0],
                                    name=f"design_transform_crew_vehicle{v}_start{i}_end{j}_time{t}")
                    model.addConstr(
                        xin[1][0] == xout[1][0] - ctx["consumption"] * ctx["network"].tof[i][j] * xout[0][0],
                        name=f"design_transform_consumables_vehicle{v}_start{i}_end{j}_time{t}",
                    )
                    model.addConstr(xin[2][0] == xout[2][0],
                                    name=f"design_transform_equipment_vehicle{v}_start{i}_end{j}_time{t}")
                    model.addConstr(xin[3][0] == xout[3][0],
                                    name=f"design_transform_samples_vehicle{v}_start{i}_end{j}_time{t}")

                    if not eligible_isru:
                        model.addConstr(xin[packaged][0] == xout[packaged][0],
                                        name=f"design_transform_packaged_isru_vehicle{v}_start{i}_end{j}_time{t}")
                        model.addConstr(xin[active][0] == xout[active][0],
                                        name=f"design_transform_active_isru_vehicle{v}_start{i}_end{j}_time{t}")

                    carried_dry = gp.quicksum(
                        ctx["copy_vars"]["payload_dry"][v][payload_v][i][j][t]
                        for payload_v in ctx["carriable"]
                    )
                    burn_mass = (
                        ctx["crew_mass"] * xout[0][0]
                        + xout[1][0]
                        + xout[2][0]
                        + xout[3][0]
                        + xout[prop][0]
                        + ctx["copy_vars"]["active_dry"][v][i][j][t]
                        + carried_dry
                    )

                    if not eligible_isru:
                        model.addConstr(
                            xin[prop][0] == xout[prop][0] - burn_fraction * burn_mass,
                            name=f"design_transform_propellant_vehicle{v}_start{i}_end{j}_time{t}",
                        )
                    model.addConstr(
                        xin[prop][0] >= xout[prop][0] - ctx["copy_vars"]["active_prop_cap"][v][i][j][t],
                        name=f"design_tank_only_burn_vehicle{v}_start{i}_end{j}_time{t}",
                    )


def add_design_concurrency_constraints(model, ctx):
    """Capacity constraints using linearized C*b and M*b terms."""
    prop = ctx["prop_index"]
    packaged = ctx["isru_indices"]["packaged"]

    for v in range(ctx["V"]):
        for t in ctx["all_arcs"]:
            for i in ctx["all_arcs"][t]:
                for j in ctx["all_arcs"][t][i]:
                    xout = ctx["x_outflow"][v][i][j][t]
                    carried_dry = gp.quicksum(
                        ctx["copy_vars"]["payload_dry"][v][payload_v][i][j][t]
                        for payload_v in ctx["carriable"]
                    )
                    carried_prop_cap = gp.quicksum(
                        ctx["copy_vars"]["payload_prop_cap"][v][payload_v][i][j][t]
                        for payload_v in ctx["carriable"]
                    )
                    payload_mass = (
                        ctx["crew_mass"] * xout[0][0]
                        + xout[1][0]
                        + xout[2][0]
                        + xout[3][0]
                        + xout[packaged][0]
                        + carried_dry
                    )
                    prop_mass = xout[prop][0]

                    model.addConstr(
                        payload_mass <= ctx["copy_vars"]["active_payload_cap"][v][i][j][t],
                        name=f"design_payload_capacity_vehicle{v}_start{i}_end{j}_time{t}",
                    )
                    model.addConstr(
                        prop_mass <= ctx["copy_vars"]["active_prop_cap"][v][i][j][t] + carried_prop_cap,
                        name=f"design_propellant_capacity_vehicle{v}_start{i}_end{j}_time{t}",
                    )
                    model.addConstr(
                        payload_mass + prop_mass
                        <= ctx["copy_vars"]["active_payload_cap"][v][i][j][t]
                        + ctx["copy_vars"]["active_prop_cap"][v][i][j][t],
                        name=f"design_combined_capacity_vehicle{v}_start{i}_end{j}_time{t}",
                    )


def add_mass_balance_constraints(model, ctx):
    """Mass balance copied from V2, with aggregate carried-spacecraft flows."""
    for t in ctx["all_arcs"]:
        for i in ctx["all_arcs"][t]:
            x_outflow_sum = sum(
                ctx["x_outflow"][v][i][j][t]
                if (t in ctx["all_arcs"]) and (i in ctx["all_arcs"][t]) and (j in ctx["all_arcs"][t][i])
                else np.array([[0] for _ in range(len(ctx["X"]))])
                for v in range(ctx["V"])
                for j in ctx["connections"][i]
            )
            x_inflow_sum = sum(
                ctx["x_inflow"][v][j][i][ctx["rev_arcs"][t][i][j]["ArrivalTime"]]
                if (t in ctx["rev_arcs"]) and (i in ctx["rev_arcs"][t]) and (j in ctx["rev_arcs"][t][i])
                else np.array([[0] for _ in range(len(ctx["X"]))])
                for v in range(ctx["V"])
                for j in ctx["connections"][i]
            )
            for x in range(len(ctx["X"])):
                model.addConstr(
                    x_outflow_sum[x][0] - x_inflow_sum[x][0] <= ctx["D"][i][t][x],
                    name=f"mass_balance_x_node{i}_time{t}_comm{x}",
                )

            for v in range(ctx["V"]):
                y_outflow_sum = sum(
                    ctx["y_outflow"][v][i][j][t]
                    if (t in ctx["all_arcs"]) and (i in ctx["all_arcs"][t]) and (j in ctx["all_arcs"][t][i])
                    else np.array([0])
                    for j in ctx["connections"][i]
                )
                y_inflow_sum = sum(
                    ctx["y_inflow"][v][j][i][ctx["rev_arcs"][t][i][j]["ArrivalTime"]]
                    if (t in ctx["rev_arcs"]) and (i in ctx["rev_arcs"][t]) and (j in ctx["rev_arcs"][t][i])
                    else np.array([0])
                    for j in ctx["connections"][i]
                )
                payload_out = sum(
                    ctx["scpayload_outflow"][carrier][i][j][t][v]
                    if (t in ctx["all_arcs"]) and (i in ctx["all_arcs"][t]) and (j in ctx["all_arcs"][t][i])
                    else np.array([0])
                    for carrier in range(ctx["V"])
                    for j in ctx["connections"][i]
                )
                payload_in = sum(
                    ctx["scpayload_inflow"][carrier][j][i][ctx["rev_arcs"][t][i][j]["ArrivalTime"]][v]
                    if (t in ctx["rev_arcs"]) and (i in ctx["rev_arcs"][t]) and (j in ctx["rev_arcs"][t][i])
                    else np.array([0])
                    for carrier in range(ctx["V"])
                    for j in ctx["connections"][i]
                )
                y_outflow_sum = y_outflow_sum + payload_out
                y_inflow_sum = y_inflow_sum + payload_in

                if (t < ctx["network"].T - 1) and (t != 0):
                    model.addConstr(y_outflow_sum[0] - y_inflow_sum[0] == ctx["d"][i][v][t],
                                    name=f"SC_lossless_mass_balance_x_node{i}_time{t}_vehicle{v}")
                else:
                    model.addConstr(y_outflow_sum[0] - y_inflow_sum[0] <= ctx["d"][i][v][t],
                                    name=f"SC_mass_balance_x_node{i}_time{t}_vehicle{v}")


def set_design_objective(model, ctx, start_node=1, start_time=0):
    """Minimize IMLEO with dynamic spacecraft dry masses."""
    cost = (
        sum(
            np.dot(ctx["mass_conversion"], ctx["x_outflow"][v][start_node][j][start_time])[0]
            + ctx["copy_vars"]["active_dry"][v][start_node][j][start_time]
            for v in range(ctx["V"])
            for j in ctx["all_arcs"][start_time][start_node]
        )
        + sum(
            ctx["copy_vars"]["payload_dry"][v][k][start_node][j][start_time]
            for v in range(ctx["V"])
            for k in ctx["carriable"]
            for j in ctx["all_arcs"][start_time][start_node]
        )
    )
    model.setObjective(cost, GRB.MINIMIZE)
    return cost


def build_model(
    network=None,
    vehicle_data=None,
    D=None,
    d=None,
    isru_config=None,
    design_config=None,
    model_name="ClassicApolloV2dictflow_ISRU_design_MILP",
    optimize=False,
):
    """Build the V2 payload-sharing model with ISRU and spacecraft design."""
    network = network or NetworkData()
    vehicle_data = vehicle_data or VehicleData()
    isru_config = isru_config or ISRUConfig()
    design_config = design_config or DesignConfig()

    T_adv = list(range(network.T))
    V = len(vehicle_data.structure_mass)
    carriable = list(range(V))

    all_arcs = all_possible_outflow_arcs(network.connections, T_adv, network.node_windows, network.tof)
    rev_arcs = all_possible_outflow_arcs(
        network.connections,
        T_adv,
        {key: list(reversed(value)) for key, value in network.node_windows.items()},
        reverse_tof(network.tof),
    )

    commodity_names = [
        "crew",
        "consumables",
        "equipment",
        "samples",
        "propellant",
        isru_config.packaged_name,
        isru_config.active_name,
    ]
    X = [
        GRB.INTEGER,
        GRB.CONTINUOUS,
        GRB.CONTINUOUS,
        GRB.CONTINUOUS,
        GRB.CONTINUOUS,
        GRB.CONTINUOUS,
        GRB.CONTINUOUS,
    ]
    carried_var_types = [GRB.INTEGER for _ in carriable]
    prop_index = 4
    isru_indices = {"packaged": 5, "active": 6}
    crew_mass = 100
    mass_conversion = [crew_mass, 1, 1, 1, 1, 1, 1]
    consumption = 1.0 + 5.0 + 1.1

    if D is None or d is None:
        default_D, default_d = default_demands(network, len(X), V)
        D = default_D if D is None else D
        d = default_d if d is None else d

    model = gp.Model(model_name)
    x_outflow = create_commodity_flow(model, V, X, all_arcs, network.connections, direction="out")
    x_inflow = create_commodity_flow(model, V, X, all_arcs, network.connections, direction="in")
    y_outflow = create_sc_commodity_flow(model, V, vehicle_data.sc_vtype, all_arcs, network.connections, direction="out")
    y_inflow = create_sc_commodity_flow(model, V, vehicle_data.sc_vtype, all_arcs, network.connections, direction="in")
    scpayload_outflow = create_commodity_flow(
        model, V, carried_var_types, all_arcs, network.connections, direction="out", typeC="SCPayload",
    )
    scpayload_inflow = create_commodity_flow(
        model, V, carried_var_types, all_arcs, network.connections, direction="in", typeC="SCPayload",
    )

    ctx = {
        "model": model,
        "network": network,
        "vehicle_data": vehicle_data,
        "design_config": design_config,
        "V": V,
        "X": X,
        "D": D,
        "d": d,
        "connections": network.connections,
        "all_arcs": all_arcs,
        "rev_arcs": rev_arcs,
        "x_outflow": x_outflow,
        "x_inflow": x_inflow,
        "y_outflow": y_outflow,
        "y_inflow": y_inflow,
        "scpayload_outflow": scpayload_outflow,
        "scpayload_inflow": scpayload_inflow,
        "carriable": carriable,
        "commodity_names": commodity_names,
        "mass_conversion": mass_conversion,
        "prop_index": prop_index,
        "isru_indices": isru_indices,
        "isru_config": isru_config,
        "crew_mass": crew_mass,
        "consumption": consumption,
    }

    create_design_variables(model, ctx)
    create_copy_and_product_variables(model, ctx)
    no_self_payload(model, ctx)
    add_mass_balance_constraints(model, ctx)
    add_design_arc_transformation_constraints(model, ctx)
    ctx["isru_vars"] = add_isru_constraints(model, ctx)
    add_design_concurrency_constraints(model, ctx)
    ctx["objective"] = set_design_objective(model, ctx)
    model.update()

    if optimize:
        model.optimize()
    return ctx


def solve_model(**kwargs):
    kwargs["optimize"] = True
    return build_model(**kwargs)


def extract_results(ctx, **kwargs):
    from .results_viz import extract_results as _extract_results

    return _extract_results(ctx, **kwargs)


def visualize_results(ctx, **kwargs):
    from .results_viz import visualize_results as _visualize_results

    return _visualize_results(ctx, **kwargs)

