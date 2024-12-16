import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm

#this file contains the functions to create the arcs based on the model selected



def MakeArcs(model,connections, arctime, timesteps, vehicles,ComodCONT,ComodINT,variables):
    
    # Number of vehicles = len(vehicles)
    print('test')

    # Number of nodes i,j defined by connections and time per arc travel
    # Time Steps (days) total

    #number of vehicles = vehicles
    #number of start points = len nodeconnect
    #number of endpoints per startpoint = len(nodeconnect[i])
    #commodities: continuous + integer
    #each type of spacecraft has a integer amount of copies that can be flown up
    #spacecraft are noted as commodity -1
    #we count both integer and continuos in the same number, just know how many of each there are
    #variables: outflow/inflow, vehicle, commodity index, starttime,startloc,endloc,endtime
    
    #all these variables are made twice: once for outflow once for inflow

    comlen= ComodCONT + ComodINT
    print(comlen)
    Vname = [element[0] for element in vehicles]

    #Outflow = Out, Inflow = In
    flow = ['Out','In']


    for f in flow:
        for t in tqdm(range(timesteps-1)): #range is timestpes -1 so no arcs leaving the network exist

            for v in Vname:
                for i in range(len(connections)):
                    
                    
                    #holdover arcs spacecraft
                    variables['Flow '+f,'Veh. '+v,'Shipvar','Starttime '+str(t),'Startnode '+str(i),'Endnode '+str(i),'Endtime '+ str(t+1)] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+'holdover, '+ 'vehicle '+str(v)+'at timestep '+str(t))
                    #regular arcs spacecraft
                    for j in range(len(connections[i])): 
                        if t+arctime[i][j]<= timesteps:
                            variables['Flow '+f,'Veh. '+v,'Shipvar','Starttime '+str(t),'Startnode '+str(i),'Endnode '+str(j),'Endtime '+ str(t+arctime[i][j])] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+'holdover, '+ 'vehicle '+str(v)+'at timestep '+str(t))
                    



                    #commodities
                    
                    for count,c in enumerate(comlen):
                        
                        #holdover arcs: commodities
                        if c in ComodCONT:
                            variables['Flow '+f,'Veh. '+v,'Commodity '+str(c),'Starttime '+str(t),'Startnode '+str(i),'Endnode '+str(i),'Endtime '+ str(t+1)] = model.addVar(vtype=GRB.CONTINUOUS, name='Arc '+str(i)+'holdover, commodity '+str(c)+ ' vehicle '+str(v)+'at timestep '+str(t))
                        else:
                            variables['Flow '+f,'Veh. '+v,'Commodity '+str(c),'Starttime '+str(t),'Startnode '+str(i),'Endnode '+str(i),'Endtime '+ str(t+1)] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+'holdover, commodity '+str(c)+ ' vehicle '+str(v)+'at timestep '+str(t))
                            

                        for j in range(len(connections[i])):
                            

                            #regular arcs commodities
                            if t+arctime[i][j]<= timesteps:
                                if c in ComodCONT:
                                    variables['Flow '+f,'Veh. '+v,'Commodity '+str(c),'Starttime '+str(t),'Startnode '+str(i),'Endnode '+str(connections[i][j]),'Endtime '+ str(t+arctime[i][j])] = model.addVar(vtype=GRB.CONTINUOUS, name='Arc '+str(i)+' to '+str(j)+' commodity '+str(c)+' vehicle '+str(v)+'at timestep '+str(t))
                                else:
                                    variables['Flow '+f,'Veh. '+v,'Commodity '+str(c),'Starttime '+str(t),'Startnode '+str(i),'Endnode '+str(connections[i][j]),'Endtime '+ str(t+arctime[i][j])] = model.addVar(vtype=GRB.INTEGER, name='Arc '+str(i)+' to '+str(j)+' commodity '+str(c)+' vehicle '+str(v)+'at timestep '+str(t))
            
    model.update()
   


    return



