import math
import copy

import gurobipy as gp
from gurobipy import GRB
import numpy as np


"""
Create variables in this script.
Script should be called with data from the main model runner amd create all necessary variables here
Note: Linearized ISRU variables are created elsewhere
"""




def create_commodity_flow(model, V, Commdata, all_arcs, connections, direction="out", typeC="Classic"):

    #this block of code allows you to use either regular commodities
    #or payloadSC commodities in order to create both for each arc
    try:
        Variabletype= Commdata.Variable_type
    except:
        Variabletype = []
        for i1,x1 in enumerate(Commdata.carriable):
            if x1 == True:
                Variabletype.append(GRB.INTEGER)
    
    try:
        Commnames = Commdata.commodity_names 
    except:
        Commnames = []
        for i1,x1 in enumerate(Commdata.carriable):
            if x1 ==True:
                Commnames.append("payloadVar"+Commdata.vehicle_type_names[i1])
        
    return {
        v: {
            i: {
                j: {
                    t: np.array([
                        [model.addVar(vtype=Variabletype[x],
                                      name=f"{typeC}_commodity_{direction}flow_{v},{i},{j},Tstart{t},Tend{all_arcs[t][i][j]['ArrivalTime']},Commodity{Commnames[x]}",
                                      lb=0)]
                        for x in range(len(Commnames))
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

