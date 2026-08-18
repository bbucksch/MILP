from dataclasses import dataclass, field
import math

import gurobipy as gp
from gurobipy import GRB
import numpy as np

"""
This file defines the spacecraft mission that will be run in the optimization model

4 dofferent factors need to be chosen:
The network model: 
defined by the possible nodes, the windows in which each of those nodes is open,
the TOF (time of flight) between nodes and the delta-v necessary to travel between them

The commodity model:
defined by the types of commodities that are tracked during the spacecraft flights
as well as the consumption matrix used to find thehow the commodities vary over transportation arcs

The Spacecraft design :
defined by the preset values for spacecraft design parameters (payload mass, propellant mass, structural mass),
the type of propellant used (with isp, and burn time)

The ISRU model:
defined by the max mass of ISRU that can be brought as well as the exact
"""


#Dataclasses have default values for model parameters,
#Picking different values is necessary to specify the scenario
from Dataclasses import (
    NetworkData,
    ISRUConfig,
    VehicleData,
    
)

#validation function for network model, 
#avoids creating incorrectly formulated network
def validate_network_model(Net: NetworkData):
    #check that all nodes in connections are in node_windows
    for node in Net.connections:
        if node not in Net.node_windows:
            raise ValueError(f"Node {node} in connections is not in node_windows")
    #check that all nodes in node_windows are in connections
    for node in Net.node_windows:
        if node not in Net.connections:
            raise ValueError(f"Node {node} in node_windows is not in connections")
    #check that all nodes in delta_v are in connections
    for node in Net.delta_v:
        if node not in Net.connections:
            raise ValueError(f"Node {node} in delta_v is not in connections")
    #check that all nodes in tof are in connections
    for node in Net.tof:
        if node not in Net.connections:
            raise ValueError(f"Node {node} in tof is not in connections")
        
    #check that all connections in delta_v are in connections
    for node in Net.delta_v:
        for conn in Net.delta_v[node]:
            if conn not in Net.connections[node]:
                raise ValueError(f"Connection {conn} in delta_v for node {node} is not in connections")
    #check that all connections in tof are in connections
    for node in Net.tof:
        for conn in Net.tof[node]:
            if conn not in Net.connections[node]:
                raise ValueError(f"Connection {conn} in tof for node {node} is not in connections")
    print("Network model is valid")
    pass

#this function is called to define the network model
def NetworkModel():
    Net = NetworkData()
    #g0 = 9.80665
    Net.connections = {
        0: [0, 1],
        1: [0, 1, 2],
        2: [1, 2, 3],
        3: [2, 3],
    }

    Net.T= 12 #total time of entire model (in days)

    Net.node_windows = {
    
        0: [0, 4, 8, 9, 10, 11],
        1: [0, 5, 9, 10, 11],
        2: [0,1,2,3,4,5,6,7,8,9,10,11],
        3: [0, 2, 3, 4, 5, 6, 11],
    }

    Net.delta_v = {
        0: {0: 0, 1: 1000},
        1: {0: 0, 1: 0, 2: 4.04},
        2: {1: 4.04, 2: 0, 3: 1.87},
        3: {2: 1.87, 3: 0},
    }

    Net.tof = {
        0: {0: 1, 1: 1},
        1: {0: 1, 1: 1, 2: 3},
        2: {1: 3, 2: 1, 3: 1},
        3: {2: 1, 3: 1},
    }

    Net.node_names = [
        "Earth Surface",
        "Low Earth Orbit",
        "Low Lunar Orbit",
        "Lunar surface"
    ]


    validate_network_model(Net)

    return Net

#reverse the tof list (negative travel times, to see what nodes can travel to a single end result)
def reverse_tof(tof):
    return {i: {j: -dt for j, dt in dests.items()} for i, dests in tof.items()}

#function to ensure all possible arcs are covered [t][i][j]
def all_possible_outflow_arcs(connections, time_range, window, tof_used):
    all_arcs = {}
    for t in time_range:
        time_node = {}
        for i in connections:
            if t not in window[i]:
                continue
            now = window[i].index(t)
            time_node[i] = {}
            for j in connections[i]:
                if t + tof_used[i][j] in window[j]:
                    time_node[i][j] = {
                        "ArrivalTime": t + tof_used[i][j],
                        "FullTravelTime": tof_used[i][j],
                    }
            if (i not in time_node[i]) and (now + 1 != len(window[i])):
                time_node[i][i] = {
                    "ArrivalTime": window[i][now + 1],
                    "FullTravelTime": window[i][now + 1] - t,
                }
        if time_node:
            all_arcs[t] = time_node
    return all_arcs

def VehicleModel():
    Vehicle = VehicleData()


    #Vehicle design parameters
    Vehicle.structure_mass = np.array([2500, 30])
    Vehicle.isp = np.array([900, 200])
    Vehicle.payload_cap = np.array([10000, 130])
    Vehicle.propellant_cap = np.array([4000, 17000])
    Vehicle.sc_vtype = GRB.INTEGER
    Vehicle.number_vehicle_types = 2 #How many vehicles are being defined
    Vehicle.vehicle_type_names = ["Vehicle_0", "Vehicle_1"] #Names of the vehicles being defined
    Vehicle.carriable = [True, True] #Whether or not the vehicle can be carried as payload

    return Vehicle



#ISRU model data
def ISRUModel():
    ISRU = ISRUConfig()
    ISRU.enabled = True
    ISRU.active_nodes = [3] #ISRU can only be active on the moon (node 3)
    ISRU.max_mass = 10000.0
    ISRU.n_segments = 100
    ISRU.days_per_year = 365.0
    ISRU.packaged_name = "packaged_isru"
    ISRU.active_name = "active_isru"
    return ISRU

#Function defining ISRU productivity in kg/ o2/year/kg ISRU
def ISRUfunc(x):
    """ISRU productivity in kg O2/year/kg ISRU, copied from Linearization.py."""
    if x < 400:
        return 0
    c1 = -0.438
    c2 = 1 - math.exp(x / -812.15163)
    c3 = 1 - math.exp(x / -3967.2644)
    return c1 + (6.9623 * c2) + (2.0173 * c3)

def ISRUfunc_test(x):
    return 0.1*x

#Function defining total ISRU outpu in kg O2/year, given mass of ISRU in kg
def ISRU_total_annual_output(mass):
    return mass * ISRUfunc(mass)

def ISRUtotal_test(mass):
    return mass*ISRUfunc_test(mass)