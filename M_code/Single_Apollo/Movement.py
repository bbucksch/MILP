import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm


#this is the constraint file for the single apollo mission test case
#it contains the info to make matrices for the constraints
#Continuous commodities are directly displayed in mass
#integer commodities have an associated mass per unit
#the first commodity is ALWAYS propellant, as it has a separate storage compared to the payload

# commodities continuous
comodCONT = ['Propellant','Equipment','Samples','Food']
# commodities integer
comodINT = ['Crew','Crew Return']
comodINTmpu = [100,100] #mass per unit in kg






#Demands
#this is a list of demand, per commodity, per node, per time [d,c,n,t]
#demands are negative, supply is positive
#nodes according to model: 0earth,1LEO,2LLO,3LS

# for now we are modelling people and thats it
#using a large number to approximate infinite supply
DEM = [[-2,'Crew',3,5],[-1,'Crew',2,4],[2,'Crew Return',3,6],[1,'Crew Return',2,7],[-3,'Crew Return',0,11],[1000,'Crew',1,0]]


#Arc consumption
# Automatically the model takes into account the mass decrease of propellant based on the deltav from the network model 
#and the total mass of the spacecraft + prop + payload


#Flow arc updates matrix
#how do different components change per arc
#The matrix values are all based on time
# so value change of A per unit of B per time of arc C
#propellant mass decrease is automatically taken into account
#so only the other mass changes are required
#(for arcs of 0-0 earth to earth, 0 costs are logged automatically)

#Row of matrix: Commodity affected A, column is affecting commodity B per 1 unit of time
#propellant also has the separate propellant usage scheme that it is affected by
# commodities may degrade over time or be used up as a function of themselves so each 
#For this problem the matrix columns are:
#  Propellant, Equipment, Samples, Food, Crew, Crew return
#same as listed
#values are in kg per unit per timestep
UpMat = [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,-5,-5],[0,0,0,0,0,0],[0,0,0,0,0,0]]

#other option is to do a large matrix and include all spacecraft factors as well 
#any isru usage is based on LOX kerosene with 71.91% oxygen, meaning that if an 
# Isru produces x amount of oxygen
#it will be treated as 0.7191x fuel produced ()
