import math
import copy

import gurobipy as gp
from gurobipy import GRB
import numpy as np
# from torch import obj

"""
This file defines the sensitivity analysis function for the model.

Two areas of the system are defined: 
1.Parameters that are part of the existing model (weights and costs of the model)
 a. Commodity demands
 b. Vehicle weights for structural, propellant and payload amounts and Isp
2. Differences in the mission design:
 a. Network design: delta-v and time of flight
 b. ISRU Usage and function model
 c. Spacecraft Carriable or not
 d. Arc consumption


This is a lot of data, and only a fraction of possible parameters
so only a basic sensitivity analysis will be made from this file:
Locating the shadow price for a given change in each of the parameters

Area 1 can be affected by changing the values of the parameters in the existing implementation
while Area 2 requires a rebuilding of the model to create the new variables to test, this will be done by rebuidling the whole model as a new run 
(not in this file)


In order to get comparisons for effects, the effect on the objective function, number of spacecraft and fuel usage will be caluclated

"""

def single_commodity_demand_sensitivity_analysis(model, ctx, commodity, i_dem, t_dem,  demand_change, i_sup=None,t_sup=None):

    obj_initial = model.objVal
    

    #find commodity index for the given commodity name
    commodity_index = ctx["Commodities"].commodity_names.index(commodity)

    
    # remember demand is negative, supply is positive
    dem = model.getConstrByName(
    f"mass_balance_x_node{i_dem}_time{t_dem}_comm{commodity_index}" )

    old_rhs = dem.RHS

    dem.RHS = old_rhs - demand_change  # Decrease demand (increase negative value)

    if i_sup is not None and t_sup is not None:
        # Increase supply if specified
        sup = model.getConstrByName(
            f"mass_balance_x_node{i_sup}_time{t_sup}_comm{commodity_index}" )

        old_rhs_sup = sup.RHS
        sup.RHS = old_rhs_sup + demand_change  # Increase supply


    # Re-optimize the model
    model.optimize()

    obj_final = model.objVal

    # Restore original demand
    dem.RHS = old_rhs

    #restore original supply if it was changed
    if i_sup is not None and t_sup is not None:
            # Increase supply if specified
            sup.RHS = old_rhs_sup

    model.optimize()  # Re-optimize to restore original state

    shadow_price = (obj_final - obj_initial) / demand_change

    print(f"Initial Objective: {obj_initial}, Final Objective: {obj_final}")
    print(f"Shadow price for commodity {commodity} demand change of {demand_change}: {shadow_price}")

    return shadow_price

def multi_commodity_demand_sensitivity_analysis(model, ctx, description):
    obj_initial = model.objVal

    old_dem_rhs_multi = []
    old_sup_rhs_multi = []
    demand_changes = []
        
    for x in description:
        commodity = x['commodity']
        i_dem = x['i_dem'] 
        t_dem = x['t_dem']
        demand_change = x['demand_change']
        i_sup = x.get('i_sup', None)
        t_sup = x.get('t_sup', None)
        #find commodity index for the given commodity name
        commodity_index = ctx["Commodities"].commodity_names.index(commodity)
        
        # remember demand is negative, supply is positive
        dem = model.getConstrByName(
        f"mass_balance_x_node{i_dem}_time{t_dem}_comm{commodity_index}" )
    
        old_rhs = dem.RHS
        old_dem_rhs_multi.append((dem, old_rhs))
        dem.RHS = old_rhs - demand_change  # Decrease demand (increase negative value)

        demand_changes.append(demand_change)
    
        if i_sup is not None and t_sup is not None:
            # Increase supply if specified
            sup = model.getConstrByName(
                f"mass_balance_x_node{i_sup}_time{t_sup}_comm{commodity_index}" )
    
            old_rhs_sup = sup.RHS
            old_sup_rhs_multi.append((sup, old_rhs_sup))
            sup.RHS = old_rhs_sup + demand_change  # Increase supply
    
    
    # Re-optimize the model
    model.optimize()
    
    obj_final = model.objVal
    
    # Restore original demands
    for dem, old_rhs in old_dem_rhs_multi:
        dem.RHS = old_rhs
    
            #restore original supply if it was changed
        
    for sup, old_rhs_sup in old_sup_rhs_multi:
        sup.RHS = old_rhs_sup
    
    model.optimize()  # Re-optimize to restore original state
    
    shadow_price = (obj_final - obj_initial) / sum(demand_changes)
    
    print(f"Initial Objective: {obj_initial}, Final Objective: {obj_final}")
    print(f"Shadow price for multicommodity demand change of {demand_changes}: {shadow_price}")
    
    return shadow_price
    
def LIP_conversion_demand_sensitivity_analysis(fixed_lp, ctx, commodity, i_dem, t_dem,):

    #find commodity index for the given commodity name
    commodity_index = ctx["Commodities"].commodity_names.index(commodity)
    name = f"mass_balance_x_node{i_dem}_time{t_dem}_comm{commodity_index}"

    constr = fixed_lp.getConstrByName(name)

    print("Constraint:", constr.ConstrName)
    print("Sense:", constr.Sense)
    print("RHS:", constr.RHS)
    print("Slack:", constr.Slack)
    print("Pi:", constr.Pi)

    
    return constr.Pi


