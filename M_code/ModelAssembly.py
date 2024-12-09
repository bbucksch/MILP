import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm
import Arcmaker





def main():
    try:
        Netdataname = input("What model will you be optimizing? ")
        print(Netdataname)
        print(type(Netdataname))
        
        if Netdataname == "SingleAP":
            import Single_Apollo.Network as Netdata
            import Single_Apollo.Movement as DemandData
        



        #Create new model
        SpaceMod = gp.Model("Time-expanded GMCNF")
        variables = {}
        print(len(Netdata.SC))
       

        #Create variables 1 per arc per vehicle

        
        Arcmaker.MakeArcs(SpaceMod,Netdata.nodeconnect,Netdata.node_travel, Netdata.timesteps,len(Netdata.SC),DemandData.comodCONT,DemandData.comodINT,variables)
        print('washappeningggg')
        print(len(variables))


        if Netdata.optimizeSC == True:
            #add the sc optimizer
            print('Vo')
    
    except AttributeError:
        print("Encountered an attribute error")

    return





if __name__ == "__main__":
    main()