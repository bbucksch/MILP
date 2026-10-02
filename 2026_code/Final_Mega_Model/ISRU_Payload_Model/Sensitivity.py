import math
import copy

import gurobipy as gp
from gurobipy import GRB
import numpy as np
# from torch import obj

"""
This file defines the sensitivity analysis function for the demand variation of the model model.

It calculates the Shadow price for a given change in the demand of a specific commodity at a specific node and time window.
The shadow price is calculated by changing the demand in the model, re-optimizing, and comparing the objective function value before and after the change.

This can be done for single commodity changes or for multiple commodities changed at the same time.
However! Shadow prices are calculated only for the single commodity change, for multiple commoidities it is assumed
that a single change is effected (+ramifications), so dividing by 1 is not necessary, this can be done elsewhere.
"""

def single_commodity_demand_sensitivity_analysis(modelog, ctx, commodity, i_dem, t_dem,  demand_change, i_sup=None,t_sup=None):

    model = modelog.copy()
    model.optimize()
    obj_initial = model.ObjVal


    #find commodity index for the given commodity name
    commodity_index = ctx["Commodities"].commodity_names.index(commodity)

    
    # remember demand is negative, supply is positive
    dem = model.getConstrByName(
    f"mass_balance_x_node{i_dem}_time{t_dem}_comm{commodity_index}" )

    print(dem)


    if dem is None:
        print(f"Model variation for {commodity} at {t_dem} time and {i_dem} does not exist.")
        return 100000000000
    old_rhs = dem.RHS

    #if dem != None:
    #    old_rhs = dem.RHS
    #else:
    #    old_rhs = 0

    dem.RHS = old_rhs - demand_change  # Decrease demand (increase negative value)

    if i_sup is not None and t_sup is not None:

        # Increase supply if specified
        sup = model.getConstrByName(
            f"mass_balance_x_node{i_sup}_time{t_sup}_comm{commodity_index}" )

        old_rhs_sup = sup.RHS
        sup.RHS = old_rhs_sup + demand_change  # Increase supply


    # Re-optimize the model
    model.optimize()

    if model.Status == GRB.INFEASIBLE:
        print(f"Model variation for {commodity} at {t_dem} time and {i_dem} demand is infeasible")
        return None

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

def multi_commodity_demand_sensitivity_analysis(modelog, ctx, description):

    model = modelog.copy()
    model.optimize()
    obj_initial = model.ObjVal

    old_dem_rhs_multi = []
    old_sup_rhs_multi = []
    demand_changes = []
    print(description)

    for x in description:
        commodity = x['commodity']
        i_dem = x['i_dem'] 
        t_dem = x['t_dem']
        demand_change = x.get('demand_change', 0)
        i_sup = x.get('i_sup', None)
        t_sup = x.get('t_sup', None)
        supply_change = x.get('supply_change', None)
        #find commodity index for the given commodity name
        commodity_index = ctx["Commodities"].commodity_names.index(commodity)
        
        # remember demand is negative, supply is positive
        dem = model.getConstrByName(
        f"mass_balance_x_node{i_dem}_time{t_dem}_comm{commodity_index}" )

        if dem is None:
            print(f"Model variation for {commodity} at {t_dem} time and {i_dem} does not exist.")
            return 100000000000
        old_rhs = dem.RHS
        #if dem != None:
        #    old_rhs = dem.RHS
        #else:
        #    old_rhs = 0



        old_dem_rhs_multi.append((dem, old_rhs))

        dem.RHS = old_rhs - demand_change  # Decrease demand (increase negative value)

        demand_changes.append(demand_change)
    
        if i_sup is not None and t_sup is not None:
            # Increase supply if specified
            sup = model.getConstrByName(
                f"mass_balance_x_node{i_sup}_time{t_sup}_comm{commodity_index}" )
    
            old_rhs_sup = sup.RHS
            old_sup_rhs_multi.append((sup, old_rhs_sup))
            if supply_change is not None:
                sup.RHS = old_rhs_sup + supply_change  # Increase supply
            else:
                sup.RHS = old_rhs_sup + demand_change  # Increase supply


    # Re-optimize the model
    model.optimize()
    if model.Status == GRB.INFEASIBLE:
            print(f"Model variation for multicommodity {description} is infeasible")
            return None

    obj_final = model.objVal
    
    # Restore original demands
    for dem, old_rhs in old_dem_rhs_multi:
        dem.RHS = old_rhs
    
            #restore original supply if it was changed
        
    for sup, old_rhs_sup in old_sup_rhs_multi:
        sup.RHS = old_rhs_sup
    
    model.optimize()  # Re-optimize to restore original state
    
    shadow_price = (obj_final - obj_initial)
    
    print(f"Initial Objective: {obj_initial}, Final Objective: {obj_final}")
    print(f"Obj difference, NOT SP! for multicommodity demand change of {demand_changes}: {shadow_price}")
    
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


