import math
import copy

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
7. Optimiizing
8. Results extraction and visualization
8b. Analysis of failure to optimize/infeasibility
9. Sensitivity Analysis
"""


#Network model + Spacecraft Design model +ISRU model defined for problem
from Define_Network_Vehicle_ISRU import (
    NetworkModel,
    reverse_tof,
    all_possible_outflow_arcs,
    VehicleModel,
    ISRUModel,
    ISRU_total_annual_output,
    ISRUfunc_test,
    ISRUtotal_test
)

from Define_Commodities_Supply_Demand import (
    define_commodities,
    demand_supply,
    consumption_matrix

)

from Variable_Creation import (
    create_commodity_flow,
    create_sc_commodity_flow
)
#Note: linearization variables for the ISRU mass increase will be added in a separate file

from Constraints_creation import (
    add_mass_balance_constraints,
    add_arc_transformation_constraints,
    add_concurrency_constraints,
    add_ISRU_negation_constraint
)

from Define_Cost_Func import (
    set_initial_mass_objective
)

from Results import (
    extract_flows,
    make_mass_flow_table,
    plot_time_space_network,
    propellantUsage,
    plot_vehicle_gantt

)


#payload 
#carried_var_types = [GRB.INTEGER for _ in carriable]

#remember to make carriable


def build_model(network=None, vehicle_data=None, Demands=None, V_demands=None, isru_config=None, isru_prod_model = ISRU_total_annual_output,
                commodities = None, model_name="MissionPlanning+ISRU", optimize=False, vizualize=False):
    network = network or NetworkModel()
    vehicle_data = vehicle_data or VehicleModel()
    isru_config = isru_config or ISRUModel()
    Commodities = commodities or define_commodities(isru_config)
    T_adv = list(range(network.T))
    V = vehicle_data.number_vehicle_types
    

    for node,time in network.node_windows.items():
        y2list = []
        for y1 in time:
            y2list.append(y1+365)
            network.T = y1+366
        network.node_windows[node].extend(y2list)


    print(network.node_windows)
    T_adv = list(range(network.T))
    

    #all_arcs and rev_arcs are dictionaries of all the possible open arcs
    all_arcs = all_possible_outflow_arcs(
        connections = network.connections, 
        time_range= T_adv, 
        window=network.node_windows, 
        tof_used=network.tof)
    
    #print(all_arcs[365])
    
    
    rev_arcs = all_possible_outflow_arcs(
        connections=network.connections,
        time_range=T_adv,
        window={key: list(reversed(value)) for key, value in network.node_windows.items()},
        tof_used=reverse_tof(network.tof),
    )

    
    print(Commodities)

    Demands,V_Demands = demand_supply(
        network=network,
        n_commodities=len(Commodities.commodity_names),
        n_vehicles=V)
    

    Lin_model = gp.Model(model_name)
    
    x_outflow = create_commodity_flow(
        model=Lin_model,
        V=V,
        Commdata=Commodities,
        all_arcs=all_arcs,
        connections= network.connections,
        direction="out",
        typeC="Classic")
    
    x_inflow = create_commodity_flow(
        model=Lin_model,
        V=V,
        Commdata=Commodities,
        all_arcs=all_arcs,
        connections= network.connections,
        direction="in",
        typeC="Classic"
    )
    
    y_outflow = create_sc_commodity_flow(
        model=Lin_model,
        V =V,
        Y = vehicle_data.sc_vtype,
        all_arcs=all_arcs,
        connections=network.connections,
        direction="out",
    )

    y_inflow = create_sc_commodity_flow(
        model=Lin_model,
        V =V,
        Y = vehicle_data.sc_vtype,
        all_arcs=all_arcs,
        connections=network.connections,
        direction="in",
    )

    sc_payload_outflow = create_commodity_flow(
        model=Lin_model,
        V=V,
        Commdata=vehicle_data, #vehicle data contains the info needed for the payload variables
        all_arcs=all_arcs,
        connections= network.connections,
        direction="out",
        typeC="SC_payload"
    )

    Lin_model.update()
    #print(sc_payload_outflow[0][1][2][0])

    sc_payload_inflow = create_commodity_flow(
        model=Lin_model,
        V=V,
        Commdata=vehicle_data,
        all_arcs=all_arcs,
        connections= network.connections,
        direction="in",
        typeC="SC_payload"
    )


    #test model line
    #isru_prod_model = ISRUtotal_test
    #compiling the data into a single model variable
    ctx = {
        "model": Lin_model,
        "network": network,
        "vehicle_data": vehicle_data,
        "V": V,
        "Commodities": Commodities,
        "isru_config":isru_config,
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
    add_arc_transformation_constraints(Lin_model, ctx)
    add_ISRU_negation_constraint(Lin_model, ctx)
    
    add_concurrency_constraints(Lin_model, ctx)
    
    obj1 = set_initial_mass_objective(Lin_model, ctx) #default start time 0
    obj2 = set_initial_mass_objective(Lin_model, ctx,start_time=365) #start time 365
    ctx["objective"] = obj1+obj2
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

        if Lin_model.Status == GRB.INFEASIBLE:
            print("Model is Infeasible. Compute IIS:")
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
        for i1,x1 in enumerate(ctx["vehicle_data"].carriable):
            if x1 == True:
                Carryship.append(i1)

        Cargoflows, Shipflows =extract_flows(
            x_outflow= ctx["x_outflow"],
            x_inflow=ctx["x_inflow"],
            y_outflow=ctx["y_outflow"], 
            arcs= ctx["connections"],
            node_names=ctx["network"].node_names,
            vehicle_names= ctx["vehicle_data"].vehicle_type_names,
            commodity_names=ctx["Commodities"].commodity_names,
            tof= ctx["network"].tof,
            T = ctx["network"].T,
            T_adv = range(0,ctx["network"].T),
            CommMass= ctx["Commodities"].mass_conversion,
            StructMass=ctx["vehicle_data"].structure_mass,
            AllArcs= all_arcs,
            payloadflows=ctx["scpayload_outflow"],
            Carryship=Carryship
        )

        plot_time_space_network(
            legs =Shipflows,
            cargo= Cargoflows,
            node_order= ctx["network"].node_names,
            title = "Space_time_graph"
        )

        mass_table = make_mass_flow_table(
            flows=Cargoflows,
            use="out_mass"
        )
        df = pd.DataFrame(mass_table)

        # 3. Export to a CSV file (index=False prevents writing row numbers)
        df.to_csv('Mass_table_output_ISRU_Payload.csv', index=False)





    return ctx

    


if __name__ == "__main__":
    context = build_model(optimize=True, vizualize=True)
    print(f"Built {context['model'].ModelName} with {context['model'].NumVars} variables.")
