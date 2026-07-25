import math
import copy

import gurobipy as gp
from gurobipy import GRB
import numpy as np

"""
Script to define Commodities, supply and demand for the network model.
The Network used is defined in Define_Network_Vehicle_ISRU.py,
the commodities type and amount will be defined here.
#Based on the commodities and the network the consumpition matrix will be defined
#separate to this consumption matrix, the payload SC commodities will be defined
#This will be done in the variable creation file and the constrain creation file

Based on the commodities and the network, the supply and demand are also defined herer
"""
from Dataclasses import (
    Commodities
)
def define_commodities(ISRUModelvar):

    Comm = Commodities()
    Comm.commodity_names = [
            "crew",
            "crew_interim",
            "crew_return",
            "consumables",
            "equipment",
            "samples",
            "propellant",
            ISRUModelvar.packaged_name,
            ISRUModelvar.active_name,
    ]
    Comm.Variable_type = [
            GRB.INTEGER,
            GRB.INTEGER,
            GRB.INTEGER,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
    ]
    
    Comm.prop_index = 6 #Index of propellant in the commodities list
    Comm.isru_indices = {"packaged": 7, "active": 8}
    Comm.crew_mass = 100
    Comm.mass_conversion = [Comm.crew_mass, Comm.crew_mass, Comm.crew_mass, 1, 1, 1, 1, 1, 1]
    Comm.consumption_rate = 1.0 + 5.0 + 1.1
    return Comm


#Demand and Supply is defined here, based on the number of 
#Non-payload Commodities, the number of active vehicle types 
# and the  original network

#Since these values are defined manually,
#this function ensures all non zero demand and supply falls
#on a node in a valid time window
#the strucutre uses the index value as the relevant vehicle/node/commodity/time
def Validation_Demand_Supply(network, D, d):
    for node in range(len(D)):
        for t in range(len(D[node])):
            if D[node][t].any() != 0:
                if t not in network.node_windows[node]:
                    print(D[node][t])
                    raise ValueError(f"Demand at node {node} and time {t} is outside of valid time windows.")
    for node in range(len(d)):
        for vehicle in range(len(d[node])):
            for t in range(len(d[node][vehicle])):
                if d[node][vehicle][t] != 0:
                    if t not in network.node_windows[node]:
                        print(d[node][vehicle][t])
                        raise ValueError(f"Vehicle demand at node {node}, vehicle {vehicle}, and time {t} is outside of valid time windows.")
    pass



def demand_supply(network, n_commodities, n_vehicles):
    

    T_adv = list(range(network.T))

    #Commmodity demand array
    #Demand network is defined as [Node][Time][Commodity]
    D = [[np.array([0 for _ in range(n_commodities)], dtype=float)
          for _ in T_adv]
         for _ in network.connections]

    #Crew
    D[1][0][0] = 3
    D[3][4][0] = -2
    D[2][3][0] = -1
    #D[3][5][0] = 2
    #D[2][6][0] = 1
    #D[0][11][0] = -3
    
    D[1][0+365][0] = 3
    D[3][4+365][0] = -2
    D[2][3+365][0] = -1
    #Crew Interim
    D[3][4][1] = 2
    D[2][3][1] = 1
    D[3][5][1] = -2
    D[2][6][1] = -1

    D[3][4+365][1] = 2
    D[2][3+365][1] = 1
    D[3][5+365][1] = -2
    D[2][6+365][1] = -1

    #CrewReturn
    D[3][5][2] = 2
    D[2][6][2] = 1
    D[0][11][2] = -3

    D[3][5+365][2] = 2
    D[2][6+365][2] = 1
    D[0][11+365][2] = -3

    #Consumables
    D[1][0][3] = 99999

    #D[1][0+365][3] = 99999

    #Equipment
    D[1][0][4] = 99999
    D[3][4][4] = -420

    #D[1][0+365][4] = 99999
    #D[3][4+365][4] = -420

    #Samples
    for t in network.node_windows[3]:
        D[3][t][5] = 999999
    
    D[0][11][5] = -110

    D[0][11+365][5] = -110
    
    #Propellant
    D[1][0][6] = 99999999

    D[1][0+365][6] = 99999999

    #ISRU packaged
    D[1][0][7] = 10000.0

    

    
    
    
   

    #Vehicle Demand array [Node][vehicle][Time]
    d = [[[2 if (i == 1 and t == 0) else 0 for t in range(network.T)]
          for _ in range(n_vehicles)]
         for i in network.connections]
    d[1][0][365] = 1
    
    #Validate D and d
    Validation_Demand_Supply(network, D, d)
    return D, d


def phi(i, j, v, delta_v, isp, g0):
    if isp[v] == 0:
        return 1
    return 1 - np.exp(-(1000 * delta_v[i][j] / (isp[v] * g0)))

#create a consumption matrix for the network model,based on number of commodities,
#index position of propellant, and ISRU indices and masses of various systems
def consumption_matrix(i, j, v, commodity_count, prop_index, crew_mass,
                       daily_consumption, network, vehicle_data, Active_ISRU_index):
    """
    Transformation matrix for commodities, active spacecraft, and spacecraft
    payloads.  ISRU commodities are pass-through here; eligible holdover arcs
    receive custom deployment/production rows later.
    """
    

    active_phi = phi(i, j, v, network.delta_v, vehicle_data.isp, network.g0)
    if network.delta_v[i][j] <= 0:
        active_phi = 0


    Extra_carry_payloads = vehicle_data.carriable.count(True)

    full_len = commodity_count + 1 + Extra_carry_payloads
    mat = np.zeros((full_len, full_len))

    #matrix works by going through the commodity vector first
    #then the spacecraft structure variable
    #then the payload spacecrafts
    #all collated in 1 vector for matrix multiplication
    
    #as default all commodities count as weight toward propellant usage,
    #specific mass conversion is manually defined
    mat[prop_index, :] = -active_phi
    #Active ISRU is exempt from propellant usage in this matrix,
    mat[prop_index,Active_ISRU_index] = 0
    # Generic pass-through for any added commodity, including packaged/active
    # ISRU.  Active ISRU is separately restricted to eligible holdover arcs.
    for c in range(commodity_count):
        mat[c, c] = 1
    
    
    #exceptions consumption of consumables: crew ->consumables [3]
    mat[3, 0] = -daily_consumption * network.tof[i][j] #Decrease in consumables due to crew consumption
    mat[3, 1] = -daily_consumption * network.tof[i][j] #Decrease in consumables due to crew consumption
    mat[3, 2] = -daily_consumption * network.tof[i][j] #Decrease in consumables due to crew consumption
    #crew, crew interim, crew return -> consumables
    
    #crew, crew interim, crew return -> propellant
    mat[prop_index, 0] = -crew_mass * active_phi #crew mass multiplication
    mat[prop_index, 1] = -crew_mass * active_phi #crew mass multiplication
    mat[prop_index, 2] = -crew_mass * active_phi #crew mass multiplication

    mat[prop_index, prop_index] = 1 - active_phi #propellant function
    
    mat[prop_index, commodity_count] = -vehicle_data.structure_mass[v] * active_phi
    mat[commodity_count, commodity_count] = 1 #this and the above line reer to changes in the number of SC, no changes


    #additonal SC payload mass entries, require the structure values
    #only add the data when the row paylaod is true
    offset = 0
    for vcount, payload_vehicle_bool in enumerate(vehicle_data.carriable):
        if payload_vehicle_bool == True:
            
            idx = commodity_count + 1 + offset
            mat[idx, idx] = 1
            mat[prop_index, idx] = -1* vehicle_data.structure_mass[vcount] * active_phi
            
            offset +=1
    
    return mat