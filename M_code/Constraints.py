import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm


def Const2n3(model,variables,nodes, Maxtimesteps, ComodCONT,ComodINT, demand, vehicles):

    #extract keylist
    #extract keys with Outflow
    #use the other values to dupe the keys
    #our format matches the ending inflow times to the starting outflow times
    #per node per time per commodity add them (all vehicles)
    
    keylist =list(variables.keys())
    commlist = ComodCONT+ComodINT

    Outflow =[x for x in keylist if 'Flow Out' in x]
    Inflow = [x for x in keylist if 'Flow In' in x]

    Dmat = np.zeros((len(commlist),Maxtimesteps,nodes))

    for x in demand:
        comm,node,time = commlist.index(x[1]),x[2],x[3]
        Dmat[comm][time][node] = x[0]

    print(Dmat[-2])
    print(Dmat[-2][0][1])


        


    for c in commlist:
        for t in range(Maxtimesteps):
            for n in range(nodes):
                Outkeys = [x for x in Outflow if 'Commodity '+c  in x and 'Starttime '+str(t) in x and 'Startnode '+str(n) in x]
                Inkeys = [x for x in Inflow if 'Commodity '+c  in x and 'Endtime '+str(t) in x and 'Startnode '+str(n) in x]
                OutVar = [variables[x] for x in Outkeys]
                InVar = [variables[x] for x in Inkeys]
                c1 = commlist.index(c)
                model.addConstr(sum(OutVar) - sum(InVar) <= Dmat[c1][t][n])


    #for spacecraft do the same but the first time step has infinite supply
    #OR technically we do not care as long as conservation occurs, so no constraitns on start or end flows are required
    # leaving spacecraft stranded should be fine
    #later constraints about cost of holdover vs movement arcs will leave spacecraft where they , 

    #vmat = we use a supply form the start point
    #no vmat = no supply

    #Vmat = np.zeros((len(vehicles),Maxtimesteps,nodes))

    #for x in range(len(vehicles)):
    #    Vmat[x][0][1] = 1000

    Vname = [element[0] for element in vehicles]

    # if vmat is ended up used, vcount will also be used
    for vcount,v in enumerate(Vname):
        for t in range(Maxtimesteps-2):
            for n in range(nodes):
                Outkeys = [x for x in Outflow if 'Shipvar'  in x and 'Starttime '+str(t+1) in x and 'Startnode '+str(n) in x and 'Veh. '+v in x]
                Inkeys = [x for x in Inflow if 'Shipvar'  in x and 'Endtime '+str(t+1) in x and 'Startnode '+str(n) in x and 'Veh. '+v in x]
                OutVar = [variables[x] for x in Outkeys]
                InVar = [variables[x] for x in Inkeys]
                
                
                #model.addConstr(sum(OutVar) - sum(InVar) <= Vmat[vcount][t][n])
                model.addConstr(sum(OutVar) - sum(InVar) <= 0)


    model.update()
    return

def Const4(model,variables,updatematrix,deltav,Vehicles):
    #this constraint models the cost per arc of transportation, fuel cost, food or water eaten
    #basically the big cost maker
    #this information will rely on data form the problem
    #essentially, items will decrease in mass when travelling (food eaten, propellatn used)
    #except for ISRU oxygen if we get to it

    #these are values that update an arc based on the outflow values and matrix
    #propellant used based on delta v and mass is always accounted for
    # separate to this specific constraits can be added in the constraint matrix

    #holdover arcs: have 0 delta v so no propellant cost
    #but do have consumable use
    #only arc without consumable use is the earth holdover arc

    keylist =list(variables.keys())
    

    Outflow =[x for x in keylist if 'Flow Out' in x]
    #for x in Outflow:
    #    y = x.replace('Flow Out','Flow In', 1)
    #    vehx = float(x[1].replace('Veh. ',''))
    #    Comm = x[2].replace('Commodity ','')
    #    Startnx = float(x[4].replace('Startnode ',''))
    #    Endnx = float(x[5].replace('Endnode ',''))

    x = list(keylist[500])
    y = x
    y[0] = 'Flow In'
    
    vehx = x[1].replace('Veh. ','')
    Comm = x[2].replace('Commodity ','')
    Startnx = float(x[4].replace('Startnode ',''))
    Endnx = float(x[5].replace('Endnode ',''))
    print(y)
    print(vehx,Comm,Startnx,Endnx)
    vehdata = [element for element in Vehicles if vehx in element[0]]
    if Startnx == Endnx:
        HoldoverCon4()



    return


def HoldoverCon4():
    
    return
