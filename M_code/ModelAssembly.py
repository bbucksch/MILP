import gurobipy as gp
from gurobipy import GRB
import numpy as np
from tqdm import tqdm
import Arcmaker
import Constraints 





def main():
    try:
        Netdataname = input("What model will you be optimizing? ")
        print(Netdataname)
        print(type(Netdataname))
        
        if Netdataname == "SingleAP":
            import Single_Apollo.Network as Netdata
            import Single_Apollo.Movement as DemandData

        elif Netdataname == "test1":
            import Eztest.Network as Netdata
            import Eztest.Movement as DemandData
        



        #Create new model
        SpaceMod = gp.Model("Time-expanded GMCNF")
        variables = {}
        print(len(Netdata.SC))
       

        #Create variables 1 per arc per vehicle, per commodity +1 per vehicle

        
        Arcmaker.MakeArcs(SpaceMod,Netdata.nodeconnect,Netdata.node_travel, Netdata.timesteps,Netdata.SC,DemandData.comodCONT,DemandData.comodINT,variables)
        print('washappeningggg')
        print(len(variables))

        #Constraint 2 +3 massbalance for all variables
        Constraints.Const2n3(SpaceMod,variables,Netdata.nodes,Netdata.timesteps,DemandData.comodCONT,DemandData.comodINT,DemandData.DEM,Netdata.SC)
        
        print('mass balance complete')
        #Constraint 4
        Constraints.Const4(SpaceMod,variables,DemandData,Netdata.node_deltav,Netdata.SC)


        if Netdata.optimizeSC == True:
            #add the sc optimizer
            print('Vo')
    
    except AttributeError:
        print("Encountered an attribute error")

    return





if __name__ == "__main__":
    main()