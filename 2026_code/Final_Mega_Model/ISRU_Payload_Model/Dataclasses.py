from dataclasses import dataclass, field
import math
import copy

import gurobipy as gp
from gurobipy import GRB
import numpy as np


"""
Dataclasses used in the model are defined here for usage in the rest of the model
"""


# @dataclass is used for scenario inputs that are mostly data.
# It automatically creates an __init__ method, readable repr, and simple
# attribute storage, so a scenario can override only the values it needs:
# VehicleData(payload_cap=np.array([...])).



# field(default_factory=...) is important for lists, dictionaries, and arrays.
# It gives each NetworkData instance its own fresh object instead of sharing a
# single mutable default between model runs.
@dataclass
class NetworkData:
    g0: float = 9.80665
    connections: dict = field(default_factory=lambda: {
        0: [0, 1],
        1: [0, 1, 2],
        2: [1, 2, 3],
        3: [2, 3],
    })
    T: int = 12
    node_windows: dict = field(default_factory=lambda: {
        0: [0, 4, 8, 9, 10, 11],
        1: [0, 5, 9, 10, 11],
        2: list(range(12)),
        3: [0, 2, 3, 4, 5, 6, 11],
    })
    delta_v: dict = field(default_factory=lambda: {
        0: {0: 0, 1: 1000},
        1: {0: 0, 1: 0, 2: 4.04},
        2: {1: 4.04, 2: 0, 3: 1.87},
        3: {2: 1.87, 3: 0},
    })
    tof: dict = field(default_factory=lambda: {
        0: {0: 1, 1: 1},
        1: {0: 1, 1: 1, 2: 3},
        2: {1: 3, 2: 1, 3: 1},
        3: {2: 1, 3: 1},
    })
    node_names: list = field(default_factory=lambda: [
        "Earth Surface",
        "Low Earth Orbit",
        "Low Lunar Orbit",
        "Lunar surface"
    ])

@dataclass
class Commodities:
    commodity_names: list = field(default_factory= lambda:[
            "crew",
            "consumables",
            "equipment",
            "samples",
            "propellant",
            "default_ISRU_pack",
            "default_ISRU_active"
    ])
    Variable_type:list = field(default_factory=lambda:[
            GRB.INTEGER,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
            GRB.CONTINUOUS,
    ])
    prop_index: int = 4 #Index of propellant in the commodities list
    isru_indices:dict = field(default_factory=lambda: {"packaged": 5, "active": 6})
    crew_mass:float = 100
    mass_conversion: list = field(default_factory=lambda: [1, 1, 1, 1, 1, 1, 1]) #test value, to be overwritten
    consumption_rate: float = 1.0 + 5.0 + 1.1

#guao = Commodities()
#print(type(guao))


# ISRUConfig is also a dataclass because it is a compact bundle of parameters
# that changes between scenario runs but has no solver behavior of its own.
@dataclass
class ISRUConfig:
    enabled: bool = True
    active_nodes: tuple = (3,)
    max_mass: float = 10000.0
    n_segments: int = 100
    days_per_year: float = 365.0
    packaged_name: str = "packaged_isru"
    active_name: str = "active_isru"




@dataclass
class VehicleData:
    """Defaults match the active payload-sharing test case in the notebook."""
    number_vehicle_types: int = 2
    vehicle_type_names: list = field(default_factory=lambda: ["Vehicle_0", "Vehicle_1"])
    structure_mass: np.ndarray = field(default_factory=lambda: np.array([2500, 30]))
    isp: np.ndarray = field(default_factory=lambda: np.array([900, 200]))
    payload_cap: np.ndarray = field(default_factory=lambda: np.array([10000, 75]))
    propellant_cap: np.ndarray = field(default_factory=lambda: np.array([4000, 17000]))
    carriable: list = field(default_factory=lambda: [True, True])
    sc_vtype: str = GRB.INTEGER
    