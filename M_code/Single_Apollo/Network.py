import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm

#For the single apollo mission the following network is used
#4 nodes: Pacific Ocean, Low Earth Orbit, Low Lunar Orbit

nodes = 4 #[ocean, LEO, LLO, LS]
#what nodes are connected [[2,3,4][1,3,4][1,2,4,][1,2,3]] to each other
nodeconnect = [[1],[0,2],[1,3],[2]]
node_travel = [[1],[1,3],[3,1],[1]] #travel time between nodes, wrt nodeconnect
node_deltav = [[0],[0, 4.04],[4.04, 1.87],[1.87]] #deltav between nodes km/s, wrt nodeconnect

# The network also has constraints that require you to end hte mission in 11 days
#so we can assume the max timeframe is 12 days to see  if we can optimize down


timesteps = 13  # 0 to 12

# with a timewindow that is always open
Freewindow = True

#the model has ready made SC
optimizeSC = False

#list of SC data
#[Name, Propellant capacity kg,Isp s, Payload capacity kg, structure mass kg]
#that is the order of data per SC
SC = [['V1',452045,421,0,38415],['V2',107725,421,0,12014],['V3',0,0,524,4841],['V4',18413,314,60,6053],['V5',8804,311,500,2770],['V6',2358,311,250,1719]]
