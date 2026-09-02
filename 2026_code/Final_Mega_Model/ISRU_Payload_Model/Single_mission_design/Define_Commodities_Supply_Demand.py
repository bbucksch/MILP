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
            "crew_return",
            "consumables",
            "equipment",
            "samples",
            "propellant_oxygen",
            "crew_interim",
            ISRUModelvar.packaged_name,
            ISRUModelvar.active_name,
            "propellant_kerosene",
            "maintenance_mass"
    ]

    Comm.Variable_type = [
            GRB.INTEGER,
            GRB.INTEGER,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.INTEGER,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
    ]
    
    Comm.prop_index = [5,9] #Index of propellant in the commodities list
    Comm.prop_percentages = [0.7191, 1-0.7191] # Percentage of each type of propellant component
    Comm.oxygen_boiloff = 0.00016
    Comm.sc_flight_maintenance = 0.01
    Comm.isru_indices = {"packaged": 7, "active": 8}
    Comm.isru_yearly_maintenance = 0.1
    Comm.crew_mass = 100
    Comm.mass_conversion = [Comm.crew_mass, Comm.crew_mass, 1, 1, 1, 1, Comm.crew_mass, 1, 1, 1, 1]
    Comm.consumption_rate = 1.015 + 6.37 + 1.18
    # Comm.consumption_rate = 124/(10*3)
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
                # if t not in [time for window in network.node_windows[node].values() for time in window]:
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

    #Commmodity demand array
    # commodity = ["crew","crew_return","consumables","equipment",
    # "samples","propellant_ox","crew_interim","ISRU_packaged",
    # "ISRU_active" , "propellant_ker", "maint_mass"]
    #Demand network is defined as [Node][Time][Commodity]
    D = [[np.array([1e15 if ((i == 0 and (x in [0, 2, 3, 5, 7, 9, 10])) or (i == 3 and x == 4)) else 0 for x in range(n_commodities)],
                   dtype=float)
          for _ in range(network.T)]
         for i in network.connections]

    #Crew
    D[3][5][0] = -12

    # Crew interim
    D[3][5][6] = 12

    D[3][8][6] = -12

    #CrewReturn
    D[3][8][1] = 12

    D[0][13][1] = -12

    #Equipment
    D[3][5][3] = -4200

    #Samples
    D[0][13][4] = -500

    #Vehicle Demand array [Node][vehicle][Time]
    d = [[[2 if (i == 0 and t == 0) else 0 for t in range(network.T)]
          for v in range(n_vehicles)]
         for i in network.connections]
    
    # #Validate D and d
    # Validation_Demand_Supply(network, D, d)
    return D, d


def phi(i, j, v, delta_v, isp, g0):
    if delta_v[i][j] == 0:
        return 0

    elif isp[v] == 0:
        return 1

    else:
        return 1 - np.exp(-(1000 * delta_v[i][j] / (isp[v] * g0)))




def are_we_on_earth(i,j):
    
    #only return true on a holdover arc on earth (index 0)
    return i == j == 0


#create a consumption matrix for the network model,based on number of commodities,
#index position of propellant, and ISRU indices and masses of various systems
def consumption_matrix(i, j, v, commodity_names, prop_index, crew_mass,
                       daily_consumption, network, vehicle_data, Active_ISRU_index, ArcTOF,
                       commodities, days_per_year):
    """
    Transformation matrix for commodities, active spacecraft, and spacecraft
    payloads.  ISRU commodities are pass-through here; eligible holdover arcs
    receive custom deployment/production rows later.
    """

    active_phi = phi(i, j, v, network.delta_v, vehicle_data.isp, network.g0)
    if network.delta_v[i][j] <= 0:
        active_phi = 0


    Extra_carry_payloads = vehicle_data.carriable.count(True)

    commodity_count = len(commodity_names)
    full_len = commodity_count + 1 + Extra_carry_payloads # +1 for sc
    mat = np.zeros((full_len, full_len))

    #matrix works by going through the commodity vector first
    #then the spacecraft structure variable
    #then the payload spacecrafts
    #all collated in 1 vector for matrix multiplication
    
    #as default all commodities count as weight toward propellant usage,
    #specific mass conversion is manually defined
    prop_percentages = commodities.prop_percentages
    #first define oxygen usage
    mat[prop_index[0], :] = -active_phi * prop_percentages[0]
    #then kerosene usage
    mat[prop_index[1], :] = -active_phi * prop_percentages[1]

    # Generic pass-through for any added commodity, including packaged/active
    # ISRU.  Active ISRU is separately restricted to eligible holdover arcs.
    for c in range(commodity_count):
        mat[c, c] = 1

    consumables_idx = commodity_names.index("consumables")
    maintenance_idx = commodity_names.index("maintenance_mass")

    #crew, crew interim, crew return -> propellant
    mat[prop_index[0], 0] *= crew_mass #crew mass multiplication
    mat[prop_index[0], 1] *= crew_mass #crew mass multiplication
    mat[prop_index[0], 6] *= crew_mass #crew mass multiplication

    mat[prop_index[1], 0] *= crew_mass  # crew mass multiplication
    mat[prop_index[1], 1] *= crew_mass  # crew mass multiplication
    mat[prop_index[1], 6] *= crew_mass  # crew mass multiplication

    mat[prop_index[0], prop_index[0]] = 1 - active_phi*prop_percentages[0] #propellant function oxidizer
    mat[prop_index[1], prop_index[1]] = 1 - active_phi*prop_percentages[1] # propellant function kerosene
    
    mat[prop_index[0], commodity_count] *= vehicle_data.structure_mass[v]
    mat[prop_index[1], commodity_count] *= vehicle_data.structure_mass[v]
    mat[commodity_count, commodity_count] = 1 #this and the above line reer to changes in the number of SC, no changes


    # no consumable consumption on earth (default zeros) or from PAC to LEO
    if not (are_we_on_earth(i, j) or (i == 0 and j == 1)):
        # exceptions consumption of consumables: crew ->consumables [3]
        mat[consumables_idx, 0] = -daily_consumption * ArcTOF  # Decrease in consumables due to crew consumption
        mat[consumables_idx, 1] = -daily_consumption * ArcTOF  # Decrease in consumables due to crew consumption
        mat[consumables_idx, 6] = -daily_consumption * ArcTOF  # Decrease in consumables due to crew consumption
        # crew, crew interim, crew return -> consumables

        # Spacecraft maintenance = 1% of spacecraft mass per arc (not per day)
        mat[maintenance_idx, commodity_count] = -commodities.sc_flight_maintenance*vehicle_data.structure_mass[v]

        # Oxygen boiloff: according to paper table, 0.016% per day. However, in the result they use 0.016% per arc
        # mat[prop_index[0], prop_index[0]] *= (1-commodities.oxygen_boiloff)**ArcTOF
        mat[prop_index[0], prop_index[0]] *= (1 - commodities.oxygen_boiloff)

        # Active ISRU maintenance = 10% of ISRU mass per year
        mat[maintenance_idx, Active_ISRU_index] = -(commodities.isru_yearly_maintenance / days_per_year) * ArcTOF


    #additonal SC payload mass entries, require the structure values
    #only add the data when the row paylaod is true
    offset = 0
    for vcount, payload_vehicle_bool in enumerate(vehicle_data.carriable):
        if payload_vehicle_bool == True:
            
            idx = commodity_count + 1 + offset
            mat[idx, idx] = 1
            mat[prop_index[0], idx] *= vehicle_data.structure_mass[vcount]
            mat[prop_index[1], idx] *= vehicle_data.structure_mass[vcount]

            # Spacecraft maintenance = 1% of spacecraft mass per arc (not per day)
            if not (are_we_on_earth(i, j) or (i == 0 and j == 1)):
                mat[maintenance_idx, idx] = -commodities.sc_flight_maintenance * vehicle_data.structure_mass[vcount]
            
            offset +=1
    
    return mat