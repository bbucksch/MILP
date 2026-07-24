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

    carriedvehicles = [k for k,i in enumerate(ctx["vehicle_data"].carriable)]
    
    cost = (
        sum(
            np.dot(ctx["Commodities"].mass_conversion, ctx["x_outflow"][v][start_node][j][start_time])[0]
            + ctx["vehicle_data"].structure_mass[v] * ctx["y_outflow"][v][start_node][j][start_time][0]
            for v in range(ctx["V"])
            for j in ctx["all_arcs"][start_time][start_node]
        )

        
        + sum(
            ctx["vehicle_data"].structure_mass[k]
            * ctx["scpayload_outflow"][v][start_node][j][start_time][k][0]
            for v in range(ctx["V"])
            for k in carriedvehicles
            for j in ctx["all_arcs"][start_time][start_node]
        )
    )
    model.setObjective(cost, GRB.MINIMIZE)
    return cost