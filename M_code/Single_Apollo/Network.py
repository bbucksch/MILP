import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm

#For the single apollo mission the following network is used
#4 nodes: Pacific Ocean, Low Earth Orbit, Low Lunar Orbit

nodes = 4
nodetravel = [1,3,1] #travel time between nodes
node_deltav = [0,4.04,1.87] #deltav between nodes km/s

# The network also has constraints that require you to end hte mission in 11 days
#so we can assume the max timeframe is 12 days to see  if we can optimize down


timesteps = 13  # 0 to 12

# with a timewindow that is always open
Freewindow = True

#the model has ready made SC
optimizeSC = False

#list of SC data
#Propellant capacity,Isp, Payload capacity, structure mass
SC = [[],[],[],[]]
