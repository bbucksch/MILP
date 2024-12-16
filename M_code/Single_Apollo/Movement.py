import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm


#this is the constraint file for the single apollo mission test case
#it contains the info to make matrices for the constraints

# commodities continuous
comodCONT = ['Propellant','Equipment','Samples']
# commodities integer
comodINT = ['Crew','Crew Return']

#Demands
#this is a list of demand, per commodity, per node, per time [d,c,n,t]
#demands are negative, supply is positive
#nodes according to model: 0earth,1LEO,2LLO,3LS

# for now we are modelling people and thats it
#using a large number to approximate infinite supply
DEM = [[-2,'Crew',3,5],[-1,'Crew',2,4],[2,'Crew Return',3,6],[1,'Crew Return',2,7],[-3,'Crew Return',0,11],[1000,'Crew',1,0]]
