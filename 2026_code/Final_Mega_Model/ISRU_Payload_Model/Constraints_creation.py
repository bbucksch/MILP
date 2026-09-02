import math
import copy

import gurobipy as gp
from gurobipy import GRB
import numpy as np

from Linear_Func import (
    add_log_pwl_1d
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
    # Map indices v to scpayload indices (scpayload_idxs[v] = index of scpayload)
    scpayload_idxs = {}
    current_carr_idx = 0

    for v, carr_bool in enumerate(ctx["vehicle_data"].carriable):
        if carr_bool:
            scpayload_idxs[v] = current_carr_idx
            current_carr_idx += 1


    # Get timesteps that are both/either departure and arrival
    active_timesteps = set(ctx["all_arcs"].keys()) | set(ctx["rev_arcs"].keys())

    for t in active_timesteps:
        # Get nodes i that are both/either departure and arrival
        active_i = set(ctx["all_arcs"].get(t, {}).keys()) | set(ctx["rev_arcs"].get(t, {}).keys())

        for i in active_i:
            x_outflow_sum = sum(
                (ctx["x_outflow"][v][i][j][t]
                if (t in ctx["all_arcs"]) and (i in ctx["all_arcs"][t]) and (j in ctx["all_arcs"][t][i])
                else np.array([[0] for _ in range(len(ctx["Commodities"].commodity_names))])
                for v in range(ctx["V"])
                for j in ctx["connections"][i]),
                start=np.zeros((len(ctx["Commodities"].commodity_names), 1))
            )
            x_inflow_sum = sum(
                (ctx["x_inflow"][v][j][i][ctx["rev_arcs"][t][i][j]["ArrivalTime"]]
                if (t in ctx["rev_arcs"]) and (i in ctx["rev_arcs"][t]) and (j in ctx["rev_arcs"][t][i])
                else np.array([[0] for _ in range(len(ctx["Commodities"].commodity_names))])
                for v in range(ctx["V"])
                for j in ctx["connections"][i]),
                start=np.zeros((len(ctx["Commodities"].commodity_names), 1))
            )
            
            #if ISRU can be deployed, packaged ISRU can be activated 
            if ctx["isru_config"].enabled and is_eligible_isru_arc(i,i,ctx["isru_config"]):
                
                
                #active + packaged IN => active +packaged OUT
                #applied here
                model.addConstr(x_outflow_sum[ctx['Commodities'].isru_indices['active']][0] 
                                +x_outflow_sum[ctx['Commodities'].isru_indices['packaged']][0]
                                -x_inflow_sum[ctx['Commodities'].isru_indices['active']][0] 
                                -x_inflow_sum[ctx['Commodities'].isru_indices['packaged']][0] 
                                <= ctx["Demands"][i][t][ctx['Commodities'].isru_indices['active']]
                                + ctx["Demands"][i][t][ctx['Commodities'].isru_indices['packaged']],
                                name=f"Active+packaged_mass_balance_x_node{i}_time{t}")
                
                
                #active +packaged IN + demands => active OUT
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
                    (ctx["y_outflow"][v][i][j][t]
                    if (t in ctx["all_arcs"]) and (i in ctx["all_arcs"][t]) and (j in ctx["all_arcs"][t][i])
                    else np.array([0])
                    for j in ctx["connections"][i]),
                    start=np.array([0])
                )
                y_inflow_sum = sum(
                    (ctx["y_inflow"][v][j][i][ctx["rev_arcs"][t][i][j]["ArrivalTime"]]
                    if (t in ctx["rev_arcs"]) and (i in ctx["rev_arcs"][t]) and (j in ctx["rev_arcs"][t][i])
                    else np.array([0])
                    for j in ctx["connections"][i]),
                    start=np.array([0])
                )

                payload_out = sum(
                    (ctx["scpayload_outflow"][carrier][i][j][t][scpayload_idxs[v]]
                    if (t in ctx["all_arcs"]) and (i in ctx["all_arcs"][t]) and (j in ctx["all_arcs"][t][i]) and (ctx["vehicle_data"].carriable[v])
                    else np.array([0])
                    for carrier in range(ctx["V"])
                    for j in ctx["connections"][i]),
                    start=np.array([0])
                )
                payload_in = sum(
                    (ctx["scpayload_inflow"][carrier][j][i][ctx["rev_arcs"][t][i][j]["ArrivalTime"]][scpayload_idxs[v]]
                    if (t in ctx["rev_arcs"]) and (i in ctx["rev_arcs"][t]) and (j in ctx["rev_arcs"][t][i]) and (ctx["vehicle_data"].carriable[v])
                    else np.array([0])
                    for carrier in range(ctx["V"])
                    for j in ctx["connections"][i]),
                    start=np.array([0])
                )

                y_outflow_sum = y_outflow_sum + payload_out
                y_inflow_sum = y_inflow_sum + payload_in
                
                #print(i,t)
                model.addConstr(
                    y_outflow_sum[0] - y_inflow_sum[0] <= ctx["V_Demands"][i][v][t],
                    name=f"SC_mass_balance_x_node{i}_time{t}_vehicle{v}",
                )

def add_arc_transformation_constraints(model, ctx, consumption_matrix):
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
                        Vout = np.append(Vout, np.array([ctx["scpayload_outflow"][v][i][j][t][i1]]), axis=0)
                        Vin = np.append(Vin, np.array([ctx["scpayload_inflow"][v][i][j][t][i1]]), axis=0)

                    consumed = consumption_matrix(
                        i=i, 
                        j=j, 
                        v=v, 
                        commodity_names= ctx["Commodities"].commodity_names,
                        prop_index= ctx["Commodities"].prop_index, 
                        crew_mass= ctx["Commodities"].crew_mass,
                        daily_consumption= ctx["Commodities"].consumption_rate, 
                        network=ctx["network"], 
                        vehicle_data=ctx["vehicle_data"],
                        Active_ISRU_index= ctx["Commodities"].isru_indices["active"],
                        ArcTOF= ctx["all_arcs"][t][i][j]["FullTravelTime"],
                        commodities= ctx["Commodities"],
                        days_per_year= ctx['isru_config'].days_per_year,
                    )
                    transformed = np.dot(consumed, Vout)
                    for row, (enterarc, leavearc) in enumerate(zip(transformed, Vin)):
                        if ctx["isru_config"].enabled and is_eligible_isru_arc(i, j, ctx["isru_config"]):
                            
                            
                            if row == ctx["Commodities"].prop_index[0]:
                                
                                #create linearized variables for the ISRU output
                                arc_annual_output = model.addVar(lb=0,
                                              name=f"isru_arc_propellant_vehicle{v}_node{i}_time{t}")
                                
                                
                                #x_var = ctx['x_outflow'][v][i][j][t][ctx['Commodities'].isru_indices['active']][0]
                                #print(x_var)

                                add_log_pwl_1d(
                                    model=model,
                                    func=ctx['isru_production_model'],
                                    x_lb=0,
                                    x_ub=ctx['isru_config'].max_mass,
                                    n_segments =ctx['isru_config'].n_segments,
                                    name=f"isru_pwl_vehicle{v}_node{i}_time{t}",
                                    x_var=ctx['x_outflow'][v][i][j][t][ctx['Commodities'].isru_indices['active']][0],
                                    z_var=arc_annual_output,
                                    maxval=False #production may be lower than max
                                )
                                #create every total increase in propellant
                                hold_days = ctx["all_arcs"][t][i][j]["FullTravelTime"]

                                
                                enterarc += arc_annual_output* (hold_days / ctx['isru_config'].days_per_year)

                        model.addConstr(
                            enterarc[0] == leavearc[0],
                            name=f"Arc_transformationConstraint_Start{i}_End{j}_Starttime{t}_Vehicle{v}_Commodity{row}",
                        )

                    if len(ctx["Commodities"].prop_index) > 1:
                        total_prop_outflow = sum((ctx["x_outflow"][v][i][j][t][p]
                                                 for p in ctx["Commodities"].prop_index),
                                                 start=np.array([0]))
                        total_prop_inflow = sum((ctx["x_inflow"][v][i][j][t][p]
                                                 for p in ctx["Commodities"].prop_index),
                                                 start=np.array([0]))

                        model.addConstr(
                            total_prop_inflow[0]
                            >= total_prop_outflow[0]
                            - ctx["vehicle_data"].propellant_cap[v] * ctx["y_outflow"][v][i][j][t][0],
                            name=f"PropellantTankOnlyBurn_vehicle{v}_start{i}_end{j}_time{t}",
                        )

                    else:
                        model.addConstr(
                            ctx["x_inflow"][v][i][j][t][ctx["Commodities"].prop_index[0]][0]
                            >= ctx["x_outflow"][v][i][j][t][ctx["Commodities"].prop_index[0]][0]
                            - ctx["vehicle_data"].propellant_cap[v]*ctx["y_outflow"][v][i][j][t][0],
                            name=f"PropellantTankOnlyBurn_vehicle{v}_start{i}_end{j}_time{t}",
                        )



def add_ISRU_negation_constraint(model,ctx):
    if not ctx["isru_config"].enabled:
        return


    for t in ctx["all_arcs"]:
        for i in ctx["all_arcs"][t]:
            for j in ctx["all_arcs"][t][i]:
                for v in range(ctx["V"]):
                    if not is_eligible_isru_arc(i, j, ctx["isru_config"]):
                        
                        model.addConstr(ctx['x_outflow'][v][i][j][t][ctx['Commodities'].isru_indices['active']][0] == 0,
                                             name=f"ActiveISRU_negationConstraint_Start{i}_End{j}_Starttime{t}_Vehicle{v}"
                        )
    return


def create_concurrency_constraint(connections, mass_conversion, propellant_indices):
    payload_row = copy.deepcopy(mass_conversion)
    prop_row = [0] * len(mass_conversion)

    if len(propellant_indices) > 1:
        for p in propellant_indices:
            payload_row[p] = 0
            prop_row[p] = 1

    else:
        p = propellant_indices[0]
        payload_row[p] = 0
        prop_row[p] = 1

    return np.array([payload_row, prop_row])

def create_sc_design_parameters(vehicle_data):
    Extra_carry_payloads = vehicle_data.carriable.count(True)
    V = len(vehicle_data.structure_mass)
    e = np.zeros((V, 2, 1 + Extra_carry_payloads))
    
    for v in range(V):
        e[v][0][0] = vehicle_data.payload_cap[v]
        e[v][1][0] = vehicle_data.propellant_cap[v]
        
        offset=0
        for payload_vehicle,boolean in enumerate(vehicle_data.carriable):
            if boolean == True:
                e[v][0][1 + offset] = vehicle_data.payload_cap[payload_vehicle]
                e[v][1][1 + offset] = vehicle_data.propellant_cap[payload_vehicle]
                offset+=1
    return e


def add_concurrency_constraints(model, ctx):
    H = create_concurrency_constraint(
        ctx["connections"],
        ctx["Commodities"].mass_conversion,
        ctx["Commodities"].prop_index,
    )
    e = create_sc_design_parameters(ctx["vehicle_data"])

    for v in range(ctx["V"]):
        for t in ctx["all_arcs"]:
            for i in ctx["all_arcs"][t]:
                for j in ctx["all_arcs"][t][i]:
                    extended_commodity = ctx["x_outflow"][v][i][j][t]
                    extended_constraint = [ctx["y_outflow"][v][i][j][t]]

                    count_idx = 0
                    for i1,c in enumerate(ctx["vehicle_data"].carriable):
                        if c == True:

                            extended_constraint = np.append(
                                extended_constraint,
                                np.array([ctx["scpayload_outflow"][v][i][j][t][count_idx]]),
                                axis=0,
                            )
                            count_idx+=1

                    for row, (commodity, constraint) in enumerate(zip(
                        np.dot(H, extended_commodity),
                        np.dot(e[v], extended_constraint),
                    )):

                        model.addConstr(
                            commodity[0] <= constraint[0],
                            name=f"Max_concurrency_constraint_row{row}_vehicle{v}_startnode{i}_endnode{j}_starttime{t}",
                        )

def add_SCP_concurrency_constraint(model,ctx):

    for v in range(ctx["V"]):
            for t in ctx["all_arcs"]:
                for i in ctx["all_arcs"][t]:
                    for j in ctx["all_arcs"][t][i]:
                        SCP_commodity = sum(ctx["scpayload_outflow"][v][i][j][t])

                        model.addConstr(
                            SCP_commodity[0] <= ctx["y_outflow"][v][i][j][t][0]*ctx["vehicle_data"].max_carried[v],
                            name=f"Minimum_SCP_concurrency_constraint_vehicle{v}_startnode{i}_endnode{j}_starttime{t}",
                        )


    return

def add_time_window_constraints(model, ctx):
    for t in ctx["all_arcs"]:
        for i in ctx["all_arcs"][t]:
            for j in ctx["all_arcs"][t][i]:
                for v in range(ctx["V"]):
                    if t in ctx["network"].node_windows[i][j]:
                        for idx, x in enumerate(ctx["x_outflow"][v][i][j][t]):
                            model.addConstr(
                                x[0] >= 0,
                                name=f"Outflow_inside_time_window_constraint_vehicle{v}_startnode{i}_endnode{j}_starttime{t},Commodity{ctx['Commodities'].commodity_names[idx]}",
                            )
                        for idx, x in enumerate(ctx["x_inflow"][v][i][j][t]):
                            model.addConstr(
                                x[0] >= 0,
                                name=f"Inflow_inside_time_window_constraint_vehicle{v}_startnode{i}_endnode{j}_starttime{t},Commodity{ctx['Commodities'].commodity_names[idx]}",
                            )

                    else:
                        for idx, x in enumerate(ctx["x_outflow"][v][i][j][t]):
                            model.addConstr(
                                x[0] == 0,
                                name=f"Outflow_outside_time_window_constraint_vehicle{v}_startnode{i}_endnode{j}_starttime{t},Commodity{ctx['Commodities'].commodity_names[idx]}",
                            )
                        for idx, x in enumerate(ctx["x_inflow"][v][i][j][t]):
                            model.addConstr(
                                x[0] == 0,
                                name=f"Inflow_outside_time_window_constraint_vehicle{v}_startnode{i}_endnode{j}_starttime{t},Commodity{ctx['Commodities'].commodity_names[idx]}",
                            )

