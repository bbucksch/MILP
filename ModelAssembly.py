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
        
        if Netdata == "SingleAP":
            import Single_Apollo.Network as Netdata
            import Single_Apollo.Constraints as Constdata
        



        #Create new model
        SpaceMod = gp.Model("Time-expanded GMCNF")

        #Create variables
        Arcmaker.MakeArcs(SpaceMod,Netdata.nodes,Netdata.nodetravel)
        
    
    except AttributeError:
        print("Encountered an attribute error")

    return





if __name__ == "__main__":
    main()