"""
Classic Apollo dictionary-flow model with spacecraft sharing and ISRU support.

This is a callable Python version of ClassicApolloV2dictflow.ipynb.  It keeps
the original dictionary flow architecture, including spacecraft-as-payload
variables, and adds two ISRU commodities:
    packaged_isru: movable ISRU hardware that counts as payload mass.
    active_isru: deployed ISRU hardware that may operate only on configured
        holdover arcs.

The ISRU production curve is the same definition used in Linearization.py.  A
logarithmic piecewise-linear approximation is added through
Linear_Func.add_log_pwl_1d so scenario runs can stay MILP-compatible.
"""

from dataclasses import dataclass, field
import math
import copy

import gurobipy as gp
from gurobipy import GRB
import numpy as np

from Linear_Func import add_log_pwl_1d


def ISRUfunc(x):
    """ISRU productivity in kg O2/year/kg ISRU, copied from Linearization.py."""
    if x < 400:
        return 0
    c1 = -0.438
    c2 = 1 - math.exp(x / -812.15163)
    c3 = 1 - math.exp(x / -3967.2644)
    return c1 + (6.9623 * c2) + (2.0173 * c3)


def ISRU_total_annual_output(mass):
    return mass * ISRUfunc(mass)


# @dataclass is used for scenario inputs that are mostly data.
# It automatically creates an __init__ method, readable repr, and simple
# attribute storage, so a scenario can override only the values it needs:
# VehicleData(payload_cap=np.array([...])).
@dataclass
class VehicleData:
    """Defaults match the active payload-sharing test case in the notebook."""
    structure_mass: np.ndarray = field(default_factory=lambda: np.array([2500, 30]))
    isp: np.ndarray = field(default_factory=lambda: np.array([900, 200]))
    payload_cap: np.ndarray = field(default_factory=lambda: np.array([10000, 75]))
    propellant_cap: np.ndarray = field(default_factory=lambda: np.array([4000, 17000]))
    sc_vtype: str = GRB.INTEGER


# field(default_factory=...) is important for lists, dictionaries, and arrays.
# It gives each NetworkData instance its own fresh object instead of sharing a
# single mutable default between model runs.
@dataclass
class NetworkData:
    g0: float = 9.80665
    connections: dict = field(default_factory=lambda: {
        0: [0, 1],
        1: [0, 1, 2],
        2: [1, 2, 3],
        3: [2, 3],
    })
    T: int = 12
    node_windows: dict = field(default_factory=lambda: {
        0: [0, 4, 8, 9, 10, 11],
        1: [0, 5, 9, 10, 11],
        2: list(range(12)),
        3: [0, 2, 3, 4, 5, 6, 11],
    })
    delta_v: dict = field(default_factory=lambda: {
        0: {0: 0, 1: 1000},
        1: {0: 0, 1: 0, 2: 4.04},
        2: {1: 4.04, 2: 0, 3: 1.87},
        3: {2: 1.87, 3: 0},
    })
    tof: dict = field(default_factory=lambda: {
        0: {0: 1, 1: 1},
        1: {0: 1, 1: 1, 2: 3},
        2: {1: 3, 2: 1, 3: 1},
        3: {2: 1, 3: 1},
    })


# ISRUConfig is also a dataclass because it is a compact bundle of parameters
# that changes between scenario runs but has no solver behavior of its own.
@dataclass
class ISRUConfig:
    enabled: bool = True
    active_nodes: tuple = (3,)
    max_mass: float = 10000.0
    n_segments: int = 100
    days_per_year: float = 365.0
    packaged_name: str = "packaged_isru"
    active_name: str = "active_isru"


def reverse_tof(tof):
    return {i: {j: -dt for j, dt in dests.items()} for i, dests in tof.items()}


def all_possible_outflow_arcs(connections, time_range, window, tof_used):
    all_arcs = {}
    for t in time_range:
        time_node = {}
        for i in connections:
            if t not in window[i]:
                continue
            now = window[i].index(t)
            time_node[i] = {}
            for j in connections[i]:
                if t + tof_used[i][j] in window[j]:
                    time_node[i][j] = {
                        "ArrivalTime": t + tof_used[i][j],
                        "FullTravelTime": tof_used[i][j],
                    }
            if (i not in time_node[i]) and (now + 1 != len(window[i])):
                time_node[i][i] = {
                    "ArrivalTime": window[i][now + 1],
                    "FullTravelTime": window[i][now + 1] - t,
                }
        if time_node:
            all_arcs[t] = time_node
    return all_arcs


def default_demands(network, n_commodities, n_vehicles):
    T_adv = list(range(network.T))
    D = [[np.array([0 for _ in range(n_commodities)], dtype=float)
          for _ in T_adv]
         for _ in network.connections]

    D[1][0][0] = 3
    D[1][0][1] = 99999
    D[1][0][2] = 99999
    D[1][0][4] = 99999999

    for t in T_adv:
        D[3][t][3] = 999999

    D[3][4][0] = -2
    D[2][3][0] = -1
    D[3][5][0] = 2
    D[2][6][0] = 1
    D[0][11][0] = -3
    D[3][4][2] = -420
    D[0][11][3] = -110

    d = [[[1 if (i == 1 and t == 0) else 0 for t in range(network.T)]
          for _ in range(n_vehicles)]
         for i in network.connections]
    return D, d


def phi(i, j, v, delta_v, isp, g0):
    if isp[v] == 0:
        return 1
    return 1 - np.exp(-(1000 * delta_v[i][j] / (isp[v] * g0)))


def consumption_matrix(i, j, v, commodity_count, prop_index, crew_mass,
                       consumption, network, vehicle_data, carriable):
    """
    Transformation matrix for commodities, active spacecraft, and spacecraft
    payloads.  ISRU commodities are pass-through here; eligible holdover arcs
    receive custom deployment/production rows later.
    """
    active_phi = phi(i, j, v, network.delta_v, vehicle_data.isp, network.g0)
    if network.delta_v[i][j] <= 0:
        active_phi = 0

    full_len = commodity_count + 1 + len(carriable)
    mat = np.zeros((full_len, full_len))

    mat[0, 0] = 1
    mat[1, 0] = -consumption * network.tof[i][j] #Decrease in consumables due to crew consumption
    mat[1, 1] = 1
    mat[2, 2] = 1
    mat[3, 3] = 1
    mat[prop_index, 0] = -crew_mass * active_phi
    mat[prop_index, 1] = -active_phi
    mat[prop_index, 2] = -active_phi
    mat[prop_index, 3] = -active_phi
    mat[prop_index, prop_index] = 1 - active_phi
    mat[prop_index, commodity_count] = -vehicle_data.structure_mass[v] * active_phi
    mat[commodity_count, commodity_count] = 1

    # Generic pass-through for any added commodity, including packaged/active
    # ISRU.  Active ISRU is separately restricted to eligible holdover arcs.
    for c in range(5, commodity_count):
        mat[c, c] = 1

    for offset, payload_vehicle in enumerate(carriable):
        idx = commodity_count + 1 + offset
        mat[idx, idx] = 1
        mat[prop_index, idx] = -vehicle_data.structure_mass[payload_vehicle] * active_phi
    return mat


def create_commodity_flow(model, V, X, all_arcs, connections, direction="out", typeC="Classic"):
    return {
        v: {
            i: {
                j: {
                    t: np.array([
                        [model.addVar(vtype=X[x],
                                      name=f"{typeC}_commodity_{direction}flow_{v},{i},{j},Tstart{t},Tend{all_arcs[t][i][j]['ArrivalTime']},Commodity{x}",
                                      lb=0)]
                        for x in range(len(X))
                    ])
                    for t in all_arcs if (i in all_arcs[t]) and (j in all_arcs[t][i])
                }
                for j in connections[i]
            }
            for i in connections
        }
        for v in range(V)
    }


def create_sc_commodity_flow(model, V, Y, all_arcs, connections, direction="out"):
    return {
        v: {
            i: {
                j: {
                    t: np.array([model.addVar(vtype=Y,
                                              name=f"sc_commodity_{direction}flow_{v},{i},{j},Tstart{t},Tend{all_arcs[t][i][j]['ArrivalTime']}",
                                              lb=0)])
                    for t in all_arcs if (i in all_arcs[t]) and (j in all_arcs[t][i])
                }
                for j in connections[i]
            }
            for i in connections
        }
        for v in range(V)
    }


def no_self_payload(model, ctx):
    """A spacecraft cannot be carried as payload by another copy of itself."""
    for v in range(ctx["V"]):
        for t in ctx["all_arcs"]:
            for i in ctx["all_arcs"][t]:
                for j in ctx["all_arcs"][t][i]:
                    model.addConstr(
                        ctx["scpayload_outflow"][v][i][j][t][v][0] == 0,
                        name=f"NoSelfPayloadConstraint_vehicle{v}_startnode{i}_endnode{j}_starttime{t}",
                    )


def add_mass_balance_constraints(model, ctx):
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
                    model.addConstr(
                        y_outflow_sum[0] - y_inflow_sum[0] == ctx["d"][i][v][t],
                        name=f"SC_lossless_mass_balance_x_node{i}_time{t}_vehicle{v}",
                    )
                else:
                    model.addConstr(
                        y_outflow_sum[0] - y_inflow_sum[0] <= ctx["d"][i][v][t],
                        name=f"SC_mass_balance_x_node{i}_time{t}_vehicle{v}",
                    )


def is_eligible_isru_arc(i, j, isru_config):
    return i == j and i in isru_config.active_nodes


def add_arc_transformation_constraints(model, ctx):
    for t in ctx["all_arcs"]:
        for i in ctx["all_arcs"][t]:
            for j in ctx["all_arcs"][t][i]:
                for v in range(ctx["V"]):
                    Vout = np.concatenate((
                        ctx["x_outflow"][v][i][j][t],
                        np.array([ctx["y_outflow"][v][i][j][t]]),
                    ), axis=0)
                    Vin = np.concatenate((
                        ctx["x_inflow"][v][i][j][t],
                        np.array([ctx["y_inflow"][v][i][j][t]]),
                    ), axis=0)
                    for c in ctx["carriable"]:
                        Vout = np.append(Vout, ctx["scpayload_outflow"][v][i][j][t][c])
                        Vin = np.append(Vin, ctx["scpayload_inflow"][v][i][j][t][c])

                    consumed = consumption_matrix(
                        i, j, v, len(ctx["X"]), ctx["prop_index"], ctx["crew_mass"],
                        ctx["consumption"], ctx["network"], ctx["vehicle_data"], ctx["carriable"],
                    )
                    transformed = np.dot(consumed, Vout)
                    for row, (enterarc, leavearc) in enumerate(zip(transformed, Vin)):
                        if ctx["isru_config"].enabled and is_eligible_isru_arc(i, j, ctx["isru_config"]):
                            skip = {
                                ctx["prop_index"],
                                ctx["isru_indices"]["packaged"],
                                ctx["isru_indices"]["active"],
                            }
                            if row in skip:
                                continue
                        model.addConstr(
                            enterarc == leavearc,
                            name=f"Arc_transformationConstraint_Start{i}_End{j}_Starttime{t}_Vehicle{v}_Commodity{row}",
                        )

                    model.addConstr(
                        ctx["x_inflow"][v][i][j][t][ctx["prop_index"]][0]
                        >= ctx["x_outflow"][v][i][j][t][ctx["prop_index"]][0]
                        - ctx["vehicle_data"].propellant_cap[v],
                        name=f"PropellantTankOnlyBurn_vehicle{v}_start{i}_end{j}_time{t}",
                    )


def add_isru_constraints(model, ctx):
    cfg = ctx["isru_config"]
    if not cfg.enabled:
        return {}

    data = {}
    p_idx = ctx["prop_index"]
    pkg_idx = ctx["isru_indices"]["packaged"]
    active_idx = ctx["isru_indices"]["active"]

    for t in ctx["all_arcs"]:
        for i in ctx["all_arcs"][t]:
            for j in ctx["all_arcs"][t][i]:
                eligible = is_eligible_isru_arc(i, j, cfg)
                hold_days = ctx["all_arcs"][t][i][j]["FullTravelTime"]
                for v in range(ctx["V"]):
                    xout = ctx["x_outflow"][v][i][j][t]
                    xin = ctx["x_inflow"][v][i][j][t]

                    #only have ISRU deployment possible if the arc is predetermined to allow it (holdover on moon)
                    if not eligible:
                        model.addConstr(xout[active_idx][0] == 0,
                                        name=f"active_isru_no_out_vehicle{v}_start{i}_end{j}_time{t}")
                        model.addConstr(xin[active_idx][0] == 0,
                                        name=f"active_isru_no_in_vehicle{v}_start{i}_end{j}_time{t}")
                        continue

                    deployed = model.addVar(lb=0, ub=cfg.max_mass,
                                            name=f"isru_deployed_vehicle{v}_node{i}_time{t}")
                    operating_mass = model.addVar(lb=0, ub=cfg.max_mass,
                                                  name=f"isru_operating_mass_vehicle{v}_node{i}_time{t}")
                    annual_output = model.addVar(lb=0,
                                                 name=f"isru_annual_output_vehicle{v}_node{i}_time{t}")
                    arc_output = model.addVar(lb=0,
                                              name=f"isru_arc_propellant_vehicle{v}_node{i}_time{t}")

                    model.addConstr(deployed <= xout[pkg_idx][0],
                                    name=f"isru_deploy_from_packaged_vehicle{v}_node{i}_time{t}")
                    model.addConstr(operating_mass == xout[active_idx][0] + deployed,
                                    name=f"isru_operating_mass_balance_vehicle{v}_node{i}_time{t}")

                    add_log_pwl_1d(
                        model,
                        ISRU_total_annual_output,
                        0,
                        cfg.max_mass,
                        cfg.n_segments,
                        name=f"isru_pwl_vehicle{v}_node{i}_time{t}",
                        x_var=operating_mass,
                        z_var=annual_output,
                    )
                    model.addConstr(
                        arc_output == annual_output * (hold_days / cfg.days_per_year),
                        name=f"isru_scale_annual_to_arc_vehicle{v}_node{i}_time{t}",
                    )
                    model.addConstr(xin[pkg_idx][0] == xout[pkg_idx][0] - deployed,
                                    name=f"isru_packaged_after_deploy_vehicle{v}_node{i}_time{t}")
                    model.addConstr(xin[active_idx][0] == xout[active_idx][0] + deployed,
                                    name=f"isru_active_after_deploy_vehicle{v}_node{i}_time{t}")
                    model.addConstr(xin[p_idx][0] == xout[p_idx][0] + arc_output,
                                    name=f"isru_propellant_output_vehicle{v}_node{i}_time{t}")

                    data[(v, i, j, t)] = {
                        "deployed": deployed,
                        "operating_mass": operating_mass,
                        "annual_output": annual_output,
                        "arc_output": arc_output,
                    }
    return data


def create_concurrency_constraint(connections, mass_conversion, prop_index, structure_mass, carriable):
    payload_row = copy.deepcopy(mass_conversion)
    payload_row[prop_index] = 0
    prop_row = [0] * len(mass_conversion)
    prop_row[prop_index] = 1
    combined_row = copy.deepcopy(mass_conversion)

    for payload_vehicle in carriable:
        payload_row.append(structure_mass[payload_vehicle])
        prop_row.append(0)
        combined_row.append(structure_mass[payload_vehicle])

    return {
        i: {
            j: np.array([payload_row, prop_row, combined_row])
            for j in connections[i]
        }
        for i in connections
    }


def create_sc_design_parameters(vehicle_data, carriable):
    V = len(vehicle_data.structure_mass)
    e = np.zeros((V, 3, 1 + len(carriable)))
    for v in range(V):
        e[v][0][0] = vehicle_data.payload_cap[v]
        e[v][1][0] = vehicle_data.propellant_cap[v]
        e[v][2][0] = vehicle_data.payload_cap[v] + vehicle_data.propellant_cap[v]
        for offset, payload_vehicle in enumerate(carriable):
            e[v][1][1 + offset] = vehicle_data.propellant_cap[payload_vehicle]
    return e


def add_concurrency_constraints(model, ctx):
    H = create_concurrency_constraint(
        ctx["connections"],
        ctx["mass_conversion"],
        ctx["prop_index"],
        ctx["vehicle_data"].structure_mass,
        ctx["carriable"],
    )
    e = create_sc_design_parameters(ctx["vehicle_data"], ctx["carriable"])

    for v in range(ctx["V"]):
        for t in ctx["all_arcs"]:
            for i in ctx["all_arcs"][t]:
                for j in ctx["all_arcs"][t][i]:
                    extended_commodity = ctx["x_outflow"][v][i][j][t]
                    extended_constraint = [ctx["y_outflow"][v][i][j][t]]
                    for c in ctx["carriable"]:
                        extended_commodity = np.append(
                            extended_commodity,
                            ctx["scpayload_outflow"][v][i][j][t][c],
                        )
                        extended_constraint.append(ctx["scpayload_outflow"][v][i][j][t][c])

                    for row, (commodity, constraint) in enumerate(zip(
                        np.dot(H[i][j], extended_commodity),
                        np.dot(e[v], extended_constraint),
                    )):
                        model.addConstr(
                            commodity <= constraint[0],
                            name=f"Max_concurrency_constraint_row{row}_vehicle{v}_startnode{i}_endnode{j}_starttime{t}",
                        )


def set_initial_mass_objective(model, ctx, start_node=1, start_time=0):
    cost = (
        sum(
            np.dot(ctx["mass_conversion"], ctx["x_outflow"][v][start_node][j][start_time])[0]
            + ctx["vehicle_data"].structure_mass[v] * ctx["y_outflow"][v][start_node][j][start_time][0]
            for v in range(ctx["V"])
            for j in ctx["all_arcs"][start_time][start_node]
        )
        + sum(
            ctx["vehicle_data"].structure_mass[k]
            * ctx["scpayload_outflow"][v][start_node][j][start_time][k][0]
            for v in range(ctx["V"])
            for k in ctx["carriable"]
            for j in ctx["all_arcs"][start_time][start_node]
        )
    )
    model.setObjective(cost, GRB.MINIMIZE)
    return cost


def build_model(network=None, vehicle_data=None, D=None, d=None, isru_config=None,
                model_name="ClassicApolloV2dictflow_ISRU", optimize=False):
    network = network or NetworkData()
    vehicle_data = vehicle_data or VehicleData()
    isru_config = isru_config or ISRUConfig()
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

    #the consumption matrix assumes crew and consumables as the first two commodities
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

    no_self_payload(model, ctx)
    add_mass_balance_constraints(model, ctx)
    add_arc_transformation_constraints(model, ctx)
    ctx["isru_vars"] = add_isru_constraints(model, ctx)
    add_concurrency_constraints(model, ctx)
    ctx["objective"] = set_initial_mass_objective(model, ctx)
    model.update()

    if optimize:
        model.optimize()
    return ctx


def solve_model(**kwargs):
    kwargs["optimize"] = True
    return build_model(**kwargs)


def extract_results(ctx, **kwargs):
    """Top-level shortcut for classic_apollo_isru.results_viz.extract_results."""
    from classic_apollo_isru.results_viz import extract_results as _extract_results

    return _extract_results(ctx, **kwargs)


def visualize_results(ctx, **kwargs):
    """Top-level shortcut for classic_apollo_isru.results_viz.visualize_results."""
    from classic_apollo_isru.results_viz import visualize_results as _visualize_results

    return _visualize_results(ctx, **kwargs)


if __name__ == "__main__":
    context = build_model()
    print(f"Built {context['model'].ModelName} with {context['model'].NumVars} variables.")

    
