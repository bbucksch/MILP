import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm

#4 nodes: Pacific Ocean, Low Earth Orbit, Low Lunar Orbit

nodes = 4 #[ocean, LEO, LLO, LS]
#what nodes are connected [[2,3,4][1,3,4][1,2,4,][1,2,3]] to each other
nodeconnect = [[1],[0,2],[1,3],[2]]
node_travel = [[1],[1,3],[3,1],[1]] #travel time between nodes, wrt nodeconnect
node_deltav = [[0],[0, 4.04],[4.04, 1.87],[1.87]] #deltav between nodes km/s, wrt nodeconnect

# The network also has constraints that require you to end hte mission in 11 days
#so we can assume the max timeframe is 12 days to see  if we can optimize down


timesteps = 5

# with a timewindow that is always open
Freewindow = True

#the model has ready made SC
optimizeSC = False

#list of SC data
#Name,Prop cap, payload cap, mass (assume same isp)
SC = [['V1',100,20,15],['V2',50,12,25],['V3',75,75,20],['V4',88,100,100]]

pros = {}

pros[-1,'a','b'] = 17
pros[-1,'a','c'] = 18
pros[1,'a','b'] = 19
pros[1,'a','c'] = 'a'
pros[1,'b','c'] = 'fd'
pros[-1,'b','c'] = 'ff'

print(len(pros))


keylist =list(pros.keys())

newkeys =[x for x in keylist if -1 in x]
print(newkeys)
print(type(newkeys[1]))

commodity = [element[1] for element in newkeys]

print(commodity)

tet = ['a','b','c']
xed = ['a','c']
for x in xed:
    if x in tet:
        print('yah')


#subset_dict = dict(filter(lambda item: item[0] in keys_to_include, original_dict.items()))
#print(subset_dict)