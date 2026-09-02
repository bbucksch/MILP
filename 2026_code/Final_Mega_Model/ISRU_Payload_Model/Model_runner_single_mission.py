import math
import copy
import csv

import gurobipy as gp
from gurobipy import GRB
import numpy as np
import pandas as pd

"""

Main control script for the main mega model! 
From here the user controls which file is run for:
1. Dataclasses used to define the model and its parameters
2.Network model + Spacecraft Data +ISRU model
3.Commodities (Non-ISRU and Non-Payload),consumption matrix and supply and demand
4. Variable Creation
5. Constriant Creation
6. Objective Function Creation
7. Optimizing
8. Results extraction and visualization
8b. Analysis of failure to optimize/infeasibility
9. Sensitivity Analysis
"""

Test = input("Have you changed the 3 input files to the correct model? And have you "
             "changed the imports so they reflect the correct files (in Model_runner, "
             "Test_sensitivity) (y/n): ")
if Test != "y":
    raise ValueError("Please change the input files.")

# Network model + Spacecraft Design model +ISRU model defined for problem
from Single_mission_design.Define_Network_Vehicle_ISRU import (
    NetworkModel,
    reverse_tof,
    all_possible_outflow_arcs,
    VehicleModel,
    ISRUModel,
    ISRU_total_annual_output,
    ISRUfunc_test,
    ISRUtotal_test
)
# Define commodities, consumption matrix and supply and demand
from Single_mission_design.Define_Commodities_Supply_Demand import (
    define_commodities,
    demand_supply,
    consumption_matrix

)
# Define Cost Function
from Single_mission_design.Define_Cost_Func import (
    set_initial_mass_objective
)

from Variable_Creation import (
    create_commodity_flow,
    create_sc_commodity_flow
)
# Note: linearization variables for the ISRU mass increase will be added in a separate file

from Constraints_creation import (
    add_mass_balance_constraints,
    add_arc_transformation_constraints,
    add_concurrency_constraints,
    add_ISRU_negation_constraint,
    add_SCP_concurrency_constraint,
    add_time_window_constraints
)

from Results import (
    extract_flows,
    make_mass_flow_table,
    plot_time_space_network,
    propellantUsage,
    plot_vehicle_gantt

)

from Sensitivity import (
    single_commodity_demand_sensitivity_analysis,
    multi_commodity_demand_sensitivity_analysis,
    LIP_conversion_demand_sensitivity_analysis
)


# payload
# carried_var_types = [GRB.INTEGER for _ in carriable]

# remember to make carriable


def build_model(network=None, vehicle_data=None, Demands=None, V_demands=None, isru_config=None,
                isru_prod_model=ISRU_total_annual_output,
                commodities=None, model_name="MissionPlanning+ISRU", optimize=False, vizualize=False,
                sensitivity_analysis=False, commodity_analysis=None):
    network = network or NetworkModel(campaign=False)
    vehicle_data = vehicle_data or VehicleModel()
    isru_config = isru_config or ISRUModel()
    Commodities = commodities or define_commodities(isru_config)
    V = vehicle_data.number_vehicle_types

    T_adv = list(range(network.T))

    # all_arcs and rev_arcs are dictionaries of all the possible open arcs
    all_arcs = all_possible_outflow_arcs(
        window=network.node_windows,
        tof_used=network.tof,
        T=network.T,
    )

    rev_arcs = all_possible_outflow_arcs(
        window=network.node_windows,
        tof_used=network.tof,
        T=network.T,
        reverse=True,
    )

    Demands, V_Demands = demand_supply(
        network=network,
        n_commodities=len(Commodities.commodity_names),
        n_vehicles=V)

    Lin_model = gp.Model(model_name)

    x_outflow = create_commodity_flow(
        model=Lin_model,
        V=V,
        Commdata=Commodities,
        all_arcs=all_arcs,
        connections=network.connections,
        direction="out",
        typeC="Classic")

    x_inflow = create_commodity_flow(
        model=Lin_model,
        V=V,
        Commdata=Commodities,
        all_arcs=all_arcs,
        connections=network.connections,
        direction="in",
        typeC="Classic"
    )

    y_outflow = create_sc_commodity_flow(
        model=Lin_model,
        V=V,
        Y=vehicle_data.sc_vtype,
        all_arcs=all_arcs,
        connections=network.connections,
        direction="out",
    )

    y_inflow = create_sc_commodity_flow(
        model=Lin_model,
        V=V,
        Y=vehicle_data.sc_vtype,
        all_arcs=all_arcs,
        connections=network.connections,
        direction="in",
    )

    sc_payload_outflow = create_commodity_flow(
        model=Lin_model,
        V=V,
        Commdata=vehicle_data,  # vehicle data contains the info needed for the payload variables
        all_arcs=all_arcs,
        connections=network.connections,
        direction="out",
        typeC="SC_payload"
    )

    sc_payload_inflow = create_commodity_flow(
        model=Lin_model,
        V=V,
        Commdata=vehicle_data,
        all_arcs=all_arcs,
        connections=network.connections,
        direction="in",
        typeC="SC_payload"
    )

    Lin_model.update()
    # print(sc_payload_outflow[0][1][2][0])

    # test model line
    # isru_prod_model = ISRUtotal_test
    # compiling the data into a single model variable
    ctx = {
        "model": Lin_model,
        "network": network,
        "vehicle_data": vehicle_data,
        "V": V,
        "Commodities": Commodities,
        "isru_config": isru_config,
        "isru_production_model": isru_prod_model,
        "Demands": Demands,
        "V_Demands": V_Demands,
        "connections": network.connections,
        "all_arcs": all_arcs,
        "rev_arcs": rev_arcs,
        "x_outflow": x_outflow,
        "x_inflow": x_inflow,
        "y_outflow": y_outflow,
        "y_inflow": y_inflow,
        "scpayload_outflow": sc_payload_outflow,
        "scpayload_inflow": sc_payload_inflow
    }

    add_mass_balance_constraints(Lin_model, ctx)
    add_arc_transformation_constraints(Lin_model, ctx, consumption_matrix)

    if isru_config.enabled:
        add_ISRU_negation_constraint(Lin_model, ctx)

    add_concurrency_constraints(Lin_model, ctx)
    add_SCP_concurrency_constraint(Lin_model,ctx)
    add_time_window_constraints(Lin_model, ctx)
    Lin_model.update()

    obj1 = set_initial_mass_objective(Lin_model, ctx, start_node=0, end_node=1)  # measured at all valid times
    # obj2 = set_initial_mass_objective(Lin_model, ctx, start_time=365)  # start time 365
    ctx["objective"] = obj1
    Lin_model.setObjective(ctx["objective"], GRB.MINIMIZE)

    Lin_model.update()

    if optimize:
        Lin_model.optimize()
        Lin_model.write("debug_model_ISRU_payload.lp")

        """
        #when unbounded or infeasible attempt resolve with DualReducions off
        if Lin_model.Status == GRB.INF_OR_UNBD:
            Lin_model.Params.DualReductions = 0
            Lin_model.optimize()
        """
        if Lin_model.SolCount > 0:

            with open("solution_ISRU_Model.csv", "w", newline="") as csvfile:
                writer = csv.writer(csvfile)

                # Header
                writer.writerow(["Variable", "Value"])

                # Write non-zero variables
                for var in Lin_model.getVars():
                    if abs(var.X) > 1e-6:
                        writer.writerow([var.VarName, var.X])

            print("Solution saved to solution_ISRU_Model.csv")


        if Lin_model.Status == GRB.INFEASIBLE:
            print("Model is Infeasible. Compute IIS now!:")
            print("\n" + "=" * 70)
            print("INSTANT INFEASIBILITY DIAGNOSTIC (< 0.1s)")
            print("=" * 70)

            # 1. Temporarily relax the model to find the exact minimal violations
            # relaxobjtype=0 (minimize sum of violations), minring=True, vrelax=False, crelax=True
            Lin_model.feasRelaxS(0, True, False, True)
            Lin_model.optimize()

            print("\n>>> EXACT CONSTRAINTS CAUSING INFEASIBILITY:")
            found_violation = False
            for c in Lin_model.getConstrs():
                # If a constraint was violated, its artificial slack variable will be > 0
                row = Lin_model.getRow(c)
                for i in range(row.size()):
                    var = row.getVar(i)
                    if "ArtP_" in var.VarName or "ArtN_" in var.VarName:
                        if var.X > 1e-5:
                            print(f"   [VIOLATED] Constraint: {c.ConstrName}")
                            print(f"              Required Slack / Shortfall: {var.X:.4f}")
                            found_violation = True

            if not found_violation:
                print("   No linear constraints violated. Check integer bounds on variables:")
                for v in Lin_model.getVars():
                    if "ArtP_" in v.VarName or "ArtN_" in v.VarName:
                        if v.X > 1e-5:
                            print(f"   [BOUND VIOLATED] Variable: {v.VarName} (shortfall: {v.X:.4f})")

            print("=" * 70 + "\n")


            Lin_model.computeIIS()
            Lin_model.write("Infeasible subset.ilp")

            print('Constraints in IIS:')
            for c in Lin_model.getConstrs():
                if c.IISConstr:
                    print(f"{c.ConstrName}: sense={c.Sense}, RHS={c.RHS}")

            print("\nVariable bounds in IIS:")
            for v in Lin_model.getVars():
                if v.IISLB:
                    print(f"{v.VarName}: lower bound {v.LB}")
                if v.IISUB:
                    print(f"{v.VarName}: upper bound {v.UB}")

    if vizualize == True:

        Carryship = []
        for i1, x1 in enumerate(ctx["vehicle_data"].carriable):
            if x1 == True:
                Carryship.append(i1)

        Cargoflows, Shipflows = extract_flows(
            x_outflow=ctx["x_outflow"],
            x_inflow=ctx["x_inflow"],
            y_outflow=ctx["y_outflow"],
            arcs=ctx["connections"],
            node_names=ctx["network"].node_names,
            vehicle_names=ctx["vehicle_data"].vehicle_type_names,
            commodity_names=ctx["Commodities"].commodity_names,
            tof=ctx["network"].tof,
            T=ctx["network"].T,
            T_adv=range(0, ctx["network"].T),
            CommMass=ctx["Commodities"].mass_conversion,
            StructMass=ctx["vehicle_data"].structure_mass,
            AllArcs=all_arcs,
            payloadflows=ctx["scpayload_outflow"],
            Carryship=Carryship
        )

        plot_time_space_network(
            legs=Shipflows,
            cargo=Cargoflows,
            node_order=ctx["network"].node_names,
            title="Space_time_graph",
            Vehicledata = vehicle_data
        )

        mass_table = make_mass_flow_table(
            flows=Cargoflows,
            use="out_mass"
        )
        df = pd.DataFrame(mass_table)

        # 3. Export to a CSV file (index=False prevents writing row numbers)
        df.to_csv('Mass_table_output_ISRU_Payload.csv', index=False)
        Shipflows.to_csv('Shipflow_output_ISRU_Payload', index=False)

    if sensitivity_analysis:

        fixed_lp = Lin_model.fixed()  # fixed model simplified
        # fixed_lp.Params.OutputFlag = 0
        fixed_lp.Params.Method = 1  # Dual simplex, optional
        fixed_lp.optimize()

        if fixed_lp.Status != GRB.OPTIMAL:
            raise RuntimeError("Fixed LP was not solved to optimality")

        # format for commodity analysis: dict as follows {0:{commodity name:, i_dem:, t_dem:, demand_change:, i_sup:, t_sup:},...}
        if commodity_analysis:
            ctx['shadow prices'] = {}
            multi = []
            for x in commodity_analysis.values():

                if x["Type"] == "Single":
                    shadow_price = single_commodity_demand_sensitivity_analysis(
                        model=Lin_model,
                        ctx=ctx,
                        commodity=x["commodity"],
                        i_dem=x["i_dem"],
                        t_dem=x["t_dem"],
                        demand_change=x["demand_change"],
                        i_sup=x.get("i_sup", None),
                        t_sup=x.get("t_sup", None)
                    )
                    multi = []
                    ctx['shadow prices'][
                        f"shadow_price_{x['commodity']}_node{x['i_dem']}_time{x['t_dem']}_diff{x["demand_change"]}"] = shadow_price

                    ctx['shadow prices'][
                        f"shadow_price_{x['commodity']}_node{x['i_dem']}_time{x['t_dem']}_LINEAR"] = LIP_conversion_demand_sensitivity_analysis(
                        fixed_lp=fixed_lp,
                        ctx=ctx,
                        commodity=x["commodity"],
                        i_dem=x["i_dem"],
                        t_dem=x["t_dem"]
                    )


                elif x["Type"] == "Multi":
                    multi.append(x)
                    if len(multi) == x["entries"]:
                        # Perform multi-commodity sensitivity analysis
                        shadow_price = multi_commodity_demand_sensitivity_analysis(
                            model=Lin_model,
                            ctx=ctx,
                            description=multi
                        )
                        ctx['shadow prices'][f"shadow_price_multicommodity_{x['commodity']}"] = shadow_price
                        multi = []

    return ctx


if __name__ == "__main__":
    context = build_model(optimize=True, vizualize=True, sensitivity_analysis=False)
    print(f"Built {context['model'].ModelName} with {context['model'].NumVars} variables.")
