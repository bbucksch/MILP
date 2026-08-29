import math
import copy

import gurobipy as gp
from gurobipy import GRB
import numpy as np


"""
This file defines the Cost function that we want to minimize. It can be changed in order to
change the subject which is minimized or maximized
"""




def set_initial_mass_objective(model, ctx, start_node=1, start_time=0):

    
    carriedvehicles = []
    for i,k in enumerate(ctx["vehicle_data"].carriable):
        if k == True:
            carriedvehicles.append(i)
    
    cost = (
        sum(
            np.dot(ctx["Commodities"].mass_conversion, ctx["x_outflow"][v][start_node][j][start_time])[0]
            + ctx["vehicle_data"].structure_mass[v] * ctx["y_outflow"][v][start_node][j][start_time][0]
            for v in range(ctx["V"])
            for j in ctx["all_arcs"][start_time][start_node]
        )

        
        + sum(
            ctx["vehicle_data"].structure_mass[massnum]
            * ctx["scpayload_outflow"][v][start_node][j][start_time][index][0]
            for v in range(ctx["V"])
            for index,massnum in enumerate(carriedvehicles)
            for j in ctx["all_arcs"][start_time][start_node]
        )
    )
    
    return cost



#Chosen mission objective

def Mission_mass_objective(model,ctx):
    obj1 = set_initial_mass_objective(model, ctx) #default start time 0
    obj2 = set_initial_mass_objective(model, ctx, start_time=365) #start time 365
    objfinal = obj1 +obj2
    return objfinal