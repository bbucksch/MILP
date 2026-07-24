import math
import copy

import gurobipy as gp
from gurobipy import GRB
import numpy as np

from Linear_Func import (
    add_log_pwl_1d
)

from Define_Commodities_Supply_Demand import (
    consumption_matrix,
)
from Define_Network_Vehicle_ISRU import (
    ISRU_total_annual_output
)

"""
Constraints file
The functions defined in theis file create the constraints for the model
Used for:
1. Mass balance constraints
2. Arc transformations
3. Concurrency constraint (max Mass and propellant per ship)

"""

#Check if arc is a holdover arc where active ISRU are allowed (moon)
def is_eligible_isru_arc(i, j, isru_config):
    return i == j and i in isru_config.active_nodes


def add_mass_balance_constraints(model, ctx):
    for t in ctx["all_arcs"]:
        for i in ctx["all_arcs"][t]:
            x_outflow_sum = sum(
                ctx["x_outflow"][v][i][j][t]
                if (t in ctx["all_arcs"]) and (i in ctx["all_arcs"][t]) and (j in ctx["all_arcs"][t][i])
                else np.array([[0] for _ in range(len(ctx["Commodities"].commodity_names))])
                for v in range(ctx["V"])
                for j in ctx["connections"][i]
            )
            x_inflow_sum = sum(
                ctx["x_inflow"][v][j][i][ctx["rev_arcs"][t][i][j]["ArrivalTime"]]
                if (t in ctx["rev_arcs"]) and (i in ctx["rev_arcs"][t]) and (j in ctx["rev_arcs"][t][i])
                else np.array([[0] for _ in range(len(ctx["Commodities"].commodity_names))])
                for v in range(ctx["V"])
                for j in ctx["connections"][i]
            )
            #if ISRU can be deployed, packaged ISRU can be activated 
            if is_eligible_isru_arc(i,i,ctx["isru_config"]):
                
                
                #active + packaged IN == active +packaged OUT
                #applied here
                model.addConstr(x_outflow_sum[ctx['Commodities'].isru_indices['active']][0] 
                                +x_outflow_sum[ctx['Commodities'].isru_indices['packaged']][0]
                                -x_inflow_sum[ctx['Commodities'].isru_indices['active']][0] 
                                -x_inflow_sum[ctx['Commodities'].isru_indices['packaged']][0] 
                                <= ctx["Demands"][i][t][ctx['Commodities'].isru_indices['active']]
                                + ctx["Demands"][i][t][ctx['Commodities'].isru_indices['packaged']])
                
                
                #active +packaged IN + demands <= active OUT
                # Applied in normal constraint. active now has a changed sum 
                x_inflow_sum[ctx['Commodities'].isru_indices['active']] =sum(
                    x_inflow_sum[ctx['Commodities'].isru_indices['active']],
                    x_inflow_sum[ctx['Commodities'].isru_indices['packaged']])
                
                #packaged constraint stays the same


            for x in range(len(ctx["Commodities"].commodity_names)):
                model.addConstr(
                    x_outflow_sum[x][0] - x_inflow_sum[x][0] <= ctx["Demands"][i][t][x],
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
                
                model.addConstr(
                    y_outflow_sum[0] - y_inflow_sum[0] <= ctx["V_Demands"][i][v][t],
                    name=f"SC_mass_balance_x_node{i}_time{t}_vehicle{v}",
                )

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
                    for i1,c1 in enumerate(ctx["scpayload_outflow"][v][i][j][t]):
                        Vout = np.append(Vout, ctx["scpayload_outflow"][v][i][j][t][i1])
                        Vin = np.append(Vin, ctx["scpayload_inflow"][v][i][j][t][i1])

                    consumed = consumption_matrix(
                        i=i, 
                        j=j, 
                        v=v, 
                        commodity_count= len(ctx["Commodities"].commodity_names), 
                        prop_index= ctx["Commodities"].prop_index, 
                        crew_mass= ctx["Commodities"].crew_mass,
                        daily_consumption= ctx["Commodities"].consumption_rate, 
                        network=ctx["network"], 
                        vehicle_data=ctx["vehicle_data"],
                        Active_ISRU_index= ctx["Commodities"].isru_indices["active"]
                    )
                    transformed = np.dot(consumed, Vout)
                    for row, (enterarc, leavearc) in enumerate(zip(transformed, Vin)):
                        if ctx["isru_config"].enabled and is_eligible_isru_arc(i, j, ctx["isru_config"]):
                            
                            
                            if row == ctx["Commodities"].prop_index:
                                
                                #create linearized variables for the ISRU output
                                arc_annual_output = model.addVar(lb=0,
                                              name=f"isru_arc_propellant_vehicle{v}_node{i}_time{t}")
                                
                                
                                #x_var = ctx['x_outflow'][v][i][j][t][ctx['Commodities'].isru_indices['active']][0]
                                #print(x_var)

                                add_log_pwl_1d(
                                    model=model,
                                    func=ISRU_total_annual_output,
                                    x_lb=0,
                                    x_ub=ctx['isru_config'].max_mass,
                                    n_segments =ctx['isru_config'].n_segments,
                                    name=f"isru_pwl_vehicle{v}_node{i}_time{t}",
                                    x_var=ctx['x_outflow'][v][i][j][t][ctx['Commodities'].isru_indices['active']][0],
                                    z_var=arc_annual_output,
                                )
                                #create every total increase in propellant
                                hold_days = ctx["all_arcs"][t][i][j]["FullTravelTime"]

                                enterarc += arc_annual_output* (hold_days / ctx['isru_config'].days_per_year)


                        model.addConstr(
                            enterarc == leavearc,
                            name=f"Arc_transformationConstraint_Start{i}_End{j}_Starttime{t}_Vehicle{v}_Commodity{row}",
                        )

                    model.addConstr(
                        ctx["x_inflow"][v][i][j][t][ctx["Commodities"].prop_index][0]
                        >= ctx["x_outflow"][v][i][j][t][ctx["Commodities"].prop_index][0]
                        - ctx["vehicle_data"].propellant_cap[v],
                        name=f"PropellantTankOnlyBurn_vehicle{v}_start{i}_end{j}_time{t}",
                    )






def create_concurrency_constraint(connections, mass_conversion, prop_index, structure_mass, carriable):
    payload_row = copy.deepcopy(mass_conversion)
    payload_row[prop_index] = 0
    prop_row = [0] * len(mass_conversion)
    prop_row[prop_index] = 1
    combined_row = copy.deepcopy(mass_conversion)

    for payload_vehicle,payload_boolean in enumerate(carriable):
        if payload_boolean == True:

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


def create_sc_design_parameters(vehicle_data):
    Extra_carry_payloads = vehicle_data.carriable.count(True)
    V = len(vehicle_data.structure_mass)
    e = np.zeros((V, 3, 1 + Extra_carry_payloads))
    
    for v in range(V):
        e[v][0][0] = vehicle_data.payload_cap[v]
        e[v][1][0] = vehicle_data.propellant_cap[v]
        e[v][2][0] = vehicle_data.payload_cap[v] + vehicle_data.propellant_cap[v]
        
        offset=0
        for payload_vehicle,boolean in enumerate(vehicle_data.carriable):
            if boolean == True:
                e[v][1][1 + offset] = vehicle_data.propellant_cap[payload_vehicle]
                offset+=1
    return e


def add_concurrency_constraints(model, ctx):
    H = create_concurrency_constraint(
        ctx["connections"],
        ctx["Commodities"].mass_conversion,
        ctx["Commodities"].prop_index,
        ctx["vehicle_data"].structure_mass,
        ctx["vehicle_data"].carriable,
    )
    e = create_sc_design_parameters(ctx["vehicle_data"])

    for v in range(ctx["V"]):
        for t in ctx["all_arcs"]:
            for i in ctx["all_arcs"][t]:
                for j in ctx["all_arcs"][t][i]:
                    extended_commodity = ctx["x_outflow"][v][i][j][t]
                    extended_constraint = [ctx["y_outflow"][v][i][j][t]]
                    for i1,c in enumerate(ctx["vehicle_data"].carriable):
                        if c == True:
                            extended_commodity = np.append(
                                extended_commodity,
                                ctx["scpayload_outflow"][v][i][j][t][i1],
                            )
                            extended_constraint.append(ctx["scpayload_outflow"][v][i][j][t][i1])

                    for row, (commodity, constraint) in enumerate(zip(
                        np.dot(H[i][j], extended_commodity),
                        np.dot(e[v], extended_constraint),
                    )):
                        model.addConstr(
                            commodity <= constraint[0],
                            name=f"Max_concurrency_constraint_row{row}_vehicle{v}_startnode{i}_endnode{j}_starttime{t}",
                        )
