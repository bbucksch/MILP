import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm

#this file contains the functions to create the arcs based on the model selected


def MakeArcs(model,connections, arctime, timesteps, vehicles,ComodCONT,ComodINT,variables):
    
    # Number of vehicles
    print('test')

    # Number of nodes i,j defined by connections and time per arc travel
    # Time Steps (days) total

    #number of vehicles = vehicles
    #number of start points = len nodeconnect
    #number of endpoints = len(nodeconnect[i])
    #commodities: continuous + integer
    #each type of spacecraft has a integer amount of copies that can be flown up
    #spacecraft are noted as commodity -1
    #we count both integer and continuos in the same number, just know how many of each there are
    #variables: vehicle, commodity index, starttime,startloc,endloc,endtime
    
    #all these variables are made twice: once for outflow once for inflow

    comlen= len(ComodCONT)+len(ComodINT)
    print(comlen)

    #Outflow
    for t in tqdm(range(timesteps)):

        for v in range(vehicles):
            for i in range(len(connections)):
                
                
                #holdover arcs spacecraft
                variables[1,v,-1,t,i,i, t+1] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+'holdover, '+ 'vehicle '+str(v)+'at timestep '+str(t))
                #regular arcs spacecraft
                for j in range(len(connections[i])): 
                    if t+arctime[i][j]<= timesteps:
                        variables[1,v,-1,t,i,j, t+arctime[i][j]] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+'holdover, '+ 'vehicle '+str(v)+'at timestep '+str(t))
                



                #commodities

                for c in range(comlen):

                    #holdover arcs: commodities
                    if c<len(ComodCONT):
                        variables[1,v,c,t,i,i, t+1] = model.addVar(vtype=GRB.CONTINUOUS, name='Arc '+str(i)+'holdover, commodity '+str(c)+ ' vehicle '+str(v)+'at timestep '+str(t))
                    else:
                        variables[1,v,c,t,i,i, t+1] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+'holdover, commodity '+str(c)+ ' vehicle '+str(v)+'at timestep '+str(t))
                        

                    for j in range(len(connections[i])):
                        

                        #regular arcs commodities
                        if t+arctime[i][j]<= timesteps:
                            if c<len(ComodCONT):
                                variables[1,v,c,t, i, connections[i][j], t+arctime[i][j]] = model.addVar(vtype=GRB.CONTINUOUS, name='Arc '+str(i)+' to '+str(j)+' commodity '+str(c)+' vehicle '+str(v)+'at timestep '+str(t))
                            else:
                                variables[1,v,c,t, i, connections[i][j], t+arctime[i][j]] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+' to '+str(j)+' commodity '+str(c)+' vehicle '+str(v)+'at timestep '+str(t))
        #print(variables)
        #break
        #print(len(variables))


    #Inflow
    for t in tqdm(range(timesteps)):

        for v in range(vehicles):
            for i in range(len(connections)):
                
                
                #holdover arcs spacecraft
                variables[-1,v,-1,t,i,i, t+1] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+'holdover, '+ 'vehicle '+str(v)+'at timestep '+str(t))
                #regular arcs spacecraft
                for j in range(len(connections[i])): 
                    if t+arctime[i][j]<= timesteps:
                        variables[-1,v,-1,t,i,j, t+arctime[i][j]] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+'holdover, '+ 'vehicle '+str(v)+'at timestep '+str(t))
                



                #commodities

                for c in range(comlen):

                    #holdover arcs: commodities
                    if c<len(ComodCONT):
                        variables[-1,v,c,t,i,i, t+1] = model.addVar(vtype=GRB.CONTINUOUS, name='Arc '+str(i)+'holdover, commodity '+str(c)+ ' vehicle '+str(v)+'at timestep '+str(t))
                    else:
                        variables[-1,v,c,t,i,i, t+1] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+'holdover, commodity '+str(c)+ ' vehicle '+str(v)+'at timestep '+str(t))
                        

                    for j in range(len(connections[i])):
                        

                        #regular arcs commodities
                        if t+arctime[i][j]<= timesteps:
                            if c<len(ComodCONT):
                                variables[-1,v,c,t, i, connections[i][j], t+arctime[i][j]] = model.addVar(vtype=GRB.CONTINUOUS, name='Arc '+str(i)+' to '+str(j)+' commodity '+str(c)+' vehicle '+str(v)+'at timestep '+str(t))
                            else:
                                variables[-1,v,c,t, i, connections[i][j], t+arctime[i][j]] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+' to '+str(j)+' commodity '+str(c)+' vehicle '+str(v)+'at timestep '+str(t))
    


    return