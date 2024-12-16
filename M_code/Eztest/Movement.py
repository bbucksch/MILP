import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm


#this is the constraint file for the single apollo mission test case
#it contains the info to make matrices for the constraints

# commodities continuous
comodCONT = ['Propellant','rocks']
# commodities integer
comodINT = ['crew']

#Demands