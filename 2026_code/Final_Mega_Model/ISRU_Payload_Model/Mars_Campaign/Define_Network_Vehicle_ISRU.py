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
def NetworkModel(campaign=False, yearloops = 0):
    Net = NetworkData()
    Net.g0 = 9.8
    # Net.g0 = 9.80665
    Net.connections = {
        0: [0, 1],
        1: [0, 1, 2, 4, 5],
        2: [1, 2, 3, 4],
        3: [2, 3],
        4:[1,2,4,5],
        5:[1,4,5,6],
        6:[5,6]
    }

    Net.T= 14+365*2 #total time of entire model (in days)

    # Windows always open
    # For all_possible_outflow_arcs_uniform_holdover
    # Net.node_windows = {
    #     i: {
    #         j: [t for t in range(Net.T) if t+Net.tof[i][j] < Net.T] for j in Net.connections[i]
    #     } for i in Net.connections
    # }

    # For all_possible_outflow_arcs_nonuniform_holdover
    Net.node_windows = {
        0: {
            0: [0, 13],
            1: [0],
        },
        1: {
            0: [12],
            1: [1, 12],
            2: [1,2,3,4,5],
            4: [1,2,3,4,5],
            5: [1,2,3,4,5]
        },
        2: {
            1: [9],
            2: [4, 9],
            3: [4],
            4: [5]
        },
        3: {
            2: [8],
            3: [5, 8]
        },
        4: {
            1: [2,3,4,5,6,7,8,9,10,11,12,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63],
            2: [1,2,3,4,5,6,7,8,9,10,11,12],
            4: [1,2,3,4,5,6,7,8,9,10,11,12,13,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63],
            5: [1,2,3,4,5,6,7,8,9,10,11,12]
        },
        5: {
            1: [11],
            4: [6, 11],
            5: [202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],
            6: [202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221]
        },
        6: {
            5: [202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],
            6: [202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221]
        }
    }

    Net.delta_v = {
        0: {0: 0, 1: 0},
        1: {0: 0, 1: 0, 2: 4.04, 4: 3.82, 5:5.76},
        2: {1: 4.04, 2: 0, 3: 1.87, 4: 1.87},
        3: {2: 1.87, 3: 0},
        4: {1: 3.82, 2: 1.87, 4:0, 5: 3.29},
        5:{1:5.76, 4:3.29, 5:0, 6:2.3},
        6:{5:2.3, 6:0}
    }

    # For all_possible_outflow_arcs_nonuniform_holdover
    Net.tof = {
        0: {1: 1}, #surface earth
        1: {0: 1, 2: 3, 4: 6, 5: 202}, #LEO earth
        2: {1: 3, 3: 1, 4: 4}, #LLO moon
        3: {2: 1},  #moon surface
        4: {2: 4, 1: 6, 5: 206}, #DRO
        5:{1:202, 4:206, 6:1}, #LMO mars
        6:{5:1} #surface mars
    }

    # For all_possible_outflow_arcs_uniform_holdover
    # Net.tof = {
    #     0: {0: 1, 1: 1},
    #     1: {0: 1, 1: 1, 2: 3},
    #     2: {1: 3, 2: 1, 3: 1},
    #     3: {2: 1, 3: 1},
    # }

    Net.node_names = [
        "Earth Surface",
        "Low Earth Orbit",
        "Low Lunar Orbit",
        "Lunar surface",
        "Distant Retrograde Orbit",
        "Low Mars Orbit",
        "Mars Surface"
    ]


    validate_network_model(Net)

    if campaign:
        for i, connections in Net.node_windows.items():
            for j, time_window in connections.items():
                next_mission_windows = []
                for loop in range(yearloops):
                    for t in time_window:
                        next_mission_windows.append(t + 365*(loop+1))
                Net.node_windows[i][j].extend(next_mission_windows)

    return Net

#reverse the tof list (negative travel times, to see what nodes can travel to a single end result)
def reverse_tof(tof):
    return {i: {j: -dt for j, dt in dests.items()} for i, dests in tof.items()}

#function to ensure all possible arcs are covered [t][i][j]
def all_possible_outflow_arcs_nonuniform_holdover(window, tof_used, T, reverse=False):
    all_arcs = {}
    for i in window:
        for j in window[i]:
            if i==j:
                dep_times = sorted(window[i][i])
                arc_instances = [
                    (dep_times[k], dep_times[k + 1], dep_times[k + 1] - dep_times[k])
                    for k in range(len(dep_times) - 1)
                ]

            else:
                arc_instances = [
                    (t_departure, t_departure+abs(tof_used[i][j]), abs(tof_used[i][j]))
                    for t_departure in window[i][j]
                ]

            for t, t_arrival, delta_t in arc_instances:
                if t_arrival >= T:
                    continue

                if not reverse:
                    if t not in all_arcs:
                        all_arcs[t] = {}
                    if i not in all_arcs[t]:
                        all_arcs[t][i] = {}

                    all_arcs[t][i][j] = {
                        "ArrivalTime": t_arrival,
                        "FullTravelTime": delta_t,
                    }

                else:
                    if t_arrival not in all_arcs:
                        all_arcs[t_arrival] = {}
                    if j not in all_arcs[t_arrival]:
                        all_arcs[t_arrival][j] = {}

                    all_arcs[t_arrival][j][i] = {
                        "ArrivalTime": t, # Departure time from i to get to j (which later becomes j to get to i)
                        "FullTravelTime": -delta_t,
                    }

    return all_arcs


def all_possible_outflow_arcs_uniform_holdover(window, tof_used, T, reverse=False):
    all_arcs = {}
    for i in window:
        for j in window[i]:
            for t in window[i][j]:
                t_arrival = t + abs(tof_used[i][j])
                if t_arrival >= T:
                    continue

                if not reverse:
                    if t not in all_arcs:
                        all_arcs[t] = {}
                    if i not in all_arcs[t]:
                        all_arcs[t][i] = {}

                    all_arcs[t][i][j] = {
                        "ArrivalTime": t_arrival,
                        "FullTravelTime": tof_used[i][j],
                    }

                else:
                    if t_arrival not in all_arcs:
                        all_arcs[t_arrival] = {}
                    if j not in all_arcs[t_arrival]:
                        all_arcs[t_arrival][j] = {}

                    all_arcs[t_arrival][j][i] = {
                        "ArrivalTime": t, # Departure time from i to get to j (which later becomes j to get to i)
                        "FullTravelTime": tof_used[i][j],
                    }

    return all_arcs


def VehicleModel():
    Vehicle = VehicleData()


    #Vehicle design parameters
    Vehicle.structure_mass = np.array([24745, 7342])
    Vehicle.isp = np.array([330, 330])
    Vehicle.payload_cap = np.array([3978, 2262])
    Vehicle.propellant_cap = np.array([198580, 23891])
    Vehicle.sc_vtype = GRB.INTEGER
    Vehicle.number_vehicle_types = 2 #How many vehicles are being defined
    Vehicle.vehicle_type_names = ["Type_1", "Type_2"] #Names of the vehicles being defined
    Vehicle.carriable = [True, True] #Whether or not the vehicle can be carried as payload
    Vehicle.max_carried = [100, 100]  # How many scpayloads each vehicle can carry

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
    c2 = 1 - math.exp(x / -812.1563)
    c3 = 1 - math.exp(x / -3967.2644)
    return c1 + (6.9623 * c2) + (2.0173 * c3)

def ISRUfunc_test(x):
    return 0.1*x

#Function defining total ISRU outpu in kg O2/year, given mass of ISRU in kg
def ISRU_total_annual_output(mass):
    return mass * ISRUfunc(mass)

def ISRUtotal_test(mass):
    return mass*ISRUfunc_test(mass)