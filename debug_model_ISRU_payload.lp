\ Model MissionPlanning+ISRU
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xde66c6f63eb3d5db
Minimize
  100 Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew
   + 100 Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_return
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityconsumables
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityequipment
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditysamples
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   + 100 Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypackaged_isru
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityactive_isru
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   + 100 Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew
   + 100 Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_return
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityconsumables
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityequipment
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditysamples
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   + 100 Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypackaged_isru
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityactive_isru
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   + 17996 sc_commodity_outflow_0,0,1,Tstart0,Tend1
   + 7342 sc_commodity_outflow_1,0,1,Tstart0,Tend1
   + 17996 SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   + 7342 SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   + 17996 SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   + 7342 SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
Subject To
 mass_balance_x_node0_time0_comm0:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew <= 1e+15
 mass_balance_x_node0_time0_comm1:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_return
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_return
   <= 0
 mass_balance_x_node0_time0_comm2:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityconsumables
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityconsumables
   <= 1e+15
 mass_balance_x_node0_time0_comm3:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityequipment
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityequipment
   <= 1e+15
 mass_balance_x_node0_time0_comm4:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditysamples
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditysamples <= 0
 mass_balance_x_node0_time0_comm5:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   <= 1e+15
 mass_balance_x_node0_time0_comm6:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim
   <= 0
 mass_balance_x_node0_time0_comm7:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypackaged_isru
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypackaged_isru
   <= 1e+15
 mass_balance_x_node0_time0_comm8:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityactive_isru
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityactive_isru
   <= 0
 mass_balance_x_node0_time0_comm9:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   <= 1e+15
 mass_balance_x_node0_time0_comm10:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   <= 1e+15
 SC_mass_balance_x_node0_time0_vehicle0:
   sc_commodity_outflow_0,0,1,Tstart0,Tend1
   + SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   <= 2
 SC_mass_balance_x_node0_time0_vehicle1:
   sc_commodity_outflow_1,0,1,Tstart0,Tend1
   + SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   <= 2
 mass_balance_x_node1_time1_comm0:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew <= 0
 mass_balance_x_node1_time1_comm1:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_return
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_return
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew_return
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew_return
   <= 0
 mass_balance_x_node1_time1_comm2:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityconsumables
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityconsumables
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityconsumables
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityconsumables
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commodityconsumables
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commodityconsumables
   <= 0
 mass_balance_x_node1_time1_comm3:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityequipment
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityequipment
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityequipment
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityequipment
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commodityequipment
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commodityequipment <= 0
 mass_balance_x_node1_time1_comm4:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditysamples
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditysamples
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditysamples
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditysamples
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditysamples
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditysamples <= 0
 mass_balance_x_node1_time1_comm5:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   <= 0
 mass_balance_x_node1_time1_comm6:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim
   <= 0
 mass_balance_x_node1_time1_comm7:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypackaged_isru
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypackaged_isru
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypackaged_isru
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypackaged_isru
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypackaged_isru
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypackaged_isru
   <= 0
 mass_balance_x_node1_time1_comm8:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityactive_isru
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityactive_isru
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commodityactive_isru
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commodityactive_isru
   <= 0
 mass_balance_x_node1_time1_comm9:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   <= 0
 mass_balance_x_node1_time1_comm10:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   <= 0
 SC_mass_balance_x_node1_time1_vehicle0:
   sc_commodity_outflow_0,1,1,Tstart1,Tend12
   + sc_commodity_outflow_0,1,2,Tstart1,Tend4
   - sc_commodity_inflow_0,0,1,Tstart0,Tend1
   + SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node1_time1_vehicle1:
   sc_commodity_outflow_1,1,1,Tstart1,Tend12
   + sc_commodity_outflow_1,1,2,Tstart1,Tend4
   - sc_commodity_inflow_1,0,1,Tstart0,Tend1
   + SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   <= 0
 mass_balance_x_node2_time4_comm0:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew <= 0
 mass_balance_x_node2_time4_comm1:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_return
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_return
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew_return
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew_return
   <= 0
 mass_balance_x_node2_time4_comm2:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityconsumables
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityconsumables
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityconsumables
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityconsumables
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commodityconsumables
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commodityconsumables
   <= 0
 mass_balance_x_node2_time4_comm3:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityequipment
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityequipment
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityequipment
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityequipment
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commodityequipment
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commodityequipment <= 0
 mass_balance_x_node2_time4_comm4:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditysamples
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditysamples
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditysamples
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditysamples
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditysamples
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditysamples <= 0
 mass_balance_x_node2_time4_comm5:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   <= 0
 mass_balance_x_node2_time4_comm6:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
   <= 0
 mass_balance_x_node2_time4_comm7:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypackaged_isru
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypackaged_isru
   <= 0
 mass_balance_x_node2_time4_comm8:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityactive_isru
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityactive_isru
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commodityactive_isru
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commodityactive_isru
   <= 0
 mass_balance_x_node2_time4_comm9:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   <= 0
 mass_balance_x_node2_time4_comm10:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   <= 0
 SC_mass_balance_x_node2_time4_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart4,Tend9
   + sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - sc_commodity_inflow_0,1,2,Tstart1,Tend4
   + SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node2_time4_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart4,Tend9
   + sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - sc_commodity_inflow_1,1,2,Tstart1,Tend4
   + SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   <= 0
 Active+packaged_mass_balance_x_node3_time5:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityactive_isru
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityactive_isru
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityactive_isru
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityactive_isru
   <= 0
 mass_balance_x_node3_time5_comm0:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew <= -12
 mass_balance_x_node3_time5_comm1:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_return
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_return
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew_return
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew_return
   <= 0
 mass_balance_x_node3_time5_comm2:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityconsumables
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityconsumables
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityconsumables
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityconsumables
   <= 0
 mass_balance_x_node3_time5_comm3:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityequipment
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityequipment
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityequipment
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityequipment
   <= -4200
 mass_balance_x_node3_time5_comm4:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditysamples
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditysamples
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditysamples
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditysamples
   <= 1e+15
 mass_balance_x_node3_time5_comm5:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   <= 0
 mass_balance_x_node3_time5_comm6:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
   <= 12
 mass_balance_x_node3_time5_comm7:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   <= 0
 mass_balance_x_node3_time5_comm8:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityactive_isru
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityactive_isru
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityactive_isru
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityactive_isru
   <= 0
 mass_balance_x_node3_time5_comm9:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   <= 0
 mass_balance_x_node3_time5_comm10:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   <= 0
 SC_mass_balance_x_node3_time5_vehicle0:
   sc_commodity_outflow_0,3,3,Tstart5,Tend8
   - sc_commodity_inflow_0,2,3,Tstart4,Tend5
   + SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node3_time5_vehicle1:
   sc_commodity_outflow_1,3,3,Tstart5,Tend8
   - sc_commodity_inflow_1,2,3,Tstart4,Tend5
   + SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   <= 0
 Active+packaged_mass_balance_x_node3_time8:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityactive_isru
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityactive_isru
   <= 0
 mass_balance_x_node3_time8_comm0:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew <= 0
 mass_balance_x_node3_time8_comm1:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew_return
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew_return
   <= 12
 mass_balance_x_node3_time8_comm2:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityconsumables
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityconsumables
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityconsumables
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityconsumables
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityconsumables
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityconsumables
   <= 0
 mass_balance_x_node3_time8_comm3:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityequipment
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityequipment
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityequipment
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityequipment
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityequipment
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityequipment <= 0
 mass_balance_x_node3_time8_comm4:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditysamples
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditysamples
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditysamples
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditysamples
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditysamples
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditysamples
   <= 1e+15
 mass_balance_x_node3_time8_comm5:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   <= 0
 mass_balance_x_node3_time8_comm6:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim
   <= -12
 mass_balance_x_node3_time8_comm7:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   <= 0
 mass_balance_x_node3_time8_comm8:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityactive_isru
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityactive_isru
   <= 0
 mass_balance_x_node3_time8_comm9:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   <= 0
 mass_balance_x_node3_time8_comm10:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   <= 0
 SC_mass_balance_x_node3_time8_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart8,Tend9
   + sc_commodity_outflow_0,3,3,Tstart8,Tend13
   - sc_commodity_inflow_0,3,3,Tstart5,Tend8
   + SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node3_time8_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart8,Tend9
   + sc_commodity_outflow_1,3,3,Tstart8,Tend13
   - sc_commodity_inflow_1,3,3,Tstart5,Tend8
   + SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   <= 0
 mass_balance_x_node2_time9_comm0:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew <= 0
 mass_balance_x_node2_time9_comm1:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew_return
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew_return
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew_return
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew_return
   <= 0
 mass_balance_x_node2_time9_comm2:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityconsumables
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityconsumables
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityconsumables
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityconsumables
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commodityconsumables
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commodityconsumables
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commodityconsumables
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commodityconsumables
   <= 0
 mass_balance_x_node2_time9_comm3:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityequipment
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityequipment
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityequipment
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityequipment
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commodityequipment
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commodityequipment
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commodityequipment
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commodityequipment <= 0
 mass_balance_x_node2_time9_comm4:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditysamples
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditysamples
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditysamples
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditysamples
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditysamples
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditysamples
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditysamples
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditysamples <= 0
 mass_balance_x_node2_time9_comm5:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   <= 0
 mass_balance_x_node2_time9_comm6:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
   <= 0
 mass_balance_x_node2_time9_comm7:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypackaged_isru
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypackaged_isru
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypackaged_isru
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   <= 0
 mass_balance_x_node2_time9_comm8:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commodityactive_isru
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commodityactive_isru
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commodityactive_isru
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commodityactive_isru
   <= 0
 mass_balance_x_node2_time9_comm9:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   <= 0
 mass_balance_x_node2_time9_comm10:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   <= 0
 SC_mass_balance_x_node2_time9_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart9,Tend12
   + sc_commodity_outflow_0,2,2,Tstart9,Tend13
   - sc_commodity_inflow_0,2,2,Tstart4,Tend9
   - sc_commodity_inflow_0,3,2,Tstart8,Tend9
   + SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node2_time9_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart9,Tend12
   + sc_commodity_outflow_1,2,2,Tstart9,Tend13
   - sc_commodity_inflow_1,2,2,Tstart4,Tend9
   - sc_commodity_inflow_1,3,2,Tstart8,Tend9
   + SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   <= 0
 mass_balance_x_node1_time12_comm0:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew <= 0
 mass_balance_x_node1_time12_comm1:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew_return
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew_return
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
   <= 0
 mass_balance_x_node1_time12_comm2:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityconsumables
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityconsumables
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityconsumables
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityconsumables
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commodityconsumables
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commodityconsumables
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commodityconsumables
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commodityconsumables
   <= 0
 mass_balance_x_node1_time12_comm3:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityequipment
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityequipment
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityequipment
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityequipment
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commodityequipment
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commodityequipment
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commodityequipment
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commodityequipment <= 0
 mass_balance_x_node1_time12_comm4:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditysamples
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditysamples
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditysamples
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditysamples
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditysamples
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditysamples
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditysamples
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditysamples <= 0
 mass_balance_x_node1_time12_comm5:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   <= 0
 mass_balance_x_node1_time12_comm6:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   <= 0
 mass_balance_x_node1_time12_comm7:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypackaged_isru
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypackaged_isru
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypackaged_isru
   <= 0
 mass_balance_x_node1_time12_comm8:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commodityactive_isru
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commodityactive_isru
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commodityactive_isru
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commodityactive_isru
   <= 0
 mass_balance_x_node1_time12_comm9:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   <= 0
 mass_balance_x_node1_time12_comm10:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   <= 0
 SC_mass_balance_x_node1_time12_vehicle0:
   sc_commodity_outflow_0,1,0,Tstart12,Tend13
   + sc_commodity_outflow_0,1,1,Tstart12,Tend13
   - sc_commodity_inflow_0,1,1,Tstart1,Tend12
   - sc_commodity_inflow_0,2,1,Tstart9,Tend12
   + SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node1_time12_vehicle1:
   sc_commodity_outflow_1,1,0,Tstart12,Tend13
   + sc_commodity_outflow_1,1,1,Tstart12,Tend13
   - sc_commodity_inflow_1,1,1,Tstart1,Tend12
   - sc_commodity_inflow_1,2,1,Tstart9,Tend12
   + SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   + SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   <= 0
 mass_balance_x_node0_time13_comm0:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew <= 1e+15
 mass_balance_x_node0_time13_comm1:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
   <= -12
 mass_balance_x_node0_time13_comm2:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commodityconsumables
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commodityconsumables
   <= 1e+15
 mass_balance_x_node0_time13_comm3:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commodityequipment
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commodityequipment
   <= 1e+15
 mass_balance_x_node0_time13_comm4:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditysamples
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditysamples
   <= -500
 mass_balance_x_node0_time13_comm5:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   <= 1e+15
 mass_balance_x_node0_time13_comm6:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
   <= 0
 mass_balance_x_node0_time13_comm7:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypackaged_isru
   <= 1e+15
 mass_balance_x_node0_time13_comm8:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commodityactive_isru
   <= 0
 mass_balance_x_node0_time13_comm9:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   <= 1e+15
 mass_balance_x_node0_time13_comm10:
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   <= 1e+15
 SC_mass_balance_x_node0_time13_vehicle0:
   - sc_commodity_inflow_0,1,0,Tstart12,Tend13
   - SC_payload_commodity_inflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node0_time13_vehicle1:
   - sc_commodity_inflow_1,1,0,Tstart12,Tend13
   - SC_payload_commodity_inflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 mass_balance_x_node1_time13_comm0:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew <= 0
 mass_balance_x_node1_time13_comm1:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
   <= 0
 mass_balance_x_node1_time13_comm2:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commodityconsumables
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commodityconsumables
   <= 0
 mass_balance_x_node1_time13_comm3:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commodityequipment
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commodityequipment
   <= 0
 mass_balance_x_node1_time13_comm4:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditysamples
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditysamples <= 0
 mass_balance_x_node1_time13_comm5:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   <= 0
 mass_balance_x_node1_time13_comm6:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
   <= 0
 mass_balance_x_node1_time13_comm7:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypackaged_isru
   <= 0
 mass_balance_x_node1_time13_comm8:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commodityactive_isru
   <= 0
 mass_balance_x_node1_time13_comm9:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   <= 0
 mass_balance_x_node1_time13_comm10:
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   <= 0
 SC_mass_balance_x_node1_time13_vehicle0:
   - sc_commodity_inflow_0,1,1,Tstart12,Tend13
   - SC_payload_commodity_inflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node1_time13_vehicle1:
   - sc_commodity_inflow_1,1,1,Tstart12,Tend13
   - SC_payload_commodity_inflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 mass_balance_x_node2_time13_comm0:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew <= 0
 mass_balance_x_node2_time13_comm1:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew_return
   <= 0
 mass_balance_x_node2_time13_comm2:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commodityconsumables
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commodityconsumables
   <= 0
 mass_balance_x_node2_time13_comm3:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commodityequipment
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commodityequipment <= 0
 mass_balance_x_node2_time13_comm4:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditysamples
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditysamples <= 0
 mass_balance_x_node2_time13_comm5:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   <= 0
 mass_balance_x_node2_time13_comm6:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
   <= 0
 mass_balance_x_node2_time13_comm7:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypackaged_isru
   <= 0
 mass_balance_x_node2_time13_comm8:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commodityactive_isru
   <= 0
 mass_balance_x_node2_time13_comm9:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   <= 0
 mass_balance_x_node2_time13_comm10:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   <= 0
 SC_mass_balance_x_node2_time13_vehicle0:
   - sc_commodity_inflow_0,2,2,Tstart9,Tend13
   - SC_payload_commodity_inflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node2_time13_vehicle1:
   - sc_commodity_inflow_1,2,2,Tstart9,Tend13
   - SC_payload_commodity_inflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   <= 0
 Active+packaged_mass_balance_x_node3_time13:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   <= 0
 mass_balance_x_node3_time13_comm0:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew <= 0
 mass_balance_x_node3_time13_comm1:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew_return
   <= 0
 mass_balance_x_node3_time13_comm2:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityconsumables
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityconsumables
   <= 0
 mass_balance_x_node3_time13_comm3:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityequipment
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityequipment <= 0
 mass_balance_x_node3_time13_comm4:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditysamples
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditysamples
   <= 1e+15
 mass_balance_x_node3_time13_comm5:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   <= 0
 mass_balance_x_node3_time13_comm6:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
   <= 0
 mass_balance_x_node3_time13_comm7:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   <= 0
 mass_balance_x_node3_time13_comm8:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   <= 0
 mass_balance_x_node3_time13_comm9:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   <= 0
 mass_balance_x_node3_time13_comm10:
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   <= 0
 SC_mass_balance_x_node3_time13_vehicle0:
   - sc_commodity_inflow_0,3,3,Tstart8,Tend13
   - SC_payload_commodity_inflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   <= 0
 SC_mass_balance_x_node3_time13_vehicle1:
   - sc_commodity_inflow_1,3,3,Tstart8,Tend13
   - SC_payload_commodity_inflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   <= 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_return
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew_return = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityconsumables
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commodityconsumables = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityequipment
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commodityequipment = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditysamples
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditysamples = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity5:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypackaged_isru
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityactive_isru
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commodityactive_isru = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity9:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity10:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity11:
   sc_commodity_outflow_0,0,1,Tstart0,Tend1
   - sc_commodity_inflow_0,0,1,Tstart0,Tend1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start0_end1_time0:
   - Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,0,1,Tstart0,Tend1 >= 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_return
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew_return = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityconsumables
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commodityconsumables = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityequipment
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commodityequipment = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditysamples
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditysamples = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity5:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypackaged_isru
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityactive_isru
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commodityactive_isru = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity9:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity10:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity11:
   sc_commodity_outflow_1,0,1,Tstart0,Tend1
   - sc_commodity_inflow_1,0,1,Tstart0,Tend1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start0_end1_time0:
   - Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,0,1,Tstart0,Tend1 >= 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity2:
   - 8.565 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew
   - 8.565 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityconsumables
   - 8.565 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityequipment
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commodityequipment = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditysamples
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditysamples = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity5:
   0.99984 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity9:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity10:
   - 2.7397260273972606e-04 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,1,0,Tstart12,Tend13
   - 179.96 SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity11:
   sc_commodity_outflow_0,1,0,Tstart12,Tend13
   - sc_commodity_inflow_0,1,0,Tstart12,Tend13 = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start1_end0_time12:
   - Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,1,0,Tstart12,Tend13 >= 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity2:
   - 8.565 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew
   - 8.565 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityconsumables
   - 8.565 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityequipment
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commodityequipment = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditysamples
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditysamples = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity5:
   0.99984 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity9:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity10:
   - 2.7397260273972606e-04 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,1,0,Tstart12,Tend13
   - 179.96 SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity11:
   sc_commodity_outflow_1,1,0,Tstart12,Tend13
   - sc_commodity_inflow_1,1,0,Tstart12,Tend13 = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime12_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start1_end0_time12:
   - Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,1,0,Tstart12,Tend13 >= 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity2:
   - 8.565 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew
   - 8.565 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityconsumables
   - 8.565 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityequipment
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commodityequipment = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditysamples
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditysamples = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity5:
   0.99984 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity9:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity10:
   - 2.7397260273972606e-04 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,1,1,Tstart12,Tend13
   - 179.96 SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity11:
   sc_commodity_outflow_0,1,1,Tstart12,Tend13
   - sc_commodity_inflow_0,1,1,Tstart12,Tend13 = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start1_end1_time12:
   - Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,1,1,Tstart12,Tend13 >= 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity2:
   - 8.565 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew
   - 8.565 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityconsumables
   - 8.565 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityequipment
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commodityequipment = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditysamples
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditysamples = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity5:
   0.99984 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity9:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity10:
   - 2.7397260273972606e-04 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,1,1,Tstart12,Tend13
   - 179.96 SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity11:
   sc_commodity_outflow_1,1,1,Tstart12,Tend13
   - sc_commodity_inflow_1,1,1,Tstart12,Tend13 = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime12_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start1_end1_time12:
   - Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,1,1,Tstart12,Tend13 >= 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_return
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity2:
   - 94.215 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew
   - 94.215 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityconsumables
   - 94.215 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityequipment
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commodityequipment = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditysamples
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditysamples = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity5:
   0.99984 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypackaged_isru
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityactive_isru
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity9:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity10:
   - 0.00301369863013699 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,1,1,Tstart1,Tend12
   - 179.96 SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity11:
   sc_commodity_outflow_0,1,1,Tstart1,Tend12
   - sc_commodity_inflow_0,1,1,Tstart1,Tend12 = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start1_end1_time1:
   - Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,1,1,Tstart1,Tend12 >= 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_return
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity2:
   - 94.215 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew
   - 94.215 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityconsumables
   - 94.215 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityequipment
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commodityequipment = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditysamples
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditysamples = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity5:
   0.99984 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypackaged_isru
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityactive_isru
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity9:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity10:
   - 0.00301369863013699 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,1,1,Tstart1,Tend12
   - 179.96 SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity11:
   sc_commodity_outflow_1,1,1,Tstart1,Tend12
   - sc_commodity_inflow_1,1,1,Tstart1,Tend12 = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start1_end1_time1:
   - Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,1,1,Tstart1,Tend12 >= 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_return
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew_return = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity2:
   - 25.695 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew
   - 25.695 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_return
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityconsumables
   - 25.695 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commodityconsumables = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityequipment
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commodityequipment = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditysamples
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditysamples = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity5:
   - 51.28330072855581 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew
   - 51.28330072855581 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_return
   - 0.512833007285558 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityconsumables
   - 0.512833007285558 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityequipment
   - 0.512833007285558 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditysamples
   + 0.4870069927144419 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - 51.28330072855581 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
   - 0.512833007285558 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypackaged_isru
   - 0.512833007285558 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityactive_isru
   - 0.512833007285558 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - 0.512833007285558 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - 9228.942799110904 sc_commodity_outflow_0,1,2,Tstart1,Tend4
   - 9228.942799110902 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 3765.219939490567 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypackaged_isru
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityactive_isru
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commodityactive_isru = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity9:
   - 20.0358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew
   - 20.0358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_return
   - 0.200358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityconsumables
   - 0.200358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityequipment
   - 0.200358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditysamples
   - 0.200358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - 20.0358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
   - 0.200358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypackaged_isru
   - 0.200358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityactive_isru
   + 0.7996414348469121 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - 0.200358565153088 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - 3605.652738494971 sc_commodity_outflow_0,1,2,Tstart1,Tend4
   - 3605.652738494971 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 1471.032585353972 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity10:
   - 8.2191780821917813e-04 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityactive_isru
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,1,2,Tstart1,Tend4
   - 179.96 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity11:
   sc_commodity_outflow_0,1,2,Tstart1,Tend4
   - sc_commodity_inflow_0,1,2,Tstart1,Tend4 = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start1_end2_time1:
   - Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,1,2,Tstart1,Tend4 >= 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_return
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew_return = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity2:
   - 25.695 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew
   - 25.695 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_return
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityconsumables
   - 25.695 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commodityconsumables = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityequipment
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commodityequipment = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditysamples
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditysamples = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity5:
   - 51.28330072855581 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew
   - 51.28330072855581 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_return
   - 0.512833007285558 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityconsumables
   - 0.512833007285558 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityequipment
   - 0.512833007285558 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditysamples
   + 0.4870069927144419 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - 51.28330072855581 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
   - 0.512833007285558 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypackaged_isru
   - 0.512833007285558 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityactive_isru
   - 0.512833007285558 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - 0.512833007285558 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - 3765.219939490567 sc_commodity_outflow_1,1,2,Tstart1,Tend4
   - 9228.942799110902 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 3765.219939490567 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypackaged_isru
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityactive_isru
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commodityactive_isru = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity9:
   - 20.0358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew
   - 20.0358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_return
   - 0.200358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityconsumables
   - 0.200358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityequipment
   - 0.200358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditysamples
   - 0.200358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - 20.0358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
   - 0.200358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypackaged_isru
   - 0.200358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityactive_isru
   + 0.7996414348469121 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - 0.200358565153088 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - 1471.032585353972 sc_commodity_outflow_1,1,2,Tstart1,Tend4
   - 3605.652738494971 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 1471.032585353972 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity10:
   - 8.2191780821917813e-04 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityactive_isru
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,1,2,Tstart1,Tend4
   - 179.96 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity11:
   sc_commodity_outflow_1,1,2,Tstart1,Tend4
   - sc_commodity_inflow_1,1,2,Tstart1,Tend4 = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start1_end2_time1:
   - Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,1,2,Tstart1,Tend4 >= 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity2:
   - 25.695 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew
   - 25.695 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityconsumables
   - 25.695 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityequipment
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commodityequipment = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditysamples
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditysamples = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity5:
   - 51.28330072855581 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew
   - 51.28330072855581 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
   - 0.512833007285558 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityconsumables
   - 0.512833007285558 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityequipment
   - 0.512833007285558 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditysamples
   + 0.4870069927144419 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   - 51.28330072855581 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   - 0.512833007285558 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypackaged_isru
   - 0.512833007285558 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityactive_isru
   - 0.512833007285558 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   - 0.512833007285558 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   - 9228.942799110904 sc_commodity_outflow_0,2,1,Tstart9,Tend12
   - 9228.942799110902 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 3765.219939490567 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypackaged_isru
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityactive_isru
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity9:
   - 20.0358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew
   - 20.0358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
   - 0.200358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityconsumables
   - 0.200358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityequipment
   - 0.200358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditysamples
   - 0.200358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   - 20.0358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   - 0.200358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypackaged_isru
   - 0.200358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityactive_isru
   + 0.7996414348469121 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   - 0.200358565153088 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   - 3605.652738494971 sc_commodity_outflow_0,2,1,Tstart9,Tend12
   - 3605.652738494971 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 1471.032585353972 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity10:
   - 8.2191780821917813e-04 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,2,1,Tstart9,Tend12
   - 179.96 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity11:
   sc_commodity_outflow_0,2,1,Tstart9,Tend12
   - sc_commodity_inflow_0,2,1,Tstart9,Tend12 = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start2_end1_time9:
   - Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,2,1,Tstart9,Tend12 >= 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity2:
   - 25.695 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew
   - 25.695 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityconsumables
   - 25.695 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityequipment
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commodityequipment = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditysamples
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditysamples = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity5:
   - 51.28330072855581 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew
   - 51.28330072855581 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
   - 0.512833007285558 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityconsumables
   - 0.512833007285558 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityequipment
   - 0.512833007285558 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditysamples
   + 0.4870069927144419 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   - 51.28330072855581 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   - 0.512833007285558 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypackaged_isru
   - 0.512833007285558 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityactive_isru
   - 0.512833007285558 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   - 0.512833007285558 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   - 3765.219939490567 sc_commodity_outflow_1,2,1,Tstart9,Tend12
   - 9228.942799110902 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 3765.219939490567 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityactive_isru
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity9:
   - 20.0358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew
   - 20.0358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
   - 0.200358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityconsumables
   - 0.200358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityequipment
   - 0.200358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditysamples
   - 0.200358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   - 20.0358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   - 0.200358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypackaged_isru
   - 0.200358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityactive_isru
   + 0.7996414348469121 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   - 0.200358565153088 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   - 1471.032585353972 sc_commodity_outflow_1,2,1,Tstart9,Tend12
   - 3605.652738494971 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 1471.032585353972 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity10:
   - 8.2191780821917813e-04 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,2,1,Tstart9,Tend12
   - 179.96 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity11:
   sc_commodity_outflow_1,2,1,Tstart9,Tend12
   - sc_commodity_inflow_1,2,1,Tstart9,Tend12 = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime9_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start2_end1_time9:
   - Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,2,1,Tstart9,Tend12 >= 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity2:
   - 34.26 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew
   - 34.26 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityconsumables
   - 34.26 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityequipment
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commodityequipment = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditysamples
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditysamples = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity5:
   0.99984 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity9:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity10:
   - 0.0010958904109589 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,2,2,Tstart9,Tend13
   - 179.96 SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity11:
   sc_commodity_outflow_0,2,2,Tstart9,Tend13
   - sc_commodity_inflow_0,2,2,Tstart9,Tend13 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start2_end2_time9:
   - Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,2,2,Tstart9,Tend13 >= 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity2:
   - 34.26 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew
   - 34.26 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityconsumables
   - 34.26 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityequipment
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commodityequipment = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditysamples
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditysamples = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity5:
   0.99984 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity9:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity10:
   - 0.0010958904109589 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,2,2,Tstart9,Tend13
   - 179.96 SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity11:
   sc_commodity_outflow_1,2,2,Tstart9,Tend13
   - sc_commodity_inflow_1,2,2,Tstart9,Tend13 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start2_end2_time9:
   - Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,2,2,Tstart9,Tend13 >= 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_return
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew_return = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity2:
   - 42.825 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew
   - 42.825 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityconsumables
   - 42.825 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commodityconsumables = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityequipment
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commodityequipment = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditysamples
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditysamples = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity5:
   0.99984 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypackaged_isru
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityactive_isru
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commodityactive_isru = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity9:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity10:
   - 0.00136986301369863 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,2,2,Tstart4,Tend9
   - 179.96 SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity11:
   sc_commodity_outflow_0,2,2,Tstart4,Tend9
   - sc_commodity_inflow_0,2,2,Tstart4,Tend9 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start2_end2_time4:
   - Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,2,2,Tstart4,Tend9 >= 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_return
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew_return = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity2:
   - 42.825 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew
   - 42.825 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityconsumables
   - 42.825 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commodityconsumables = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityequipment
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commodityequipment = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditysamples
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditysamples = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity5:
   0.99984 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityactive_isru
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commodityactive_isru = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity9:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity10:
   - 0.00136986301369863 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,2,2,Tstart4,Tend9
   - 179.96 SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity11:
   sc_commodity_outflow_1,2,2,Tstart4,Tend9
   - sc_commodity_inflow_1,2,2,Tstart4,Tend9 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start2_end2_time4:
   - Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,2,2,Tstart4,Tend9 >= 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_return
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew_return = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity2:
   - 8.565 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew
   - 8.565 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_return
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityconsumables
   - 8.565 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityconsumables = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityequipment
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityequipment = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditysamples
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditysamples = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity5:
   - 31.57138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew
   - 31.57138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_return
   - 0.3157138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityconsumables
   - 0.3157138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityequipment
   - 0.3157138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditysamples
   + 0.6841261899929917 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - 31.57138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
   - 0.3157138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - 0.3157138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityactive_isru
   - 0.3157138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - 0.3157138100070083 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - 5681.58572488612 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - 5681.585724886121 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 2317.970793071455 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityactive_isru
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityactive_isru = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity9:
   - 12.33461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew
   - 12.33461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_return
   - 0.1233461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityconsumables
   - 0.1233461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityequipment
   - 0.1233461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditysamples
   - 0.1233461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - 12.33461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
   - 0.1233461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - 0.1233461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityactive_isru
   + 0.8766538715851487 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - 0.1233461284148513 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - 2219.736926953663 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - 2219.736926953663 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 905.607274821838 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity10:
   - 2.7397260273972606e-04 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityactive_isru
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - 179.96 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity11:
   sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - sc_commodity_inflow_0,2,3,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start2_end3_time4:
   - Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,2,3,Tstart4,Tend5 >= 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_return
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew_return = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity2:
   - 8.565 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew
   - 8.565 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_return
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityconsumables
   - 8.565 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityconsumables = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityequipment
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityequipment = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditysamples
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditysamples = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity5:
   - 31.57138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew
   - 31.57138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_return
   - 0.3157138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityconsumables
   - 0.3157138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityequipment
   - 0.3157138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditysamples
   + 0.6841261899929917 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - 31.57138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
   - 0.3157138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - 0.3157138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityactive_isru
   - 0.3157138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - 0.3157138100070083 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - 2317.970793071454 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - 5681.585724886121 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 2317.970793071455 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityactive_isru
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityactive_isru = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity9:
   - 12.33461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew
   - 12.33461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_return
   - 0.1233461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityconsumables
   - 0.1233461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityequipment
   - 0.1233461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditysamples
   - 0.1233461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - 12.33461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
   - 0.1233461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   - 0.1233461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityactive_isru
   + 0.8766538715851487 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - 0.1233461284148513 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - 905.607274821838 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - 2219.736926953663 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 905.607274821838 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity10:
   - 2.7397260273972606e-04 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityactive_isru
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - 179.96 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity11:
   sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - sc_commodity_inflow_1,2,3,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start2_end3_time4:
   - Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,2,3,Tstart4,Tend5 >= 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_return
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew_return = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity2:
   - 8.565 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew
   - 8.565 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityconsumables
   - 8.565 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commodityconsumables = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityequipment
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commodityequipment = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditysamples
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditysamples = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity5:
   - 31.57138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew
   - 31.57138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_return
   - 0.3157138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityconsumables
   - 0.3157138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityequipment
   - 0.3157138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditysamples
   + 0.6841261899929917 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   - 31.57138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
   - 0.3157138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   - 0.3157138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityactive_isru
   - 0.3157138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   - 0.3157138100070083 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   - 5681.58572488612 sc_commodity_outflow_0,3,2,Tstart8,Tend9
   - 5681.585724886121 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 2317.970793071455 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityactive_isru
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commodityactive_isru = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity9:
   - 12.33461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew
   - 12.33461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_return
   - 0.1233461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityconsumables
   - 0.1233461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityequipment
   - 0.1233461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditysamples
   - 0.1233461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   - 12.33461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
   - 0.1233461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   - 0.1233461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityactive_isru
   + 0.8766538715851487 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   - 0.1233461284148513 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   - 2219.736926953663 sc_commodity_outflow_0,3,2,Tstart8,Tend9
   - 2219.736926953663 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 905.607274821838 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity10:
   - 2.7397260273972606e-04 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,3,2,Tstart8,Tend9
   - 179.96 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity11:
   sc_commodity_outflow_0,3,2,Tstart8,Tend9
   - sc_commodity_inflow_0,3,2,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start3_end2_time8:
   - Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,3,2,Tstart8,Tend9 >= 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_return
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew_return = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity2:
   - 8.565 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew
   - 8.565 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityconsumables
   - 8.565 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commodityconsumables = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityequipment
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commodityequipment = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditysamples
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditysamples = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity5:
   - 31.57138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew
   - 31.57138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_return
   - 0.3157138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityconsumables
   - 0.3157138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityequipment
   - 0.3157138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditysamples
   + 0.6841261899929917 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   - 31.57138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
   - 0.3157138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   - 0.3157138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityactive_isru
   - 0.3157138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   - 0.3157138100070083 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   - 2317.970793071454 sc_commodity_outflow_1,3,2,Tstart8,Tend9
   - 5681.585724886121 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 2317.970793071455 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityactive_isru
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commodityactive_isru = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity9:
   - 12.33461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew
   - 12.33461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_return
   - 0.1233461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityconsumables
   - 0.1233461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityequipment
   - 0.1233461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditysamples
   - 0.1233461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   - 12.33461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
   - 0.1233461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   - 0.1233461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityactive_isru
   + 0.8766538715851487 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   - 0.1233461284148513 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   - 905.607274821838 sc_commodity_outflow_1,3,2,Tstart8,Tend9
   - 2219.736926953663 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 905.607274821838 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity10:
   - 2.7397260273972606e-04 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,3,2,Tstart8,Tend9
   - 179.96 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity11:
   sc_commodity_outflow_1,3,2,Tstart8,Tend9
   - sc_commodity_inflow_1,3,2,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start3_end2_time8:
   - Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,3,2,Tstart8,Tend9 >= 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity2:
   - 42.825 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew
   - 42.825 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityconsumables
   - 42.825 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityequipment
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityequipment = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditysamples
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditysamples = 0
 isru_pwl_vehicle0_node3_time8_lambda_sum:
   isru_pwl_vehicle0_node3_time8_lambda_0
   + isru_pwl_vehicle0_node3_time8_lambda_1
   + isru_pwl_vehicle0_node3_time8_lambda_2
   + isru_pwl_vehicle0_node3_time8_lambda_3
   + isru_pwl_vehicle0_node3_time8_lambda_4
   + isru_pwl_vehicle0_node3_time8_lambda_5
   + isru_pwl_vehicle0_node3_time8_lambda_6
   + isru_pwl_vehicle0_node3_time8_lambda_7
   + isru_pwl_vehicle0_node3_time8_lambda_8
   + isru_pwl_vehicle0_node3_time8_lambda_9
   + isru_pwl_vehicle0_node3_time8_lambda_10
   + isru_pwl_vehicle0_node3_time8_lambda_11
   + isru_pwl_vehicle0_node3_time8_lambda_12
   + isru_pwl_vehicle0_node3_time8_lambda_13
   + isru_pwl_vehicle0_node3_time8_lambda_14
   + isru_pwl_vehicle0_node3_time8_lambda_15
   + isru_pwl_vehicle0_node3_time8_lambda_16
   + isru_pwl_vehicle0_node3_time8_lambda_17
   + isru_pwl_vehicle0_node3_time8_lambda_18
   + isru_pwl_vehicle0_node3_time8_lambda_19
   + isru_pwl_vehicle0_node3_time8_lambda_20
   + isru_pwl_vehicle0_node3_time8_lambda_21
   + isru_pwl_vehicle0_node3_time8_lambda_22
   + isru_pwl_vehicle0_node3_time8_lambda_23
   + isru_pwl_vehicle0_node3_time8_lambda_24
   + isru_pwl_vehicle0_node3_time8_lambda_25
   + isru_pwl_vehicle0_node3_time8_lambda_26
   + isru_pwl_vehicle0_node3_time8_lambda_27
   + isru_pwl_vehicle0_node3_time8_lambda_28
   + isru_pwl_vehicle0_node3_time8_lambda_29
   + isru_pwl_vehicle0_node3_time8_lambda_30
   + isru_pwl_vehicle0_node3_time8_lambda_31
   + isru_pwl_vehicle0_node3_time8_lambda_32
   + isru_pwl_vehicle0_node3_time8_lambda_33
   + isru_pwl_vehicle0_node3_time8_lambda_34
   + isru_pwl_vehicle0_node3_time8_lambda_35
   + isru_pwl_vehicle0_node3_time8_lambda_36
   + isru_pwl_vehicle0_node3_time8_lambda_37
   + isru_pwl_vehicle0_node3_time8_lambda_38
   + isru_pwl_vehicle0_node3_time8_lambda_39
   + isru_pwl_vehicle0_node3_time8_lambda_40
   + isru_pwl_vehicle0_node3_time8_lambda_41
   + isru_pwl_vehicle0_node3_time8_lambda_42
   + isru_pwl_vehicle0_node3_time8_lambda_43
   + isru_pwl_vehicle0_node3_time8_lambda_44
   + isru_pwl_vehicle0_node3_time8_lambda_45
   + isru_pwl_vehicle0_node3_time8_lambda_46
   + isru_pwl_vehicle0_node3_time8_lambda_47
   + isru_pwl_vehicle0_node3_time8_lambda_48
   + isru_pwl_vehicle0_node3_time8_lambda_49
   + isru_pwl_vehicle0_node3_time8_lambda_50
   + isru_pwl_vehicle0_node3_time8_lambda_51
   + isru_pwl_vehicle0_node3_time8_lambda_52
   + isru_pwl_vehicle0_node3_time8_lambda_53
   + isru_pwl_vehicle0_node3_time8_lambda_54
   + isru_pwl_vehicle0_node3_time8_lambda_55
   + isru_pwl_vehicle0_node3_time8_lambda_56
   + isru_pwl_vehicle0_node3_time8_lambda_57
   + isru_pwl_vehicle0_node3_time8_lambda_58
   + isru_pwl_vehicle0_node3_time8_lambda_59
   + isru_pwl_vehicle0_node3_time8_lambda_60
   + isru_pwl_vehicle0_node3_time8_lambda_61
   + isru_pwl_vehicle0_node3_time8_lambda_62
   + isru_pwl_vehicle0_node3_time8_lambda_63
   + isru_pwl_vehicle0_node3_time8_lambda_64
   + isru_pwl_vehicle0_node3_time8_lambda_65
   + isru_pwl_vehicle0_node3_time8_lambda_66
   + isru_pwl_vehicle0_node3_time8_lambda_67
   + isru_pwl_vehicle0_node3_time8_lambda_68
   + isru_pwl_vehicle0_node3_time8_lambda_69
   + isru_pwl_vehicle0_node3_time8_lambda_70
   + isru_pwl_vehicle0_node3_time8_lambda_71
   + isru_pwl_vehicle0_node3_time8_lambda_72
   + isru_pwl_vehicle0_node3_time8_lambda_73
   + isru_pwl_vehicle0_node3_time8_lambda_74
   + isru_pwl_vehicle0_node3_time8_lambda_75
   + isru_pwl_vehicle0_node3_time8_lambda_76
   + isru_pwl_vehicle0_node3_time8_lambda_77
   + isru_pwl_vehicle0_node3_time8_lambda_78
   + isru_pwl_vehicle0_node3_time8_lambda_79
   + isru_pwl_vehicle0_node3_time8_lambda_80
   + isru_pwl_vehicle0_node3_time8_lambda_81
   + isru_pwl_vehicle0_node3_time8_lambda_82
   + isru_pwl_vehicle0_node3_time8_lambda_83
   + isru_pwl_vehicle0_node3_time8_lambda_84
   + isru_pwl_vehicle0_node3_time8_lambda_85
   + isru_pwl_vehicle0_node3_time8_lambda_86
   + isru_pwl_vehicle0_node3_time8_lambda_87
   + isru_pwl_vehicle0_node3_time8_lambda_88
   + isru_pwl_vehicle0_node3_time8_lambda_89
   + isru_pwl_vehicle0_node3_time8_lambda_90
   + isru_pwl_vehicle0_node3_time8_lambda_91
   + isru_pwl_vehicle0_node3_time8_lambda_92
   + isru_pwl_vehicle0_node3_time8_lambda_93
   + isru_pwl_vehicle0_node3_time8_lambda_94
   + isru_pwl_vehicle0_node3_time8_lambda_95
   + isru_pwl_vehicle0_node3_time8_lambda_96
   + isru_pwl_vehicle0_node3_time8_lambda_97
   + isru_pwl_vehicle0_node3_time8_lambda_98
   + isru_pwl_vehicle0_node3_time8_lambda_99
   + isru_pwl_vehicle0_node3_time8_lambda_100 = 1
 isru_pwl_vehicle0_node3_time8_x_interp:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   - 100 isru_pwl_vehicle0_node3_time8_lambda_1
   - 200 isru_pwl_vehicle0_node3_time8_lambda_2
   - 300 isru_pwl_vehicle0_node3_time8_lambda_3
   - 400 isru_pwl_vehicle0_node3_time8_lambda_4
   - 500 isru_pwl_vehicle0_node3_time8_lambda_5
   - 600 isru_pwl_vehicle0_node3_time8_lambda_6
   - 700 isru_pwl_vehicle0_node3_time8_lambda_7
   - 800 isru_pwl_vehicle0_node3_time8_lambda_8
   - 900 isru_pwl_vehicle0_node3_time8_lambda_9
   - 1000 isru_pwl_vehicle0_node3_time8_lambda_10
   - 1100 isru_pwl_vehicle0_node3_time8_lambda_11
   - 1200 isru_pwl_vehicle0_node3_time8_lambda_12
   - 1300 isru_pwl_vehicle0_node3_time8_lambda_13
   - 1400 isru_pwl_vehicle0_node3_time8_lambda_14
   - 1500 isru_pwl_vehicle0_node3_time8_lambda_15
   - 1600 isru_pwl_vehicle0_node3_time8_lambda_16
   - 1700 isru_pwl_vehicle0_node3_time8_lambda_17
   - 1800 isru_pwl_vehicle0_node3_time8_lambda_18
   - 1900 isru_pwl_vehicle0_node3_time8_lambda_19
   - 2000 isru_pwl_vehicle0_node3_time8_lambda_20
   - 2100 isru_pwl_vehicle0_node3_time8_lambda_21
   - 2200 isru_pwl_vehicle0_node3_time8_lambda_22
   - 2300 isru_pwl_vehicle0_node3_time8_lambda_23
   - 2400 isru_pwl_vehicle0_node3_time8_lambda_24
   - 2500 isru_pwl_vehicle0_node3_time8_lambda_25
   - 2600 isru_pwl_vehicle0_node3_time8_lambda_26
   - 2700 isru_pwl_vehicle0_node3_time8_lambda_27
   - 2800 isru_pwl_vehicle0_node3_time8_lambda_28
   - 2900 isru_pwl_vehicle0_node3_time8_lambda_29
   - 3000 isru_pwl_vehicle0_node3_time8_lambda_30
   - 3100 isru_pwl_vehicle0_node3_time8_lambda_31
   - 3200 isru_pwl_vehicle0_node3_time8_lambda_32
   - 3300 isru_pwl_vehicle0_node3_time8_lambda_33
   - 3400 isru_pwl_vehicle0_node3_time8_lambda_34
   - 3500 isru_pwl_vehicle0_node3_time8_lambda_35
   - 3600 isru_pwl_vehicle0_node3_time8_lambda_36
   - 3700 isru_pwl_vehicle0_node3_time8_lambda_37
   - 3800 isru_pwl_vehicle0_node3_time8_lambda_38
   - 3900 isru_pwl_vehicle0_node3_time8_lambda_39
   - 4000 isru_pwl_vehicle0_node3_time8_lambda_40
   - 4100 isru_pwl_vehicle0_node3_time8_lambda_41
   - 4200 isru_pwl_vehicle0_node3_time8_lambda_42
   - 4300 isru_pwl_vehicle0_node3_time8_lambda_43
   - 4400 isru_pwl_vehicle0_node3_time8_lambda_44
   - 4500 isru_pwl_vehicle0_node3_time8_lambda_45
   - 4600 isru_pwl_vehicle0_node3_time8_lambda_46
   - 4700 isru_pwl_vehicle0_node3_time8_lambda_47
   - 4800 isru_pwl_vehicle0_node3_time8_lambda_48
   - 4900 isru_pwl_vehicle0_node3_time8_lambda_49
   - 5000 isru_pwl_vehicle0_node3_time8_lambda_50
   - 5100 isru_pwl_vehicle0_node3_time8_lambda_51
   - 5200 isru_pwl_vehicle0_node3_time8_lambda_52
   - 5300 isru_pwl_vehicle0_node3_time8_lambda_53
   - 5400 isru_pwl_vehicle0_node3_time8_lambda_54
   - 5500 isru_pwl_vehicle0_node3_time8_lambda_55
   - 5600 isru_pwl_vehicle0_node3_time8_lambda_56
   - 5700 isru_pwl_vehicle0_node3_time8_lambda_57
   - 5800 isru_pwl_vehicle0_node3_time8_lambda_58
   - 5900 isru_pwl_vehicle0_node3_time8_lambda_59
   - 6000 isru_pwl_vehicle0_node3_time8_lambda_60
   - 6100 isru_pwl_vehicle0_node3_time8_lambda_61
   - 6200 isru_pwl_vehicle0_node3_time8_lambda_62
   - 6300 isru_pwl_vehicle0_node3_time8_lambda_63
   - 6400 isru_pwl_vehicle0_node3_time8_lambda_64
   - 6500 isru_pwl_vehicle0_node3_time8_lambda_65
   - 6600 isru_pwl_vehicle0_node3_time8_lambda_66
   - 6700 isru_pwl_vehicle0_node3_time8_lambda_67
   - 6800 isru_pwl_vehicle0_node3_time8_lambda_68
   - 6900 isru_pwl_vehicle0_node3_time8_lambda_69
   - 7000 isru_pwl_vehicle0_node3_time8_lambda_70
   - 7100 isru_pwl_vehicle0_node3_time8_lambda_71
   - 7200 isru_pwl_vehicle0_node3_time8_lambda_72
   - 7300 isru_pwl_vehicle0_node3_time8_lambda_73
   - 7400 isru_pwl_vehicle0_node3_time8_lambda_74
   - 7500 isru_pwl_vehicle0_node3_time8_lambda_75
   - 7600 isru_pwl_vehicle0_node3_time8_lambda_76
   - 7700 isru_pwl_vehicle0_node3_time8_lambda_77
   - 7800 isru_pwl_vehicle0_node3_time8_lambda_78
   - 7900 isru_pwl_vehicle0_node3_time8_lambda_79
   - 8000 isru_pwl_vehicle0_node3_time8_lambda_80
   - 8100 isru_pwl_vehicle0_node3_time8_lambda_81
   - 8200 isru_pwl_vehicle0_node3_time8_lambda_82
   - 8300 isru_pwl_vehicle0_node3_time8_lambda_83
   - 8400 isru_pwl_vehicle0_node3_time8_lambda_84
   - 8500 isru_pwl_vehicle0_node3_time8_lambda_85
   - 8600 isru_pwl_vehicle0_node3_time8_lambda_86
   - 8700 isru_pwl_vehicle0_node3_time8_lambda_87
   - 8800 isru_pwl_vehicle0_node3_time8_lambda_88
   - 8900 isru_pwl_vehicle0_node3_time8_lambda_89
   - 9000 isru_pwl_vehicle0_node3_time8_lambda_90
   - 9100 isru_pwl_vehicle0_node3_time8_lambda_91
   - 9200 isru_pwl_vehicle0_node3_time8_lambda_92
   - 9300 isru_pwl_vehicle0_node3_time8_lambda_93
   - 9400 isru_pwl_vehicle0_node3_time8_lambda_94
   - 9500 isru_pwl_vehicle0_node3_time8_lambda_95
   - 9600 isru_pwl_vehicle0_node3_time8_lambda_96
   - 9700 isru_pwl_vehicle0_node3_time8_lambda_97
   - 9800 isru_pwl_vehicle0_node3_time8_lambda_98
   - 9900 isru_pwl_vehicle0_node3_time8_lambda_99
   - 10000 isru_pwl_vehicle0_node3_time8_lambda_100 = 0
 isru_pwl_vehicle0_node3_time8_z_interp:
   isru_arc_propellant_vehicle0_node3_time8
   - 985.2825563858833 isru_pwl_vehicle0_node3_time8_lambda_4
   - 1500.748691745031 isru_pwl_vehicle0_node3_time8_lambda_5
   - 2088.933864258242 isru_pwl_vehicle0_node3_time8_lambda_6
   - 2737.018880329098 isru_pwl_vehicle0_node3_time8_lambda_7
   - 3434.228243716464 isru_pwl_vehicle0_node3_time8_lambda_8
   - 4171.526536767735 isru_pwl_vehicle0_node3_time8_lambda_9
   - 4941.357797288778 isru_pwl_vehicle0_node3_time8_lambda_10
   - 5737.422001432911 isru_pwl_vehicle0_node3_time8_lambda_11
   - 6554.483550637531 isru_pwl_vehicle0_node3_time8_lambda_12
   - 7388.207344829402 isru_pwl_vehicle0_node3_time8_lambda_13
   - 8235.01861825687 isru_pwl_vehicle0_node3_time8_lambda_14
   - 9091.983230072974 isru_pwl_vehicle0_node3_time8_lambda_15
   - 9956.705549371904 isru_pwl_vehicle0_node3_time8_lambda_16
   - 10827.24146264956 isru_pwl_vehicle0_node3_time8_lambda_17
   - 11702.02436835233 isru_pwl_vehicle0_node3_time8_lambda_18
   - 12579.8023150352 isru_pwl_vehicle0_node3_time8_lambda_19
   - 13459.5846925414 isru_pwl_vehicle0_node3_time8_lambda_20
   - 14340.59710465161 isru_pwl_vehicle0_node3_time8_lambda_21
   - 15222.24324128196 isru_pwl_vehicle0_node3_time8_lambda_22
   - 16104.07273241018 isru_pwl_vehicle0_node3_time8_lambda_23
   - 16985.75410784817 isru_pwl_vehicle0_node3_time8_lambda_24
   - 17867.0521096901 isru_pwl_vehicle0_node3_time8_lambda_25
   - 18747.80871029746 isru_pwl_vehicle0_node3_time8_lambda_26
   - 19627.92728025435 isru_pwl_vehicle0_node3_time8_lambda_27
   - 20507.35942976479 isru_pwl_vehicle0_node3_time8_lambda_28
   - 21386.09411514398 isru_pwl_vehicle0_node3_time8_lambda_29
   - 22264.14866083277 isru_pwl_vehicle0_node3_time8_lambda_30
   - 23141.56139800195 isru_pwl_vehicle0_node3_time8_lambda_31
   - 24018.38566440885 isru_pwl_vehicle0_node3_time8_lambda_32
   - 24894.68494767318 isru_pwl_vehicle0_node3_time8_lambda_33
   - 25770.52898638042 isru_pwl_vehicle0_node3_time8_lambda_34
   - 26645.99067111392 isru_pwl_vehicle0_node3_time8_lambda_35
   - 27521.14361128332 isru_pwl_vehicle0_node3_time8_lambda_36
   - 28396.06025399472 isru_pwl_vehicle0_node3_time8_lambda_37
   - 29270.81045866316 isru_pwl_vehicle0_node3_time8_lambda_38
   - 30145.46044600507 isru_pwl_vehicle0_node3_time8_lambda_39
   - 31020.07205281519 isru_pwl_vehicle0_node3_time8_lambda_40
   - 31894.70223483293 isru_pwl_vehicle0_node3_time8_lambda_41
   - 32769.40276929723 isru_pwl_vehicle0_node3_time8_lambda_42
   - 33644.22011670309 isru_pwl_vehicle0_node3_time8_lambda_43
   - 34519.19540800239 isru_pwl_vehicle0_node3_time8_lambda_44
   - 35394.36452920375 isru_pwl_vehicle0_node3_time8_lambda_45
   - 36269.75828016792 isru_pwl_vehicle0_node3_time8_lambda_46
   - 37145.40258848952 isru_pwl_vehicle0_node3_time8_lambda_47
   - 38021.31876281364 isru_pwl_vehicle0_node3_time8_lambda_48
   - 38897.52377284662 isru_pwl_vehicle0_node3_time8_lambda_49
   - 39774.03054576725 isru_pwl_vehicle0_node3_time8_lambda_50
   - 40650.84827079403 isru_pwl_vehicle0_node3_time8_lambda_51
   - 41527.98270537665 isru_pwl_vehicle0_node3_time8_lambda_52
   - 42405.43647790508 isru_pwl_vehicle0_node3_time8_lambda_53
   - 43283.20938301237 isru_pwl_vehicle0_node3_time8_lambda_54
   - 44161.29866652277 isru_pwl_vehicle0_node3_time8_lambda_55
   - 45039.69929789972 isru_pwl_vehicle0_node3_time8_lambda_56
   - 45918.40422870246 isru_pwl_vehicle0_node3_time8_lambda_57
   - 46797.40463609257 isru_pwl_vehicle0_node3_time8_lambda_58
   - 47676.69015085884 isru_pwl_vehicle0_node3_time8_lambda_59
   - 48556.24906977034 isru_pwl_vehicle0_node3_time8_lambda_60
   - 49436.06855233612 isru_pwl_vehicle0_node3_time8_lambda_61
   - 50316.13480225825 isru_pwl_vehicle0_node3_time8_lambda_62
   - 51196.4332340237 isru_pwl_vehicle0_node3_time8_lambda_63
   - 52076.94862519771 isru_pwl_vehicle0_node3_time8_lambda_64
   - 52957.66525506565 isru_pwl_vehicle0_node3_time8_lambda_65
   - 53838.56703032609 isru_pwl_vehicle0_node3_time8_lambda_66
   - 54719.63759857266 isru_pwl_vehicle0_node3_time8_lambda_67
   - 55600.860450318 isru_pwl_vehicle0_node3_time8_lambda_68
   - 56482.21901031626 isru_pwl_vehicle0_node3_time8_lambda_69
   - 57363.69671893076 isru_pwl_vehicle0_node3_time8_lambda_70
   - 58245.27710427711 isru_pwl_vehicle0_node3_time8_lambda_71
   - 59126.94384584791 isru_pwl_vehicle0_node3_time8_lambda_72
   - 60008.68083029681 isru_pwl_vehicle0_node3_time8_lambda_73
   - 60890.47220002831 isru_pwl_vehicle0_node3_time8_lambda_74
   - 61772.30239520559 isru_pwl_vehicle0_node3_time8_lambda_75
   - 62654.15618975411 isru_pwl_vehicle0_node3_time8_lambda_76
   - 63536.01872190295 isru_pwl_vehicle0_node3_time8_lambda_77
   - 64417.87551977086 isru_pwl_vehicle0_node3_time8_lambda_78
   - 65299.71252246922 isru_pwl_vehicle0_node3_time8_lambda_79
   - 66181.5160971603 isru_pwl_vehicle0_node3_time8_lambda_80
   - 67063.27305247675 isru_pwl_vehicle0_node3_time8_lambda_81
   - 67944.97064867713 isru_pwl_vehicle0_node3_time8_lambda_82
   - 68826.59660488224 isru_pwl_vehicle0_node3_time8_lambda_83
   - 69708.1391037096 isru_pwl_vehicle0_node3_time8_lambda_84
   - 70589.58679359611 isru_pwl_vehicle0_node3_time8_lambda_85
   - 71470.92878907495 isru_pwl_vehicle0_node3_time8_lambda_86
   - 72352.15466924875 isru_pwl_vehicle0_node3_time8_lambda_87
   - 73233.25447468 isru_pwl_vehicle0_node3_time8_lambda_88
   - 74114.21870289929 isru_pwl_vehicle0_node3_time8_lambda_89
   - 74995.03830271348 isru_pwl_vehicle0_node3_time8_lambda_90
   - 75875.70466747832 isru_pwl_vehicle0_node3_time8_lambda_91
   - 76756.20962748471 isru_pwl_vehicle0_node3_time8_lambda_92
   - 77636.5454415929 isru_pwl_vehicle0_node3_time8_lambda_93
   - 78516.70478823519 isru_pwl_vehicle0_node3_time8_lambda_94
   - 79396.68075589606 isru_pwl_vehicle0_node3_time8_lambda_95
   - 80276.46683316681 isru_pwl_vehicle0_node3_time8_lambda_96
   - 81156.05689846189 isru_pwl_vehicle0_node3_time8_lambda_97
   - 82035.44520947429 isru_pwl_vehicle0_node3_time8_lambda_98
   - 82914.62639243968 isru_pwl_vehicle0_node3_time8_lambda_99
   - 83793.5954312698 isru_pwl_vehicle0_node3_time8_lambda_100 <= 0
 isru_pwl_vehicle0_node3_time8_branch_pos_bit_0:
   isru_pwl_vehicle0_node3_time8_lambda_65
   + isru_pwl_vehicle0_node3_time8_lambda_66
   + isru_pwl_vehicle0_node3_time8_lambda_67
   + isru_pwl_vehicle0_node3_time8_lambda_68
   + isru_pwl_vehicle0_node3_time8_lambda_69
   + isru_pwl_vehicle0_node3_time8_lambda_70
   + isru_pwl_vehicle0_node3_time8_lambda_71
   + isru_pwl_vehicle0_node3_time8_lambda_72
   + isru_pwl_vehicle0_node3_time8_lambda_73
   + isru_pwl_vehicle0_node3_time8_lambda_74
   + isru_pwl_vehicle0_node3_time8_lambda_75
   + isru_pwl_vehicle0_node3_time8_lambda_76
   + isru_pwl_vehicle0_node3_time8_lambda_77
   + isru_pwl_vehicle0_node3_time8_lambda_78
   + isru_pwl_vehicle0_node3_time8_lambda_79
   + isru_pwl_vehicle0_node3_time8_lambda_80
   + isru_pwl_vehicle0_node3_time8_lambda_81
   + isru_pwl_vehicle0_node3_time8_lambda_82
   + isru_pwl_vehicle0_node3_time8_lambda_83
   + isru_pwl_vehicle0_node3_time8_lambda_84
   + isru_pwl_vehicle0_node3_time8_lambda_85
   + isru_pwl_vehicle0_node3_time8_lambda_86
   + isru_pwl_vehicle0_node3_time8_lambda_87
   + isru_pwl_vehicle0_node3_time8_lambda_88
   + isru_pwl_vehicle0_node3_time8_lambda_89
   + isru_pwl_vehicle0_node3_time8_lambda_90
   + isru_pwl_vehicle0_node3_time8_lambda_91
   + isru_pwl_vehicle0_node3_time8_lambda_92
   + isru_pwl_vehicle0_node3_time8_lambda_93
   + isru_pwl_vehicle0_node3_time8_lambda_94
   + isru_pwl_vehicle0_node3_time8_lambda_95
   + isru_pwl_vehicle0_node3_time8_lambda_96
   + isru_pwl_vehicle0_node3_time8_lambda_97
   + isru_pwl_vehicle0_node3_time8_lambda_98
   + isru_pwl_vehicle0_node3_time8_lambda_99
   + isru_pwl_vehicle0_node3_time8_lambda_100
   - isru_pwl_vehicle0_node3_time8_graybit_0 <= 0
 isru_pwl_vehicle0_node3_time8_branch_neg_bit_0:
   isru_pwl_vehicle0_node3_time8_lambda_0
   + isru_pwl_vehicle0_node3_time8_lambda_1
   + isru_pwl_vehicle0_node3_time8_lambda_2
   + isru_pwl_vehicle0_node3_time8_lambda_3
   + isru_pwl_vehicle0_node3_time8_lambda_4
   + isru_pwl_vehicle0_node3_time8_lambda_5
   + isru_pwl_vehicle0_node3_time8_lambda_6
   + isru_pwl_vehicle0_node3_time8_lambda_7
   + isru_pwl_vehicle0_node3_time8_lambda_8
   + isru_pwl_vehicle0_node3_time8_lambda_9
   + isru_pwl_vehicle0_node3_time8_lambda_10
   + isru_pwl_vehicle0_node3_time8_lambda_11
   + isru_pwl_vehicle0_node3_time8_lambda_12
   + isru_pwl_vehicle0_node3_time8_lambda_13
   + isru_pwl_vehicle0_node3_time8_lambda_14
   + isru_pwl_vehicle0_node3_time8_lambda_15
   + isru_pwl_vehicle0_node3_time8_lambda_16
   + isru_pwl_vehicle0_node3_time8_lambda_17
   + isru_pwl_vehicle0_node3_time8_lambda_18
   + isru_pwl_vehicle0_node3_time8_lambda_19
   + isru_pwl_vehicle0_node3_time8_lambda_20
   + isru_pwl_vehicle0_node3_time8_lambda_21
   + isru_pwl_vehicle0_node3_time8_lambda_22
   + isru_pwl_vehicle0_node3_time8_lambda_23
   + isru_pwl_vehicle0_node3_time8_lambda_24
   + isru_pwl_vehicle0_node3_time8_lambda_25
   + isru_pwl_vehicle0_node3_time8_lambda_26
   + isru_pwl_vehicle0_node3_time8_lambda_27
   + isru_pwl_vehicle0_node3_time8_lambda_28
   + isru_pwl_vehicle0_node3_time8_lambda_29
   + isru_pwl_vehicle0_node3_time8_lambda_30
   + isru_pwl_vehicle0_node3_time8_lambda_31
   + isru_pwl_vehicle0_node3_time8_lambda_32
   + isru_pwl_vehicle0_node3_time8_lambda_33
   + isru_pwl_vehicle0_node3_time8_lambda_34
   + isru_pwl_vehicle0_node3_time8_lambda_35
   + isru_pwl_vehicle0_node3_time8_lambda_36
   + isru_pwl_vehicle0_node3_time8_lambda_37
   + isru_pwl_vehicle0_node3_time8_lambda_38
   + isru_pwl_vehicle0_node3_time8_lambda_39
   + isru_pwl_vehicle0_node3_time8_lambda_40
   + isru_pwl_vehicle0_node3_time8_lambda_41
   + isru_pwl_vehicle0_node3_time8_lambda_42
   + isru_pwl_vehicle0_node3_time8_lambda_43
   + isru_pwl_vehicle0_node3_time8_lambda_44
   + isru_pwl_vehicle0_node3_time8_lambda_45
   + isru_pwl_vehicle0_node3_time8_lambda_46
   + isru_pwl_vehicle0_node3_time8_lambda_47
   + isru_pwl_vehicle0_node3_time8_lambda_48
   + isru_pwl_vehicle0_node3_time8_lambda_49
   + isru_pwl_vehicle0_node3_time8_lambda_50
   + isru_pwl_vehicle0_node3_time8_lambda_51
   + isru_pwl_vehicle0_node3_time8_lambda_52
   + isru_pwl_vehicle0_node3_time8_lambda_53
   + isru_pwl_vehicle0_node3_time8_lambda_54
   + isru_pwl_vehicle0_node3_time8_lambda_55
   + isru_pwl_vehicle0_node3_time8_lambda_56
   + isru_pwl_vehicle0_node3_time8_lambda_57
   + isru_pwl_vehicle0_node3_time8_lambda_58
   + isru_pwl_vehicle0_node3_time8_lambda_59
   + isru_pwl_vehicle0_node3_time8_lambda_60
   + isru_pwl_vehicle0_node3_time8_lambda_61
   + isru_pwl_vehicle0_node3_time8_lambda_62
   + isru_pwl_vehicle0_node3_time8_lambda_63
   + isru_pwl_vehicle0_node3_time8_graybit_0 <= 1
 isru_pwl_vehicle0_node3_time8_branch_pos_bit_1:
   isru_pwl_vehicle0_node3_time8_lambda_33
   + isru_pwl_vehicle0_node3_time8_lambda_34
   + isru_pwl_vehicle0_node3_time8_lambda_35
   + isru_pwl_vehicle0_node3_time8_lambda_36
   + isru_pwl_vehicle0_node3_time8_lambda_37
   + isru_pwl_vehicle0_node3_time8_lambda_38
   + isru_pwl_vehicle0_node3_time8_lambda_39
   + isru_pwl_vehicle0_node3_time8_lambda_40
   + isru_pwl_vehicle0_node3_time8_lambda_41
   + isru_pwl_vehicle0_node3_time8_lambda_42
   + isru_pwl_vehicle0_node3_time8_lambda_43
   + isru_pwl_vehicle0_node3_time8_lambda_44
   + isru_pwl_vehicle0_node3_time8_lambda_45
   + isru_pwl_vehicle0_node3_time8_lambda_46
   + isru_pwl_vehicle0_node3_time8_lambda_47
   + isru_pwl_vehicle0_node3_time8_lambda_48
   + isru_pwl_vehicle0_node3_time8_lambda_49
   + isru_pwl_vehicle0_node3_time8_lambda_50
   + isru_pwl_vehicle0_node3_time8_lambda_51
   + isru_pwl_vehicle0_node3_time8_lambda_52
   + isru_pwl_vehicle0_node3_time8_lambda_53
   + isru_pwl_vehicle0_node3_time8_lambda_54
   + isru_pwl_vehicle0_node3_time8_lambda_55
   + isru_pwl_vehicle0_node3_time8_lambda_56
   + isru_pwl_vehicle0_node3_time8_lambda_57
   + isru_pwl_vehicle0_node3_time8_lambda_58
   + isru_pwl_vehicle0_node3_time8_lambda_59
   + isru_pwl_vehicle0_node3_time8_lambda_60
   + isru_pwl_vehicle0_node3_time8_lambda_61
   + isru_pwl_vehicle0_node3_time8_lambda_62
   + isru_pwl_vehicle0_node3_time8_lambda_63
   + isru_pwl_vehicle0_node3_time8_lambda_64
   + isru_pwl_vehicle0_node3_time8_lambda_65
   + isru_pwl_vehicle0_node3_time8_lambda_66
   + isru_pwl_vehicle0_node3_time8_lambda_67
   + isru_pwl_vehicle0_node3_time8_lambda_68
   + isru_pwl_vehicle0_node3_time8_lambda_69
   + isru_pwl_vehicle0_node3_time8_lambda_70
   + isru_pwl_vehicle0_node3_time8_lambda_71
   + isru_pwl_vehicle0_node3_time8_lambda_72
   + isru_pwl_vehicle0_node3_time8_lambda_73
   + isru_pwl_vehicle0_node3_time8_lambda_74
   + isru_pwl_vehicle0_node3_time8_lambda_75
   + isru_pwl_vehicle0_node3_time8_lambda_76
   + isru_pwl_vehicle0_node3_time8_lambda_77
   + isru_pwl_vehicle0_node3_time8_lambda_78
   + isru_pwl_vehicle0_node3_time8_lambda_79
   + isru_pwl_vehicle0_node3_time8_lambda_80
   + isru_pwl_vehicle0_node3_time8_lambda_81
   + isru_pwl_vehicle0_node3_time8_lambda_82
   + isru_pwl_vehicle0_node3_time8_lambda_83
   + isru_pwl_vehicle0_node3_time8_lambda_84
   + isru_pwl_vehicle0_node3_time8_lambda_85
   + isru_pwl_vehicle0_node3_time8_lambda_86
   + isru_pwl_vehicle0_node3_time8_lambda_87
   + isru_pwl_vehicle0_node3_time8_lambda_88
   + isru_pwl_vehicle0_node3_time8_lambda_89
   + isru_pwl_vehicle0_node3_time8_lambda_90
   + isru_pwl_vehicle0_node3_time8_lambda_91
   + isru_pwl_vehicle0_node3_time8_lambda_92
   + isru_pwl_vehicle0_node3_time8_lambda_93
   + isru_pwl_vehicle0_node3_time8_lambda_94
   + isru_pwl_vehicle0_node3_time8_lambda_95
   - isru_pwl_vehicle0_node3_time8_graybit_1 <= 0
 isru_pwl_vehicle0_node3_time8_branch_neg_bit_1:
   isru_pwl_vehicle0_node3_time8_lambda_0
   + isru_pwl_vehicle0_node3_time8_lambda_1
   + isru_pwl_vehicle0_node3_time8_lambda_2
   + isru_pwl_vehicle0_node3_time8_lambda_3
   + isru_pwl_vehicle0_node3_time8_lambda_4
   + isru_pwl_vehicle0_node3_time8_lambda_5
   + isru_pwl_vehicle0_node3_time8_lambda_6
   + isru_pwl_vehicle0_node3_time8_lambda_7
   + isru_pwl_vehicle0_node3_time8_lambda_8
   + isru_pwl_vehicle0_node3_time8_lambda_9
   + isru_pwl_vehicle0_node3_time8_lambda_10
   + isru_pwl_vehicle0_node3_time8_lambda_11
   + isru_pwl_vehicle0_node3_time8_lambda_12
   + isru_pwl_vehicle0_node3_time8_lambda_13
   + isru_pwl_vehicle0_node3_time8_lambda_14
   + isru_pwl_vehicle0_node3_time8_lambda_15
   + isru_pwl_vehicle0_node3_time8_lambda_16
   + isru_pwl_vehicle0_node3_time8_lambda_17
   + isru_pwl_vehicle0_node3_time8_lambda_18
   + isru_pwl_vehicle0_node3_time8_lambda_19
   + isru_pwl_vehicle0_node3_time8_lambda_20
   + isru_pwl_vehicle0_node3_time8_lambda_21
   + isru_pwl_vehicle0_node3_time8_lambda_22
   + isru_pwl_vehicle0_node3_time8_lambda_23
   + isru_pwl_vehicle0_node3_time8_lambda_24
   + isru_pwl_vehicle0_node3_time8_lambda_25
   + isru_pwl_vehicle0_node3_time8_lambda_26
   + isru_pwl_vehicle0_node3_time8_lambda_27
   + isru_pwl_vehicle0_node3_time8_lambda_28
   + isru_pwl_vehicle0_node3_time8_lambda_29
   + isru_pwl_vehicle0_node3_time8_lambda_30
   + isru_pwl_vehicle0_node3_time8_lambda_31
   + isru_pwl_vehicle0_node3_time8_lambda_97
   + isru_pwl_vehicle0_node3_time8_lambda_98
   + isru_pwl_vehicle0_node3_time8_lambda_99
   + isru_pwl_vehicle0_node3_time8_lambda_100
   + isru_pwl_vehicle0_node3_time8_graybit_1 <= 1
 isru_pwl_vehicle0_node3_time8_branch_pos_bit_2:
   isru_pwl_vehicle0_node3_time8_lambda_17
   + isru_pwl_vehicle0_node3_time8_lambda_18
   + isru_pwl_vehicle0_node3_time8_lambda_19
   + isru_pwl_vehicle0_node3_time8_lambda_20
   + isru_pwl_vehicle0_node3_time8_lambda_21
   + isru_pwl_vehicle0_node3_time8_lambda_22
   + isru_pwl_vehicle0_node3_time8_lambda_23
   + isru_pwl_vehicle0_node3_time8_lambda_24
   + isru_pwl_vehicle0_node3_time8_lambda_25
   + isru_pwl_vehicle0_node3_time8_lambda_26
   + isru_pwl_vehicle0_node3_time8_lambda_27
   + isru_pwl_vehicle0_node3_time8_lambda_28
   + isru_pwl_vehicle0_node3_time8_lambda_29
   + isru_pwl_vehicle0_node3_time8_lambda_30
   + isru_pwl_vehicle0_node3_time8_lambda_31
   + isru_pwl_vehicle0_node3_time8_lambda_32
   + isru_pwl_vehicle0_node3_time8_lambda_33
   + isru_pwl_vehicle0_node3_time8_lambda_34
   + isru_pwl_vehicle0_node3_time8_lambda_35
   + isru_pwl_vehicle0_node3_time8_lambda_36
   + isru_pwl_vehicle0_node3_time8_lambda_37
   + isru_pwl_vehicle0_node3_time8_lambda_38
   + isru_pwl_vehicle0_node3_time8_lambda_39
   + isru_pwl_vehicle0_node3_time8_lambda_40
   + isru_pwl_vehicle0_node3_time8_lambda_41
   + isru_pwl_vehicle0_node3_time8_lambda_42
   + isru_pwl_vehicle0_node3_time8_lambda_43
   + isru_pwl_vehicle0_node3_time8_lambda_44
   + isru_pwl_vehicle0_node3_time8_lambda_45
   + isru_pwl_vehicle0_node3_time8_lambda_46
   + isru_pwl_vehicle0_node3_time8_lambda_47
   + isru_pwl_vehicle0_node3_time8_lambda_81
   + isru_pwl_vehicle0_node3_time8_lambda_82
   + isru_pwl_vehicle0_node3_time8_lambda_83
   + isru_pwl_vehicle0_node3_time8_lambda_84
   + isru_pwl_vehicle0_node3_time8_lambda_85
   + isru_pwl_vehicle0_node3_time8_lambda_86
   + isru_pwl_vehicle0_node3_time8_lambda_87
   + isru_pwl_vehicle0_node3_time8_lambda_88
   + isru_pwl_vehicle0_node3_time8_lambda_89
   + isru_pwl_vehicle0_node3_time8_lambda_90
   + isru_pwl_vehicle0_node3_time8_lambda_91
   + isru_pwl_vehicle0_node3_time8_lambda_92
   + isru_pwl_vehicle0_node3_time8_lambda_93
   + isru_pwl_vehicle0_node3_time8_lambda_94
   + isru_pwl_vehicle0_node3_time8_lambda_95
   + isru_pwl_vehicle0_node3_time8_lambda_96
   + isru_pwl_vehicle0_node3_time8_lambda_97
   + isru_pwl_vehicle0_node3_time8_lambda_98
   + isru_pwl_vehicle0_node3_time8_lambda_99
   + isru_pwl_vehicle0_node3_time8_lambda_100
   - isru_pwl_vehicle0_node3_time8_graybit_2 <= 0
 isru_pwl_vehicle0_node3_time8_branch_neg_bit_2:
   isru_pwl_vehicle0_node3_time8_lambda_0
   + isru_pwl_vehicle0_node3_time8_lambda_1
   + isru_pwl_vehicle0_node3_time8_lambda_2
   + isru_pwl_vehicle0_node3_time8_lambda_3
   + isru_pwl_vehicle0_node3_time8_lambda_4
   + isru_pwl_vehicle0_node3_time8_lambda_5
   + isru_pwl_vehicle0_node3_time8_lambda_6
   + isru_pwl_vehicle0_node3_time8_lambda_7
   + isru_pwl_vehicle0_node3_time8_lambda_8
   + isru_pwl_vehicle0_node3_time8_lambda_9
   + isru_pwl_vehicle0_node3_time8_lambda_10
   + isru_pwl_vehicle0_node3_time8_lambda_11
   + isru_pwl_vehicle0_node3_time8_lambda_12
   + isru_pwl_vehicle0_node3_time8_lambda_13
   + isru_pwl_vehicle0_node3_time8_lambda_14
   + isru_pwl_vehicle0_node3_time8_lambda_15
   + isru_pwl_vehicle0_node3_time8_lambda_49
   + isru_pwl_vehicle0_node3_time8_lambda_50
   + isru_pwl_vehicle0_node3_time8_lambda_51
   + isru_pwl_vehicle0_node3_time8_lambda_52
   + isru_pwl_vehicle0_node3_time8_lambda_53
   + isru_pwl_vehicle0_node3_time8_lambda_54
   + isru_pwl_vehicle0_node3_time8_lambda_55
   + isru_pwl_vehicle0_node3_time8_lambda_56
   + isru_pwl_vehicle0_node3_time8_lambda_57
   + isru_pwl_vehicle0_node3_time8_lambda_58
   + isru_pwl_vehicle0_node3_time8_lambda_59
   + isru_pwl_vehicle0_node3_time8_lambda_60
   + isru_pwl_vehicle0_node3_time8_lambda_61
   + isru_pwl_vehicle0_node3_time8_lambda_62
   + isru_pwl_vehicle0_node3_time8_lambda_63
   + isru_pwl_vehicle0_node3_time8_lambda_64
   + isru_pwl_vehicle0_node3_time8_lambda_65
   + isru_pwl_vehicle0_node3_time8_lambda_66
   + isru_pwl_vehicle0_node3_time8_lambda_67
   + isru_pwl_vehicle0_node3_time8_lambda_68
   + isru_pwl_vehicle0_node3_time8_lambda_69
   + isru_pwl_vehicle0_node3_time8_lambda_70
   + isru_pwl_vehicle0_node3_time8_lambda_71
   + isru_pwl_vehicle0_node3_time8_lambda_72
   + isru_pwl_vehicle0_node3_time8_lambda_73
   + isru_pwl_vehicle0_node3_time8_lambda_74
   + isru_pwl_vehicle0_node3_time8_lambda_75
   + isru_pwl_vehicle0_node3_time8_lambda_76
   + isru_pwl_vehicle0_node3_time8_lambda_77
   + isru_pwl_vehicle0_node3_time8_lambda_78
   + isru_pwl_vehicle0_node3_time8_lambda_79
   + isru_pwl_vehicle0_node3_time8_graybit_2 <= 1
 isru_pwl_vehicle0_node3_time8_branch_pos_bit_3:
   isru_pwl_vehicle0_node3_time8_lambda_9
   + isru_pwl_vehicle0_node3_time8_lambda_10
   + isru_pwl_vehicle0_node3_time8_lambda_11
   + isru_pwl_vehicle0_node3_time8_lambda_12
   + isru_pwl_vehicle0_node3_time8_lambda_13
   + isru_pwl_vehicle0_node3_time8_lambda_14
   + isru_pwl_vehicle0_node3_time8_lambda_15
   + isru_pwl_vehicle0_node3_time8_lambda_16
   + isru_pwl_vehicle0_node3_time8_lambda_17
   + isru_pwl_vehicle0_node3_time8_lambda_18
   + isru_pwl_vehicle0_node3_time8_lambda_19
   + isru_pwl_vehicle0_node3_time8_lambda_20
   + isru_pwl_vehicle0_node3_time8_lambda_21
   + isru_pwl_vehicle0_node3_time8_lambda_22
   + isru_pwl_vehicle0_node3_time8_lambda_23
   + isru_pwl_vehicle0_node3_time8_lambda_41
   + isru_pwl_vehicle0_node3_time8_lambda_42
   + isru_pwl_vehicle0_node3_time8_lambda_43
   + isru_pwl_vehicle0_node3_time8_lambda_44
   + isru_pwl_vehicle0_node3_time8_lambda_45
   + isru_pwl_vehicle0_node3_time8_lambda_46
   + isru_pwl_vehicle0_node3_time8_lambda_47
   + isru_pwl_vehicle0_node3_time8_lambda_48
   + isru_pwl_vehicle0_node3_time8_lambda_49
   + isru_pwl_vehicle0_node3_time8_lambda_50
   + isru_pwl_vehicle0_node3_time8_lambda_51
   + isru_pwl_vehicle0_node3_time8_lambda_52
   + isru_pwl_vehicle0_node3_time8_lambda_53
   + isru_pwl_vehicle0_node3_time8_lambda_54
   + isru_pwl_vehicle0_node3_time8_lambda_55
   + isru_pwl_vehicle0_node3_time8_lambda_73
   + isru_pwl_vehicle0_node3_time8_lambda_74
   + isru_pwl_vehicle0_node3_time8_lambda_75
   + isru_pwl_vehicle0_node3_time8_lambda_76
   + isru_pwl_vehicle0_node3_time8_lambda_77
   + isru_pwl_vehicle0_node3_time8_lambda_78
   + isru_pwl_vehicle0_node3_time8_lambda_79
   + isru_pwl_vehicle0_node3_time8_lambda_80
   + isru_pwl_vehicle0_node3_time8_lambda_81
   + isru_pwl_vehicle0_node3_time8_lambda_82
   + isru_pwl_vehicle0_node3_time8_lambda_83
   + isru_pwl_vehicle0_node3_time8_lambda_84
   + isru_pwl_vehicle0_node3_time8_lambda_85
   + isru_pwl_vehicle0_node3_time8_lambda_86
   + isru_pwl_vehicle0_node3_time8_lambda_87
   - isru_pwl_vehicle0_node3_time8_graybit_3 <= 0
 isru_pwl_vehicle0_node3_time8_branch_neg_bit_3:
   isru_pwl_vehicle0_node3_time8_lambda_0
   + isru_pwl_vehicle0_node3_time8_lambda_1
   + isru_pwl_vehicle0_node3_time8_lambda_2
   + isru_pwl_vehicle0_node3_time8_lambda_3
   + isru_pwl_vehicle0_node3_time8_lambda_4
   + isru_pwl_vehicle0_node3_time8_lambda_5
   + isru_pwl_vehicle0_node3_time8_lambda_6
   + isru_pwl_vehicle0_node3_time8_lambda_7
   + isru_pwl_vehicle0_node3_time8_lambda_25
   + isru_pwl_vehicle0_node3_time8_lambda_26
   + isru_pwl_vehicle0_node3_time8_lambda_27
   + isru_pwl_vehicle0_node3_time8_lambda_28
   + isru_pwl_vehicle0_node3_time8_lambda_29
   + isru_pwl_vehicle0_node3_time8_lambda_30
   + isru_pwl_vehicle0_node3_time8_lambda_31
   + isru_pwl_vehicle0_node3_time8_lambda_32
   + isru_pwl_vehicle0_node3_time8_lambda_33
   + isru_pwl_vehicle0_node3_time8_lambda_34
   + isru_pwl_vehicle0_node3_time8_lambda_35
   + isru_pwl_vehicle0_node3_time8_lambda_36
   + isru_pwl_vehicle0_node3_time8_lambda_37
   + isru_pwl_vehicle0_node3_time8_lambda_38
   + isru_pwl_vehicle0_node3_time8_lambda_39
   + isru_pwl_vehicle0_node3_time8_lambda_57
   + isru_pwl_vehicle0_node3_time8_lambda_58
   + isru_pwl_vehicle0_node3_time8_lambda_59
   + isru_pwl_vehicle0_node3_time8_lambda_60
   + isru_pwl_vehicle0_node3_time8_lambda_61
   + isru_pwl_vehicle0_node3_time8_lambda_62
   + isru_pwl_vehicle0_node3_time8_lambda_63
   + isru_pwl_vehicle0_node3_time8_lambda_64
   + isru_pwl_vehicle0_node3_time8_lambda_65
   + isru_pwl_vehicle0_node3_time8_lambda_66
   + isru_pwl_vehicle0_node3_time8_lambda_67
   + isru_pwl_vehicle0_node3_time8_lambda_68
   + isru_pwl_vehicle0_node3_time8_lambda_69
   + isru_pwl_vehicle0_node3_time8_lambda_70
   + isru_pwl_vehicle0_node3_time8_lambda_71
   + isru_pwl_vehicle0_node3_time8_lambda_89
   + isru_pwl_vehicle0_node3_time8_lambda_90
   + isru_pwl_vehicle0_node3_time8_lambda_91
   + isru_pwl_vehicle0_node3_time8_lambda_92
   + isru_pwl_vehicle0_node3_time8_lambda_93
   + isru_pwl_vehicle0_node3_time8_lambda_94
   + isru_pwl_vehicle0_node3_time8_lambda_95
   + isru_pwl_vehicle0_node3_time8_lambda_96
   + isru_pwl_vehicle0_node3_time8_lambda_97
   + isru_pwl_vehicle0_node3_time8_lambda_98
   + isru_pwl_vehicle0_node3_time8_lambda_99
   + isru_pwl_vehicle0_node3_time8_lambda_100
   + isru_pwl_vehicle0_node3_time8_graybit_3 <= 1
 isru_pwl_vehicle0_node3_time8_branch_pos_bit_4:
   isru_pwl_vehicle0_node3_time8_lambda_5
   + isru_pwl_vehicle0_node3_time8_lambda_6
   + isru_pwl_vehicle0_node3_time8_lambda_7
   + isru_pwl_vehicle0_node3_time8_lambda_8
   + isru_pwl_vehicle0_node3_time8_lambda_9
   + isru_pwl_vehicle0_node3_time8_lambda_10
   + isru_pwl_vehicle0_node3_time8_lambda_11
   + isru_pwl_vehicle0_node3_time8_lambda_21
   + isru_pwl_vehicle0_node3_time8_lambda_22
   + isru_pwl_vehicle0_node3_time8_lambda_23
   + isru_pwl_vehicle0_node3_time8_lambda_24
   + isru_pwl_vehicle0_node3_time8_lambda_25
   + isru_pwl_vehicle0_node3_time8_lambda_26
   + isru_pwl_vehicle0_node3_time8_lambda_27
   + isru_pwl_vehicle0_node3_time8_lambda_37
   + isru_pwl_vehicle0_node3_time8_lambda_38
   + isru_pwl_vehicle0_node3_time8_lambda_39
   + isru_pwl_vehicle0_node3_time8_lambda_40
   + isru_pwl_vehicle0_node3_time8_lambda_41
   + isru_pwl_vehicle0_node3_time8_lambda_42
   + isru_pwl_vehicle0_node3_time8_lambda_43
   + isru_pwl_vehicle0_node3_time8_lambda_53
   + isru_pwl_vehicle0_node3_time8_lambda_54
   + isru_pwl_vehicle0_node3_time8_lambda_55
   + isru_pwl_vehicle0_node3_time8_lambda_56
   + isru_pwl_vehicle0_node3_time8_lambda_57
   + isru_pwl_vehicle0_node3_time8_lambda_58
   + isru_pwl_vehicle0_node3_time8_lambda_59
   + isru_pwl_vehicle0_node3_time8_lambda_69
   + isru_pwl_vehicle0_node3_time8_lambda_70
   + isru_pwl_vehicle0_node3_time8_lambda_71
   + isru_pwl_vehicle0_node3_time8_lambda_72
   + isru_pwl_vehicle0_node3_time8_lambda_73
   + isru_pwl_vehicle0_node3_time8_lambda_74
   + isru_pwl_vehicle0_node3_time8_lambda_75
   + isru_pwl_vehicle0_node3_time8_lambda_85
   + isru_pwl_vehicle0_node3_time8_lambda_86
   + isru_pwl_vehicle0_node3_time8_lambda_87
   + isru_pwl_vehicle0_node3_time8_lambda_88
   + isru_pwl_vehicle0_node3_time8_lambda_89
   + isru_pwl_vehicle0_node3_time8_lambda_90
   + isru_pwl_vehicle0_node3_time8_lambda_91
   - isru_pwl_vehicle0_node3_time8_graybit_4 <= 0
 isru_pwl_vehicle0_node3_time8_branch_neg_bit_4:
   isru_pwl_vehicle0_node3_time8_lambda_0
   + isru_pwl_vehicle0_node3_time8_lambda_1
   + isru_pwl_vehicle0_node3_time8_lambda_2
   + isru_pwl_vehicle0_node3_time8_lambda_3
   + isru_pwl_vehicle0_node3_time8_lambda_13
   + isru_pwl_vehicle0_node3_time8_lambda_14
   + isru_pwl_vehicle0_node3_time8_lambda_15
   + isru_pwl_vehicle0_node3_time8_lambda_16
   + isru_pwl_vehicle0_node3_time8_lambda_17
   + isru_pwl_vehicle0_node3_time8_lambda_18
   + isru_pwl_vehicle0_node3_time8_lambda_19
   + isru_pwl_vehicle0_node3_time8_lambda_29
   + isru_pwl_vehicle0_node3_time8_lambda_30
   + isru_pwl_vehicle0_node3_time8_lambda_31
   + isru_pwl_vehicle0_node3_time8_lambda_32
   + isru_pwl_vehicle0_node3_time8_lambda_33
   + isru_pwl_vehicle0_node3_time8_lambda_34
   + isru_pwl_vehicle0_node3_time8_lambda_35
   + isru_pwl_vehicle0_node3_time8_lambda_45
   + isru_pwl_vehicle0_node3_time8_lambda_46
   + isru_pwl_vehicle0_node3_time8_lambda_47
   + isru_pwl_vehicle0_node3_time8_lambda_48
   + isru_pwl_vehicle0_node3_time8_lambda_49
   + isru_pwl_vehicle0_node3_time8_lambda_50
   + isru_pwl_vehicle0_node3_time8_lambda_51
   + isru_pwl_vehicle0_node3_time8_lambda_61
   + isru_pwl_vehicle0_node3_time8_lambda_62
   + isru_pwl_vehicle0_node3_time8_lambda_63
   + isru_pwl_vehicle0_node3_time8_lambda_64
   + isru_pwl_vehicle0_node3_time8_lambda_65
   + isru_pwl_vehicle0_node3_time8_lambda_66
   + isru_pwl_vehicle0_node3_time8_lambda_67
   + isru_pwl_vehicle0_node3_time8_lambda_77
   + isru_pwl_vehicle0_node3_time8_lambda_78
   + isru_pwl_vehicle0_node3_time8_lambda_79
   + isru_pwl_vehicle0_node3_time8_lambda_80
   + isru_pwl_vehicle0_node3_time8_lambda_81
   + isru_pwl_vehicle0_node3_time8_lambda_82
   + isru_pwl_vehicle0_node3_time8_lambda_83
   + isru_pwl_vehicle0_node3_time8_lambda_93
   + isru_pwl_vehicle0_node3_time8_lambda_94
   + isru_pwl_vehicle0_node3_time8_lambda_95
   + isru_pwl_vehicle0_node3_time8_lambda_96
   + isru_pwl_vehicle0_node3_time8_lambda_97
   + isru_pwl_vehicle0_node3_time8_lambda_98
   + isru_pwl_vehicle0_node3_time8_lambda_99
   + isru_pwl_vehicle0_node3_time8_lambda_100
   + isru_pwl_vehicle0_node3_time8_graybit_4 <= 1
 isru_pwl_vehicle0_node3_time8_branch_pos_bit_5:
   isru_pwl_vehicle0_node3_time8_lambda_3
   + isru_pwl_vehicle0_node3_time8_lambda_4
   + isru_pwl_vehicle0_node3_time8_lambda_5
   + isru_pwl_vehicle0_node3_time8_lambda_11
   + isru_pwl_vehicle0_node3_time8_lambda_12
   + isru_pwl_vehicle0_node3_time8_lambda_13
   + isru_pwl_vehicle0_node3_time8_lambda_19
   + isru_pwl_vehicle0_node3_time8_lambda_20
   + isru_pwl_vehicle0_node3_time8_lambda_21
   + isru_pwl_vehicle0_node3_time8_lambda_27
   + isru_pwl_vehicle0_node3_time8_lambda_28
   + isru_pwl_vehicle0_node3_time8_lambda_29
   + isru_pwl_vehicle0_node3_time8_lambda_35
   + isru_pwl_vehicle0_node3_time8_lambda_36
   + isru_pwl_vehicle0_node3_time8_lambda_37
   + isru_pwl_vehicle0_node3_time8_lambda_43
   + isru_pwl_vehicle0_node3_time8_lambda_44
   + isru_pwl_vehicle0_node3_time8_lambda_45
   + isru_pwl_vehicle0_node3_time8_lambda_51
   + isru_pwl_vehicle0_node3_time8_lambda_52
   + isru_pwl_vehicle0_node3_time8_lambda_53
   + isru_pwl_vehicle0_node3_time8_lambda_59
   + isru_pwl_vehicle0_node3_time8_lambda_60
   + isru_pwl_vehicle0_node3_time8_lambda_61
   + isru_pwl_vehicle0_node3_time8_lambda_67
   + isru_pwl_vehicle0_node3_time8_lambda_68
   + isru_pwl_vehicle0_node3_time8_lambda_69
   + isru_pwl_vehicle0_node3_time8_lambda_75
   + isru_pwl_vehicle0_node3_time8_lambda_76
   + isru_pwl_vehicle0_node3_time8_lambda_77
   + isru_pwl_vehicle0_node3_time8_lambda_83
   + isru_pwl_vehicle0_node3_time8_lambda_84
   + isru_pwl_vehicle0_node3_time8_lambda_85
   + isru_pwl_vehicle0_node3_time8_lambda_91
   + isru_pwl_vehicle0_node3_time8_lambda_92
   + isru_pwl_vehicle0_node3_time8_lambda_93
   + isru_pwl_vehicle0_node3_time8_lambda_99
   + isru_pwl_vehicle0_node3_time8_lambda_100
   - isru_pwl_vehicle0_node3_time8_graybit_5 <= 0
 isru_pwl_vehicle0_node3_time8_branch_neg_bit_5:
   isru_pwl_vehicle0_node3_time8_lambda_0
   + isru_pwl_vehicle0_node3_time8_lambda_1
   + isru_pwl_vehicle0_node3_time8_lambda_7
   + isru_pwl_vehicle0_node3_time8_lambda_8
   + isru_pwl_vehicle0_node3_time8_lambda_9
   + isru_pwl_vehicle0_node3_time8_lambda_15
   + isru_pwl_vehicle0_node3_time8_lambda_16
   + isru_pwl_vehicle0_node3_time8_lambda_17
   + isru_pwl_vehicle0_node3_time8_lambda_23
   + isru_pwl_vehicle0_node3_time8_lambda_24
   + isru_pwl_vehicle0_node3_time8_lambda_25
   + isru_pwl_vehicle0_node3_time8_lambda_31
   + isru_pwl_vehicle0_node3_time8_lambda_32
   + isru_pwl_vehicle0_node3_time8_lambda_33
   + isru_pwl_vehicle0_node3_time8_lambda_39
   + isru_pwl_vehicle0_node3_time8_lambda_40
   + isru_pwl_vehicle0_node3_time8_lambda_41
   + isru_pwl_vehicle0_node3_time8_lambda_47
   + isru_pwl_vehicle0_node3_time8_lambda_48
   + isru_pwl_vehicle0_node3_time8_lambda_49
   + isru_pwl_vehicle0_node3_time8_lambda_55
   + isru_pwl_vehicle0_node3_time8_lambda_56
   + isru_pwl_vehicle0_node3_time8_lambda_57
   + isru_pwl_vehicle0_node3_time8_lambda_63
   + isru_pwl_vehicle0_node3_time8_lambda_64
   + isru_pwl_vehicle0_node3_time8_lambda_65
   + isru_pwl_vehicle0_node3_time8_lambda_71
   + isru_pwl_vehicle0_node3_time8_lambda_72
   + isru_pwl_vehicle0_node3_time8_lambda_73
   + isru_pwl_vehicle0_node3_time8_lambda_79
   + isru_pwl_vehicle0_node3_time8_lambda_80
   + isru_pwl_vehicle0_node3_time8_lambda_81
   + isru_pwl_vehicle0_node3_time8_lambda_87
   + isru_pwl_vehicle0_node3_time8_lambda_88
   + isru_pwl_vehicle0_node3_time8_lambda_89
   + isru_pwl_vehicle0_node3_time8_lambda_95
   + isru_pwl_vehicle0_node3_time8_lambda_96
   + isru_pwl_vehicle0_node3_time8_lambda_97
   + isru_pwl_vehicle0_node3_time8_graybit_5 <= 1
 isru_pwl_vehicle0_node3_time8_branch_pos_bit_6:
   isru_pwl_vehicle0_node3_time8_lambda_2
   + isru_pwl_vehicle0_node3_time8_lambda_6
   + isru_pwl_vehicle0_node3_time8_lambda_10
   + isru_pwl_vehicle0_node3_time8_lambda_14
   + isru_pwl_vehicle0_node3_time8_lambda_18
   + isru_pwl_vehicle0_node3_time8_lambda_22
   + isru_pwl_vehicle0_node3_time8_lambda_26
   + isru_pwl_vehicle0_node3_time8_lambda_30
   + isru_pwl_vehicle0_node3_time8_lambda_34
   + isru_pwl_vehicle0_node3_time8_lambda_38
   + isru_pwl_vehicle0_node3_time8_lambda_42
   + isru_pwl_vehicle0_node3_time8_lambda_46
   + isru_pwl_vehicle0_node3_time8_lambda_50
   + isru_pwl_vehicle0_node3_time8_lambda_54
   + isru_pwl_vehicle0_node3_time8_lambda_58
   + isru_pwl_vehicle0_node3_time8_lambda_62
   + isru_pwl_vehicle0_node3_time8_lambda_66
   + isru_pwl_vehicle0_node3_time8_lambda_70
   + isru_pwl_vehicle0_node3_time8_lambda_74
   + isru_pwl_vehicle0_node3_time8_lambda_78
   + isru_pwl_vehicle0_node3_time8_lambda_82
   + isru_pwl_vehicle0_node3_time8_lambda_86
   + isru_pwl_vehicle0_node3_time8_lambda_90
   + isru_pwl_vehicle0_node3_time8_lambda_94
   + isru_pwl_vehicle0_node3_time8_lambda_98
   - isru_pwl_vehicle0_node3_time8_graybit_6 <= 0
 isru_pwl_vehicle0_node3_time8_branch_neg_bit_6:
   isru_pwl_vehicle0_node3_time8_lambda_0
   + isru_pwl_vehicle0_node3_time8_lambda_4
   + isru_pwl_vehicle0_node3_time8_lambda_8
   + isru_pwl_vehicle0_node3_time8_lambda_12
   + isru_pwl_vehicle0_node3_time8_lambda_16
   + isru_pwl_vehicle0_node3_time8_lambda_20
   + isru_pwl_vehicle0_node3_time8_lambda_24
   + isru_pwl_vehicle0_node3_time8_lambda_28
   + isru_pwl_vehicle0_node3_time8_lambda_32
   + isru_pwl_vehicle0_node3_time8_lambda_36
   + isru_pwl_vehicle0_node3_time8_lambda_40
   + isru_pwl_vehicle0_node3_time8_lambda_44
   + isru_pwl_vehicle0_node3_time8_lambda_48
   + isru_pwl_vehicle0_node3_time8_lambda_52
   + isru_pwl_vehicle0_node3_time8_lambda_56
   + isru_pwl_vehicle0_node3_time8_lambda_60
   + isru_pwl_vehicle0_node3_time8_lambda_64
   + isru_pwl_vehicle0_node3_time8_lambda_68
   + isru_pwl_vehicle0_node3_time8_lambda_72
   + isru_pwl_vehicle0_node3_time8_lambda_76
   + isru_pwl_vehicle0_node3_time8_lambda_80
   + isru_pwl_vehicle0_node3_time8_lambda_84
   + isru_pwl_vehicle0_node3_time8_lambda_88
   + isru_pwl_vehicle0_node3_time8_lambda_92
   + isru_pwl_vehicle0_node3_time8_lambda_96
   + isru_pwl_vehicle0_node3_time8_lambda_100
   + isru_pwl_vehicle0_node3_time8_graybit_6 <= 1
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1000000:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= 0
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1000001:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -1
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1000010:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -1
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1000011:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1000100:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -1
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1000101:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1000110:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1000111:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1001000:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -1
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1001001:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1001010:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1001011:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1001100:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1001101:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1001110:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1001111:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   + isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1010100:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1010101:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1010110:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1010111:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   + isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1011000:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1011001:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1011010:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1011011:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   + isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1011100:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1011101:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   + isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1011110:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   + isru_pwl_vehicle0_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time8_forbid_unused_code_1011111:
   - isru_pwl_vehicle0_node3_time8_graybit_0
   + isru_pwl_vehicle0_node3_time8_graybit_1
   - isru_pwl_vehicle0_node3_time8_graybit_2
   - isru_pwl_vehicle0_node3_time8_graybit_3
   - isru_pwl_vehicle0_node3_time8_graybit_4
   - isru_pwl_vehicle0_node3_time8_graybit_5
   - isru_pwl_vehicle0_node3_time8_graybit_6 >= -5
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity5:
   0.99984 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   + 0.0136986301369863 isru_arc_propellant_vehicle0_node3_time8 = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity9:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity10:
   - 0.00136986301369863 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,3,3,Tstart8,Tend13
   - 179.96 SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity11:
   sc_commodity_outflow_0,3,3,Tstart8,Tend13
   - sc_commodity_inflow_0,3,3,Tstart8,Tend13 = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start3_end3_time8:
   - Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,3,3,Tstart8,Tend13 >= 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_return
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew_return
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity2:
   - 42.825 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew
   - 42.825 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityconsumables
   - 42.825 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityconsumables
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityequipment
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityequipment = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditysamples
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditysamples = 0
 isru_pwl_vehicle1_node3_time8_lambda_sum:
   isru_pwl_vehicle1_node3_time8_lambda_0
   + isru_pwl_vehicle1_node3_time8_lambda_1
   + isru_pwl_vehicle1_node3_time8_lambda_2
   + isru_pwl_vehicle1_node3_time8_lambda_3
   + isru_pwl_vehicle1_node3_time8_lambda_4
   + isru_pwl_vehicle1_node3_time8_lambda_5
   + isru_pwl_vehicle1_node3_time8_lambda_6
   + isru_pwl_vehicle1_node3_time8_lambda_7
   + isru_pwl_vehicle1_node3_time8_lambda_8
   + isru_pwl_vehicle1_node3_time8_lambda_9
   + isru_pwl_vehicle1_node3_time8_lambda_10
   + isru_pwl_vehicle1_node3_time8_lambda_11
   + isru_pwl_vehicle1_node3_time8_lambda_12
   + isru_pwl_vehicle1_node3_time8_lambda_13
   + isru_pwl_vehicle1_node3_time8_lambda_14
   + isru_pwl_vehicle1_node3_time8_lambda_15
   + isru_pwl_vehicle1_node3_time8_lambda_16
   + isru_pwl_vehicle1_node3_time8_lambda_17
   + isru_pwl_vehicle1_node3_time8_lambda_18
   + isru_pwl_vehicle1_node3_time8_lambda_19
   + isru_pwl_vehicle1_node3_time8_lambda_20
   + isru_pwl_vehicle1_node3_time8_lambda_21
   + isru_pwl_vehicle1_node3_time8_lambda_22
   + isru_pwl_vehicle1_node3_time8_lambda_23
   + isru_pwl_vehicle1_node3_time8_lambda_24
   + isru_pwl_vehicle1_node3_time8_lambda_25
   + isru_pwl_vehicle1_node3_time8_lambda_26
   + isru_pwl_vehicle1_node3_time8_lambda_27
   + isru_pwl_vehicle1_node3_time8_lambda_28
   + isru_pwl_vehicle1_node3_time8_lambda_29
   + isru_pwl_vehicle1_node3_time8_lambda_30
   + isru_pwl_vehicle1_node3_time8_lambda_31
   + isru_pwl_vehicle1_node3_time8_lambda_32
   + isru_pwl_vehicle1_node3_time8_lambda_33
   + isru_pwl_vehicle1_node3_time8_lambda_34
   + isru_pwl_vehicle1_node3_time8_lambda_35
   + isru_pwl_vehicle1_node3_time8_lambda_36
   + isru_pwl_vehicle1_node3_time8_lambda_37
   + isru_pwl_vehicle1_node3_time8_lambda_38
   + isru_pwl_vehicle1_node3_time8_lambda_39
   + isru_pwl_vehicle1_node3_time8_lambda_40
   + isru_pwl_vehicle1_node3_time8_lambda_41
   + isru_pwl_vehicle1_node3_time8_lambda_42
   + isru_pwl_vehicle1_node3_time8_lambda_43
   + isru_pwl_vehicle1_node3_time8_lambda_44
   + isru_pwl_vehicle1_node3_time8_lambda_45
   + isru_pwl_vehicle1_node3_time8_lambda_46
   + isru_pwl_vehicle1_node3_time8_lambda_47
   + isru_pwl_vehicle1_node3_time8_lambda_48
   + isru_pwl_vehicle1_node3_time8_lambda_49
   + isru_pwl_vehicle1_node3_time8_lambda_50
   + isru_pwl_vehicle1_node3_time8_lambda_51
   + isru_pwl_vehicle1_node3_time8_lambda_52
   + isru_pwl_vehicle1_node3_time8_lambda_53
   + isru_pwl_vehicle1_node3_time8_lambda_54
   + isru_pwl_vehicle1_node3_time8_lambda_55
   + isru_pwl_vehicle1_node3_time8_lambda_56
   + isru_pwl_vehicle1_node3_time8_lambda_57
   + isru_pwl_vehicle1_node3_time8_lambda_58
   + isru_pwl_vehicle1_node3_time8_lambda_59
   + isru_pwl_vehicle1_node3_time8_lambda_60
   + isru_pwl_vehicle1_node3_time8_lambda_61
   + isru_pwl_vehicle1_node3_time8_lambda_62
   + isru_pwl_vehicle1_node3_time8_lambda_63
   + isru_pwl_vehicle1_node3_time8_lambda_64
   + isru_pwl_vehicle1_node3_time8_lambda_65
   + isru_pwl_vehicle1_node3_time8_lambda_66
   + isru_pwl_vehicle1_node3_time8_lambda_67
   + isru_pwl_vehicle1_node3_time8_lambda_68
   + isru_pwl_vehicle1_node3_time8_lambda_69
   + isru_pwl_vehicle1_node3_time8_lambda_70
   + isru_pwl_vehicle1_node3_time8_lambda_71
   + isru_pwl_vehicle1_node3_time8_lambda_72
   + isru_pwl_vehicle1_node3_time8_lambda_73
   + isru_pwl_vehicle1_node3_time8_lambda_74
   + isru_pwl_vehicle1_node3_time8_lambda_75
   + isru_pwl_vehicle1_node3_time8_lambda_76
   + isru_pwl_vehicle1_node3_time8_lambda_77
   + isru_pwl_vehicle1_node3_time8_lambda_78
   + isru_pwl_vehicle1_node3_time8_lambda_79
   + isru_pwl_vehicle1_node3_time8_lambda_80
   + isru_pwl_vehicle1_node3_time8_lambda_81
   + isru_pwl_vehicle1_node3_time8_lambda_82
   + isru_pwl_vehicle1_node3_time8_lambda_83
   + isru_pwl_vehicle1_node3_time8_lambda_84
   + isru_pwl_vehicle1_node3_time8_lambda_85
   + isru_pwl_vehicle1_node3_time8_lambda_86
   + isru_pwl_vehicle1_node3_time8_lambda_87
   + isru_pwl_vehicle1_node3_time8_lambda_88
   + isru_pwl_vehicle1_node3_time8_lambda_89
   + isru_pwl_vehicle1_node3_time8_lambda_90
   + isru_pwl_vehicle1_node3_time8_lambda_91
   + isru_pwl_vehicle1_node3_time8_lambda_92
   + isru_pwl_vehicle1_node3_time8_lambda_93
   + isru_pwl_vehicle1_node3_time8_lambda_94
   + isru_pwl_vehicle1_node3_time8_lambda_95
   + isru_pwl_vehicle1_node3_time8_lambda_96
   + isru_pwl_vehicle1_node3_time8_lambda_97
   + isru_pwl_vehicle1_node3_time8_lambda_98
   + isru_pwl_vehicle1_node3_time8_lambda_99
   + isru_pwl_vehicle1_node3_time8_lambda_100 = 1
 isru_pwl_vehicle1_node3_time8_x_interp:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   - 100 isru_pwl_vehicle1_node3_time8_lambda_1
   - 200 isru_pwl_vehicle1_node3_time8_lambda_2
   - 300 isru_pwl_vehicle1_node3_time8_lambda_3
   - 400 isru_pwl_vehicle1_node3_time8_lambda_4
   - 500 isru_pwl_vehicle1_node3_time8_lambda_5
   - 600 isru_pwl_vehicle1_node3_time8_lambda_6
   - 700 isru_pwl_vehicle1_node3_time8_lambda_7
   - 800 isru_pwl_vehicle1_node3_time8_lambda_8
   - 900 isru_pwl_vehicle1_node3_time8_lambda_9
   - 1000 isru_pwl_vehicle1_node3_time8_lambda_10
   - 1100 isru_pwl_vehicle1_node3_time8_lambda_11
   - 1200 isru_pwl_vehicle1_node3_time8_lambda_12
   - 1300 isru_pwl_vehicle1_node3_time8_lambda_13
   - 1400 isru_pwl_vehicle1_node3_time8_lambda_14
   - 1500 isru_pwl_vehicle1_node3_time8_lambda_15
   - 1600 isru_pwl_vehicle1_node3_time8_lambda_16
   - 1700 isru_pwl_vehicle1_node3_time8_lambda_17
   - 1800 isru_pwl_vehicle1_node3_time8_lambda_18
   - 1900 isru_pwl_vehicle1_node3_time8_lambda_19
   - 2000 isru_pwl_vehicle1_node3_time8_lambda_20
   - 2100 isru_pwl_vehicle1_node3_time8_lambda_21
   - 2200 isru_pwl_vehicle1_node3_time8_lambda_22
   - 2300 isru_pwl_vehicle1_node3_time8_lambda_23
   - 2400 isru_pwl_vehicle1_node3_time8_lambda_24
   - 2500 isru_pwl_vehicle1_node3_time8_lambda_25
   - 2600 isru_pwl_vehicle1_node3_time8_lambda_26
   - 2700 isru_pwl_vehicle1_node3_time8_lambda_27
   - 2800 isru_pwl_vehicle1_node3_time8_lambda_28
   - 2900 isru_pwl_vehicle1_node3_time8_lambda_29
   - 3000 isru_pwl_vehicle1_node3_time8_lambda_30
   - 3100 isru_pwl_vehicle1_node3_time8_lambda_31
   - 3200 isru_pwl_vehicle1_node3_time8_lambda_32
   - 3300 isru_pwl_vehicle1_node3_time8_lambda_33
   - 3400 isru_pwl_vehicle1_node3_time8_lambda_34
   - 3500 isru_pwl_vehicle1_node3_time8_lambda_35
   - 3600 isru_pwl_vehicle1_node3_time8_lambda_36
   - 3700 isru_pwl_vehicle1_node3_time8_lambda_37
   - 3800 isru_pwl_vehicle1_node3_time8_lambda_38
   - 3900 isru_pwl_vehicle1_node3_time8_lambda_39
   - 4000 isru_pwl_vehicle1_node3_time8_lambda_40
   - 4100 isru_pwl_vehicle1_node3_time8_lambda_41
   - 4200 isru_pwl_vehicle1_node3_time8_lambda_42
   - 4300 isru_pwl_vehicle1_node3_time8_lambda_43
   - 4400 isru_pwl_vehicle1_node3_time8_lambda_44
   - 4500 isru_pwl_vehicle1_node3_time8_lambda_45
   - 4600 isru_pwl_vehicle1_node3_time8_lambda_46
   - 4700 isru_pwl_vehicle1_node3_time8_lambda_47
   - 4800 isru_pwl_vehicle1_node3_time8_lambda_48
   - 4900 isru_pwl_vehicle1_node3_time8_lambda_49
   - 5000 isru_pwl_vehicle1_node3_time8_lambda_50
   - 5100 isru_pwl_vehicle1_node3_time8_lambda_51
   - 5200 isru_pwl_vehicle1_node3_time8_lambda_52
   - 5300 isru_pwl_vehicle1_node3_time8_lambda_53
   - 5400 isru_pwl_vehicle1_node3_time8_lambda_54
   - 5500 isru_pwl_vehicle1_node3_time8_lambda_55
   - 5600 isru_pwl_vehicle1_node3_time8_lambda_56
   - 5700 isru_pwl_vehicle1_node3_time8_lambda_57
   - 5800 isru_pwl_vehicle1_node3_time8_lambda_58
   - 5900 isru_pwl_vehicle1_node3_time8_lambda_59
   - 6000 isru_pwl_vehicle1_node3_time8_lambda_60
   - 6100 isru_pwl_vehicle1_node3_time8_lambda_61
   - 6200 isru_pwl_vehicle1_node3_time8_lambda_62
   - 6300 isru_pwl_vehicle1_node3_time8_lambda_63
   - 6400 isru_pwl_vehicle1_node3_time8_lambda_64
   - 6500 isru_pwl_vehicle1_node3_time8_lambda_65
   - 6600 isru_pwl_vehicle1_node3_time8_lambda_66
   - 6700 isru_pwl_vehicle1_node3_time8_lambda_67
   - 6800 isru_pwl_vehicle1_node3_time8_lambda_68
   - 6900 isru_pwl_vehicle1_node3_time8_lambda_69
   - 7000 isru_pwl_vehicle1_node3_time8_lambda_70
   - 7100 isru_pwl_vehicle1_node3_time8_lambda_71
   - 7200 isru_pwl_vehicle1_node3_time8_lambda_72
   - 7300 isru_pwl_vehicle1_node3_time8_lambda_73
   - 7400 isru_pwl_vehicle1_node3_time8_lambda_74
   - 7500 isru_pwl_vehicle1_node3_time8_lambda_75
   - 7600 isru_pwl_vehicle1_node3_time8_lambda_76
   - 7700 isru_pwl_vehicle1_node3_time8_lambda_77
   - 7800 isru_pwl_vehicle1_node3_time8_lambda_78
   - 7900 isru_pwl_vehicle1_node3_time8_lambda_79
   - 8000 isru_pwl_vehicle1_node3_time8_lambda_80
   - 8100 isru_pwl_vehicle1_node3_time8_lambda_81
   - 8200 isru_pwl_vehicle1_node3_time8_lambda_82
   - 8300 isru_pwl_vehicle1_node3_time8_lambda_83
   - 8400 isru_pwl_vehicle1_node3_time8_lambda_84
   - 8500 isru_pwl_vehicle1_node3_time8_lambda_85
   - 8600 isru_pwl_vehicle1_node3_time8_lambda_86
   - 8700 isru_pwl_vehicle1_node3_time8_lambda_87
   - 8800 isru_pwl_vehicle1_node3_time8_lambda_88
   - 8900 isru_pwl_vehicle1_node3_time8_lambda_89
   - 9000 isru_pwl_vehicle1_node3_time8_lambda_90
   - 9100 isru_pwl_vehicle1_node3_time8_lambda_91
   - 9200 isru_pwl_vehicle1_node3_time8_lambda_92
   - 9300 isru_pwl_vehicle1_node3_time8_lambda_93
   - 9400 isru_pwl_vehicle1_node3_time8_lambda_94
   - 9500 isru_pwl_vehicle1_node3_time8_lambda_95
   - 9600 isru_pwl_vehicle1_node3_time8_lambda_96
   - 9700 isru_pwl_vehicle1_node3_time8_lambda_97
   - 9800 isru_pwl_vehicle1_node3_time8_lambda_98
   - 9900 isru_pwl_vehicle1_node3_time8_lambda_99
   - 10000 isru_pwl_vehicle1_node3_time8_lambda_100 = 0
 isru_pwl_vehicle1_node3_time8_z_interp:
   isru_arc_propellant_vehicle1_node3_time8
   - 985.2825563858833 isru_pwl_vehicle1_node3_time8_lambda_4
   - 1500.748691745031 isru_pwl_vehicle1_node3_time8_lambda_5
   - 2088.933864258242 isru_pwl_vehicle1_node3_time8_lambda_6
   - 2737.018880329098 isru_pwl_vehicle1_node3_time8_lambda_7
   - 3434.228243716464 isru_pwl_vehicle1_node3_time8_lambda_8
   - 4171.526536767735 isru_pwl_vehicle1_node3_time8_lambda_9
   - 4941.357797288778 isru_pwl_vehicle1_node3_time8_lambda_10
   - 5737.422001432911 isru_pwl_vehicle1_node3_time8_lambda_11
   - 6554.483550637531 isru_pwl_vehicle1_node3_time8_lambda_12
   - 7388.207344829402 isru_pwl_vehicle1_node3_time8_lambda_13
   - 8235.01861825687 isru_pwl_vehicle1_node3_time8_lambda_14
   - 9091.983230072974 isru_pwl_vehicle1_node3_time8_lambda_15
   - 9956.705549371904 isru_pwl_vehicle1_node3_time8_lambda_16
   - 10827.24146264956 isru_pwl_vehicle1_node3_time8_lambda_17
   - 11702.02436835233 isru_pwl_vehicle1_node3_time8_lambda_18
   - 12579.8023150352 isru_pwl_vehicle1_node3_time8_lambda_19
   - 13459.5846925414 isru_pwl_vehicle1_node3_time8_lambda_20
   - 14340.59710465161 isru_pwl_vehicle1_node3_time8_lambda_21
   - 15222.24324128196 isru_pwl_vehicle1_node3_time8_lambda_22
   - 16104.07273241018 isru_pwl_vehicle1_node3_time8_lambda_23
   - 16985.75410784817 isru_pwl_vehicle1_node3_time8_lambda_24
   - 17867.0521096901 isru_pwl_vehicle1_node3_time8_lambda_25
   - 18747.80871029746 isru_pwl_vehicle1_node3_time8_lambda_26
   - 19627.92728025435 isru_pwl_vehicle1_node3_time8_lambda_27
   - 20507.35942976479 isru_pwl_vehicle1_node3_time8_lambda_28
   - 21386.09411514398 isru_pwl_vehicle1_node3_time8_lambda_29
   - 22264.14866083277 isru_pwl_vehicle1_node3_time8_lambda_30
   - 23141.56139800195 isru_pwl_vehicle1_node3_time8_lambda_31
   - 24018.38566440885 isru_pwl_vehicle1_node3_time8_lambda_32
   - 24894.68494767318 isru_pwl_vehicle1_node3_time8_lambda_33
   - 25770.52898638042 isru_pwl_vehicle1_node3_time8_lambda_34
   - 26645.99067111392 isru_pwl_vehicle1_node3_time8_lambda_35
   - 27521.14361128332 isru_pwl_vehicle1_node3_time8_lambda_36
   - 28396.06025399472 isru_pwl_vehicle1_node3_time8_lambda_37
   - 29270.81045866316 isru_pwl_vehicle1_node3_time8_lambda_38
   - 30145.46044600507 isru_pwl_vehicle1_node3_time8_lambda_39
   - 31020.07205281519 isru_pwl_vehicle1_node3_time8_lambda_40
   - 31894.70223483293 isru_pwl_vehicle1_node3_time8_lambda_41
   - 32769.40276929723 isru_pwl_vehicle1_node3_time8_lambda_42
   - 33644.22011670309 isru_pwl_vehicle1_node3_time8_lambda_43
   - 34519.19540800239 isru_pwl_vehicle1_node3_time8_lambda_44
   - 35394.36452920375 isru_pwl_vehicle1_node3_time8_lambda_45
   - 36269.75828016792 isru_pwl_vehicle1_node3_time8_lambda_46
   - 37145.40258848952 isru_pwl_vehicle1_node3_time8_lambda_47
   - 38021.31876281364 isru_pwl_vehicle1_node3_time8_lambda_48
   - 38897.52377284662 isru_pwl_vehicle1_node3_time8_lambda_49
   - 39774.03054576725 isru_pwl_vehicle1_node3_time8_lambda_50
   - 40650.84827079403 isru_pwl_vehicle1_node3_time8_lambda_51
   - 41527.98270537665 isru_pwl_vehicle1_node3_time8_lambda_52
   - 42405.43647790508 isru_pwl_vehicle1_node3_time8_lambda_53
   - 43283.20938301237 isru_pwl_vehicle1_node3_time8_lambda_54
   - 44161.29866652277 isru_pwl_vehicle1_node3_time8_lambda_55
   - 45039.69929789972 isru_pwl_vehicle1_node3_time8_lambda_56
   - 45918.40422870246 isru_pwl_vehicle1_node3_time8_lambda_57
   - 46797.40463609257 isru_pwl_vehicle1_node3_time8_lambda_58
   - 47676.69015085884 isru_pwl_vehicle1_node3_time8_lambda_59
   - 48556.24906977034 isru_pwl_vehicle1_node3_time8_lambda_60
   - 49436.06855233612 isru_pwl_vehicle1_node3_time8_lambda_61
   - 50316.13480225825 isru_pwl_vehicle1_node3_time8_lambda_62
   - 51196.4332340237 isru_pwl_vehicle1_node3_time8_lambda_63
   - 52076.94862519771 isru_pwl_vehicle1_node3_time8_lambda_64
   - 52957.66525506565 isru_pwl_vehicle1_node3_time8_lambda_65
   - 53838.56703032609 isru_pwl_vehicle1_node3_time8_lambda_66
   - 54719.63759857266 isru_pwl_vehicle1_node3_time8_lambda_67
   - 55600.860450318 isru_pwl_vehicle1_node3_time8_lambda_68
   - 56482.21901031626 isru_pwl_vehicle1_node3_time8_lambda_69
   - 57363.69671893076 isru_pwl_vehicle1_node3_time8_lambda_70
   - 58245.27710427711 isru_pwl_vehicle1_node3_time8_lambda_71
   - 59126.94384584791 isru_pwl_vehicle1_node3_time8_lambda_72
   - 60008.68083029681 isru_pwl_vehicle1_node3_time8_lambda_73
   - 60890.47220002831 isru_pwl_vehicle1_node3_time8_lambda_74
   - 61772.30239520559 isru_pwl_vehicle1_node3_time8_lambda_75
   - 62654.15618975411 isru_pwl_vehicle1_node3_time8_lambda_76
   - 63536.01872190295 isru_pwl_vehicle1_node3_time8_lambda_77
   - 64417.87551977086 isru_pwl_vehicle1_node3_time8_lambda_78
   - 65299.71252246922 isru_pwl_vehicle1_node3_time8_lambda_79
   - 66181.5160971603 isru_pwl_vehicle1_node3_time8_lambda_80
   - 67063.27305247675 isru_pwl_vehicle1_node3_time8_lambda_81
   - 67944.97064867713 isru_pwl_vehicle1_node3_time8_lambda_82
   - 68826.59660488224 isru_pwl_vehicle1_node3_time8_lambda_83
   - 69708.1391037096 isru_pwl_vehicle1_node3_time8_lambda_84
   - 70589.58679359611 isru_pwl_vehicle1_node3_time8_lambda_85
   - 71470.92878907495 isru_pwl_vehicle1_node3_time8_lambda_86
   - 72352.15466924875 isru_pwl_vehicle1_node3_time8_lambda_87
   - 73233.25447468 isru_pwl_vehicle1_node3_time8_lambda_88
   - 74114.21870289929 isru_pwl_vehicle1_node3_time8_lambda_89
   - 74995.03830271348 isru_pwl_vehicle1_node3_time8_lambda_90
   - 75875.70466747832 isru_pwl_vehicle1_node3_time8_lambda_91
   - 76756.20962748471 isru_pwl_vehicle1_node3_time8_lambda_92
   - 77636.5454415929 isru_pwl_vehicle1_node3_time8_lambda_93
   - 78516.70478823519 isru_pwl_vehicle1_node3_time8_lambda_94
   - 79396.68075589606 isru_pwl_vehicle1_node3_time8_lambda_95
   - 80276.46683316681 isru_pwl_vehicle1_node3_time8_lambda_96
   - 81156.05689846189 isru_pwl_vehicle1_node3_time8_lambda_97
   - 82035.44520947429 isru_pwl_vehicle1_node3_time8_lambda_98
   - 82914.62639243968 isru_pwl_vehicle1_node3_time8_lambda_99
   - 83793.5954312698 isru_pwl_vehicle1_node3_time8_lambda_100 <= 0
 isru_pwl_vehicle1_node3_time8_branch_pos_bit_0:
   isru_pwl_vehicle1_node3_time8_lambda_65
   + isru_pwl_vehicle1_node3_time8_lambda_66
   + isru_pwl_vehicle1_node3_time8_lambda_67
   + isru_pwl_vehicle1_node3_time8_lambda_68
   + isru_pwl_vehicle1_node3_time8_lambda_69
   + isru_pwl_vehicle1_node3_time8_lambda_70
   + isru_pwl_vehicle1_node3_time8_lambda_71
   + isru_pwl_vehicle1_node3_time8_lambda_72
   + isru_pwl_vehicle1_node3_time8_lambda_73
   + isru_pwl_vehicle1_node3_time8_lambda_74
   + isru_pwl_vehicle1_node3_time8_lambda_75
   + isru_pwl_vehicle1_node3_time8_lambda_76
   + isru_pwl_vehicle1_node3_time8_lambda_77
   + isru_pwl_vehicle1_node3_time8_lambda_78
   + isru_pwl_vehicle1_node3_time8_lambda_79
   + isru_pwl_vehicle1_node3_time8_lambda_80
   + isru_pwl_vehicle1_node3_time8_lambda_81
   + isru_pwl_vehicle1_node3_time8_lambda_82
   + isru_pwl_vehicle1_node3_time8_lambda_83
   + isru_pwl_vehicle1_node3_time8_lambda_84
   + isru_pwl_vehicle1_node3_time8_lambda_85
   + isru_pwl_vehicle1_node3_time8_lambda_86
   + isru_pwl_vehicle1_node3_time8_lambda_87
   + isru_pwl_vehicle1_node3_time8_lambda_88
   + isru_pwl_vehicle1_node3_time8_lambda_89
   + isru_pwl_vehicle1_node3_time8_lambda_90
   + isru_pwl_vehicle1_node3_time8_lambda_91
   + isru_pwl_vehicle1_node3_time8_lambda_92
   + isru_pwl_vehicle1_node3_time8_lambda_93
   + isru_pwl_vehicle1_node3_time8_lambda_94
   + isru_pwl_vehicle1_node3_time8_lambda_95
   + isru_pwl_vehicle1_node3_time8_lambda_96
   + isru_pwl_vehicle1_node3_time8_lambda_97
   + isru_pwl_vehicle1_node3_time8_lambda_98
   + isru_pwl_vehicle1_node3_time8_lambda_99
   + isru_pwl_vehicle1_node3_time8_lambda_100
   - isru_pwl_vehicle1_node3_time8_graybit_0 <= 0
 isru_pwl_vehicle1_node3_time8_branch_neg_bit_0:
   isru_pwl_vehicle1_node3_time8_lambda_0
   + isru_pwl_vehicle1_node3_time8_lambda_1
   + isru_pwl_vehicle1_node3_time8_lambda_2
   + isru_pwl_vehicle1_node3_time8_lambda_3
   + isru_pwl_vehicle1_node3_time8_lambda_4
   + isru_pwl_vehicle1_node3_time8_lambda_5
   + isru_pwl_vehicle1_node3_time8_lambda_6
   + isru_pwl_vehicle1_node3_time8_lambda_7
   + isru_pwl_vehicle1_node3_time8_lambda_8
   + isru_pwl_vehicle1_node3_time8_lambda_9
   + isru_pwl_vehicle1_node3_time8_lambda_10
   + isru_pwl_vehicle1_node3_time8_lambda_11
   + isru_pwl_vehicle1_node3_time8_lambda_12
   + isru_pwl_vehicle1_node3_time8_lambda_13
   + isru_pwl_vehicle1_node3_time8_lambda_14
   + isru_pwl_vehicle1_node3_time8_lambda_15
   + isru_pwl_vehicle1_node3_time8_lambda_16
   + isru_pwl_vehicle1_node3_time8_lambda_17
   + isru_pwl_vehicle1_node3_time8_lambda_18
   + isru_pwl_vehicle1_node3_time8_lambda_19
   + isru_pwl_vehicle1_node3_time8_lambda_20
   + isru_pwl_vehicle1_node3_time8_lambda_21
   + isru_pwl_vehicle1_node3_time8_lambda_22
   + isru_pwl_vehicle1_node3_time8_lambda_23
   + isru_pwl_vehicle1_node3_time8_lambda_24
   + isru_pwl_vehicle1_node3_time8_lambda_25
   + isru_pwl_vehicle1_node3_time8_lambda_26
   + isru_pwl_vehicle1_node3_time8_lambda_27
   + isru_pwl_vehicle1_node3_time8_lambda_28
   + isru_pwl_vehicle1_node3_time8_lambda_29
   + isru_pwl_vehicle1_node3_time8_lambda_30
   + isru_pwl_vehicle1_node3_time8_lambda_31
   + isru_pwl_vehicle1_node3_time8_lambda_32
   + isru_pwl_vehicle1_node3_time8_lambda_33
   + isru_pwl_vehicle1_node3_time8_lambda_34
   + isru_pwl_vehicle1_node3_time8_lambda_35
   + isru_pwl_vehicle1_node3_time8_lambda_36
   + isru_pwl_vehicle1_node3_time8_lambda_37
   + isru_pwl_vehicle1_node3_time8_lambda_38
   + isru_pwl_vehicle1_node3_time8_lambda_39
   + isru_pwl_vehicle1_node3_time8_lambda_40
   + isru_pwl_vehicle1_node3_time8_lambda_41
   + isru_pwl_vehicle1_node3_time8_lambda_42
   + isru_pwl_vehicle1_node3_time8_lambda_43
   + isru_pwl_vehicle1_node3_time8_lambda_44
   + isru_pwl_vehicle1_node3_time8_lambda_45
   + isru_pwl_vehicle1_node3_time8_lambda_46
   + isru_pwl_vehicle1_node3_time8_lambda_47
   + isru_pwl_vehicle1_node3_time8_lambda_48
   + isru_pwl_vehicle1_node3_time8_lambda_49
   + isru_pwl_vehicle1_node3_time8_lambda_50
   + isru_pwl_vehicle1_node3_time8_lambda_51
   + isru_pwl_vehicle1_node3_time8_lambda_52
   + isru_pwl_vehicle1_node3_time8_lambda_53
   + isru_pwl_vehicle1_node3_time8_lambda_54
   + isru_pwl_vehicle1_node3_time8_lambda_55
   + isru_pwl_vehicle1_node3_time8_lambda_56
   + isru_pwl_vehicle1_node3_time8_lambda_57
   + isru_pwl_vehicle1_node3_time8_lambda_58
   + isru_pwl_vehicle1_node3_time8_lambda_59
   + isru_pwl_vehicle1_node3_time8_lambda_60
   + isru_pwl_vehicle1_node3_time8_lambda_61
   + isru_pwl_vehicle1_node3_time8_lambda_62
   + isru_pwl_vehicle1_node3_time8_lambda_63
   + isru_pwl_vehicle1_node3_time8_graybit_0 <= 1
 isru_pwl_vehicle1_node3_time8_branch_pos_bit_1:
   isru_pwl_vehicle1_node3_time8_lambda_33
   + isru_pwl_vehicle1_node3_time8_lambda_34
   + isru_pwl_vehicle1_node3_time8_lambda_35
   + isru_pwl_vehicle1_node3_time8_lambda_36
   + isru_pwl_vehicle1_node3_time8_lambda_37
   + isru_pwl_vehicle1_node3_time8_lambda_38
   + isru_pwl_vehicle1_node3_time8_lambda_39
   + isru_pwl_vehicle1_node3_time8_lambda_40
   + isru_pwl_vehicle1_node3_time8_lambda_41
   + isru_pwl_vehicle1_node3_time8_lambda_42
   + isru_pwl_vehicle1_node3_time8_lambda_43
   + isru_pwl_vehicle1_node3_time8_lambda_44
   + isru_pwl_vehicle1_node3_time8_lambda_45
   + isru_pwl_vehicle1_node3_time8_lambda_46
   + isru_pwl_vehicle1_node3_time8_lambda_47
   + isru_pwl_vehicle1_node3_time8_lambda_48
   + isru_pwl_vehicle1_node3_time8_lambda_49
   + isru_pwl_vehicle1_node3_time8_lambda_50
   + isru_pwl_vehicle1_node3_time8_lambda_51
   + isru_pwl_vehicle1_node3_time8_lambda_52
   + isru_pwl_vehicle1_node3_time8_lambda_53
   + isru_pwl_vehicle1_node3_time8_lambda_54
   + isru_pwl_vehicle1_node3_time8_lambda_55
   + isru_pwl_vehicle1_node3_time8_lambda_56
   + isru_pwl_vehicle1_node3_time8_lambda_57
   + isru_pwl_vehicle1_node3_time8_lambda_58
   + isru_pwl_vehicle1_node3_time8_lambda_59
   + isru_pwl_vehicle1_node3_time8_lambda_60
   + isru_pwl_vehicle1_node3_time8_lambda_61
   + isru_pwl_vehicle1_node3_time8_lambda_62
   + isru_pwl_vehicle1_node3_time8_lambda_63
   + isru_pwl_vehicle1_node3_time8_lambda_64
   + isru_pwl_vehicle1_node3_time8_lambda_65
   + isru_pwl_vehicle1_node3_time8_lambda_66
   + isru_pwl_vehicle1_node3_time8_lambda_67
   + isru_pwl_vehicle1_node3_time8_lambda_68
   + isru_pwl_vehicle1_node3_time8_lambda_69
   + isru_pwl_vehicle1_node3_time8_lambda_70
   + isru_pwl_vehicle1_node3_time8_lambda_71
   + isru_pwl_vehicle1_node3_time8_lambda_72
   + isru_pwl_vehicle1_node3_time8_lambda_73
   + isru_pwl_vehicle1_node3_time8_lambda_74
   + isru_pwl_vehicle1_node3_time8_lambda_75
   + isru_pwl_vehicle1_node3_time8_lambda_76
   + isru_pwl_vehicle1_node3_time8_lambda_77
   + isru_pwl_vehicle1_node3_time8_lambda_78
   + isru_pwl_vehicle1_node3_time8_lambda_79
   + isru_pwl_vehicle1_node3_time8_lambda_80
   + isru_pwl_vehicle1_node3_time8_lambda_81
   + isru_pwl_vehicle1_node3_time8_lambda_82
   + isru_pwl_vehicle1_node3_time8_lambda_83
   + isru_pwl_vehicle1_node3_time8_lambda_84
   + isru_pwl_vehicle1_node3_time8_lambda_85
   + isru_pwl_vehicle1_node3_time8_lambda_86
   + isru_pwl_vehicle1_node3_time8_lambda_87
   + isru_pwl_vehicle1_node3_time8_lambda_88
   + isru_pwl_vehicle1_node3_time8_lambda_89
   + isru_pwl_vehicle1_node3_time8_lambda_90
   + isru_pwl_vehicle1_node3_time8_lambda_91
   + isru_pwl_vehicle1_node3_time8_lambda_92
   + isru_pwl_vehicle1_node3_time8_lambda_93
   + isru_pwl_vehicle1_node3_time8_lambda_94
   + isru_pwl_vehicle1_node3_time8_lambda_95
   - isru_pwl_vehicle1_node3_time8_graybit_1 <= 0
 isru_pwl_vehicle1_node3_time8_branch_neg_bit_1:
   isru_pwl_vehicle1_node3_time8_lambda_0
   + isru_pwl_vehicle1_node3_time8_lambda_1
   + isru_pwl_vehicle1_node3_time8_lambda_2
   + isru_pwl_vehicle1_node3_time8_lambda_3
   + isru_pwl_vehicle1_node3_time8_lambda_4
   + isru_pwl_vehicle1_node3_time8_lambda_5
   + isru_pwl_vehicle1_node3_time8_lambda_6
   + isru_pwl_vehicle1_node3_time8_lambda_7
   + isru_pwl_vehicle1_node3_time8_lambda_8
   + isru_pwl_vehicle1_node3_time8_lambda_9
   + isru_pwl_vehicle1_node3_time8_lambda_10
   + isru_pwl_vehicle1_node3_time8_lambda_11
   + isru_pwl_vehicle1_node3_time8_lambda_12
   + isru_pwl_vehicle1_node3_time8_lambda_13
   + isru_pwl_vehicle1_node3_time8_lambda_14
   + isru_pwl_vehicle1_node3_time8_lambda_15
   + isru_pwl_vehicle1_node3_time8_lambda_16
   + isru_pwl_vehicle1_node3_time8_lambda_17
   + isru_pwl_vehicle1_node3_time8_lambda_18
   + isru_pwl_vehicle1_node3_time8_lambda_19
   + isru_pwl_vehicle1_node3_time8_lambda_20
   + isru_pwl_vehicle1_node3_time8_lambda_21
   + isru_pwl_vehicle1_node3_time8_lambda_22
   + isru_pwl_vehicle1_node3_time8_lambda_23
   + isru_pwl_vehicle1_node3_time8_lambda_24
   + isru_pwl_vehicle1_node3_time8_lambda_25
   + isru_pwl_vehicle1_node3_time8_lambda_26
   + isru_pwl_vehicle1_node3_time8_lambda_27
   + isru_pwl_vehicle1_node3_time8_lambda_28
   + isru_pwl_vehicle1_node3_time8_lambda_29
   + isru_pwl_vehicle1_node3_time8_lambda_30
   + isru_pwl_vehicle1_node3_time8_lambda_31
   + isru_pwl_vehicle1_node3_time8_lambda_97
   + isru_pwl_vehicle1_node3_time8_lambda_98
   + isru_pwl_vehicle1_node3_time8_lambda_99
   + isru_pwl_vehicle1_node3_time8_lambda_100
   + isru_pwl_vehicle1_node3_time8_graybit_1 <= 1
 isru_pwl_vehicle1_node3_time8_branch_pos_bit_2:
   isru_pwl_vehicle1_node3_time8_lambda_17
   + isru_pwl_vehicle1_node3_time8_lambda_18
   + isru_pwl_vehicle1_node3_time8_lambda_19
   + isru_pwl_vehicle1_node3_time8_lambda_20
   + isru_pwl_vehicle1_node3_time8_lambda_21
   + isru_pwl_vehicle1_node3_time8_lambda_22
   + isru_pwl_vehicle1_node3_time8_lambda_23
   + isru_pwl_vehicle1_node3_time8_lambda_24
   + isru_pwl_vehicle1_node3_time8_lambda_25
   + isru_pwl_vehicle1_node3_time8_lambda_26
   + isru_pwl_vehicle1_node3_time8_lambda_27
   + isru_pwl_vehicle1_node3_time8_lambda_28
   + isru_pwl_vehicle1_node3_time8_lambda_29
   + isru_pwl_vehicle1_node3_time8_lambda_30
   + isru_pwl_vehicle1_node3_time8_lambda_31
   + isru_pwl_vehicle1_node3_time8_lambda_32
   + isru_pwl_vehicle1_node3_time8_lambda_33
   + isru_pwl_vehicle1_node3_time8_lambda_34
   + isru_pwl_vehicle1_node3_time8_lambda_35
   + isru_pwl_vehicle1_node3_time8_lambda_36
   + isru_pwl_vehicle1_node3_time8_lambda_37
   + isru_pwl_vehicle1_node3_time8_lambda_38
   + isru_pwl_vehicle1_node3_time8_lambda_39
   + isru_pwl_vehicle1_node3_time8_lambda_40
   + isru_pwl_vehicle1_node3_time8_lambda_41
   + isru_pwl_vehicle1_node3_time8_lambda_42
   + isru_pwl_vehicle1_node3_time8_lambda_43
   + isru_pwl_vehicle1_node3_time8_lambda_44
   + isru_pwl_vehicle1_node3_time8_lambda_45
   + isru_pwl_vehicle1_node3_time8_lambda_46
   + isru_pwl_vehicle1_node3_time8_lambda_47
   + isru_pwl_vehicle1_node3_time8_lambda_81
   + isru_pwl_vehicle1_node3_time8_lambda_82
   + isru_pwl_vehicle1_node3_time8_lambda_83
   + isru_pwl_vehicle1_node3_time8_lambda_84
   + isru_pwl_vehicle1_node3_time8_lambda_85
   + isru_pwl_vehicle1_node3_time8_lambda_86
   + isru_pwl_vehicle1_node3_time8_lambda_87
   + isru_pwl_vehicle1_node3_time8_lambda_88
   + isru_pwl_vehicle1_node3_time8_lambda_89
   + isru_pwl_vehicle1_node3_time8_lambda_90
   + isru_pwl_vehicle1_node3_time8_lambda_91
   + isru_pwl_vehicle1_node3_time8_lambda_92
   + isru_pwl_vehicle1_node3_time8_lambda_93
   + isru_pwl_vehicle1_node3_time8_lambda_94
   + isru_pwl_vehicle1_node3_time8_lambda_95
   + isru_pwl_vehicle1_node3_time8_lambda_96
   + isru_pwl_vehicle1_node3_time8_lambda_97
   + isru_pwl_vehicle1_node3_time8_lambda_98
   + isru_pwl_vehicle1_node3_time8_lambda_99
   + isru_pwl_vehicle1_node3_time8_lambda_100
   - isru_pwl_vehicle1_node3_time8_graybit_2 <= 0
 isru_pwl_vehicle1_node3_time8_branch_neg_bit_2:
   isru_pwl_vehicle1_node3_time8_lambda_0
   + isru_pwl_vehicle1_node3_time8_lambda_1
   + isru_pwl_vehicle1_node3_time8_lambda_2
   + isru_pwl_vehicle1_node3_time8_lambda_3
   + isru_pwl_vehicle1_node3_time8_lambda_4
   + isru_pwl_vehicle1_node3_time8_lambda_5
   + isru_pwl_vehicle1_node3_time8_lambda_6
   + isru_pwl_vehicle1_node3_time8_lambda_7
   + isru_pwl_vehicle1_node3_time8_lambda_8
   + isru_pwl_vehicle1_node3_time8_lambda_9
   + isru_pwl_vehicle1_node3_time8_lambda_10
   + isru_pwl_vehicle1_node3_time8_lambda_11
   + isru_pwl_vehicle1_node3_time8_lambda_12
   + isru_pwl_vehicle1_node3_time8_lambda_13
   + isru_pwl_vehicle1_node3_time8_lambda_14
   + isru_pwl_vehicle1_node3_time8_lambda_15
   + isru_pwl_vehicle1_node3_time8_lambda_49
   + isru_pwl_vehicle1_node3_time8_lambda_50
   + isru_pwl_vehicle1_node3_time8_lambda_51
   + isru_pwl_vehicle1_node3_time8_lambda_52
   + isru_pwl_vehicle1_node3_time8_lambda_53
   + isru_pwl_vehicle1_node3_time8_lambda_54
   + isru_pwl_vehicle1_node3_time8_lambda_55
   + isru_pwl_vehicle1_node3_time8_lambda_56
   + isru_pwl_vehicle1_node3_time8_lambda_57
   + isru_pwl_vehicle1_node3_time8_lambda_58
   + isru_pwl_vehicle1_node3_time8_lambda_59
   + isru_pwl_vehicle1_node3_time8_lambda_60
   + isru_pwl_vehicle1_node3_time8_lambda_61
   + isru_pwl_vehicle1_node3_time8_lambda_62
   + isru_pwl_vehicle1_node3_time8_lambda_63
   + isru_pwl_vehicle1_node3_time8_lambda_64
   + isru_pwl_vehicle1_node3_time8_lambda_65
   + isru_pwl_vehicle1_node3_time8_lambda_66
   + isru_pwl_vehicle1_node3_time8_lambda_67
   + isru_pwl_vehicle1_node3_time8_lambda_68
   + isru_pwl_vehicle1_node3_time8_lambda_69
   + isru_pwl_vehicle1_node3_time8_lambda_70
   + isru_pwl_vehicle1_node3_time8_lambda_71
   + isru_pwl_vehicle1_node3_time8_lambda_72
   + isru_pwl_vehicle1_node3_time8_lambda_73
   + isru_pwl_vehicle1_node3_time8_lambda_74
   + isru_pwl_vehicle1_node3_time8_lambda_75
   + isru_pwl_vehicle1_node3_time8_lambda_76
   + isru_pwl_vehicle1_node3_time8_lambda_77
   + isru_pwl_vehicle1_node3_time8_lambda_78
   + isru_pwl_vehicle1_node3_time8_lambda_79
   + isru_pwl_vehicle1_node3_time8_graybit_2 <= 1
 isru_pwl_vehicle1_node3_time8_branch_pos_bit_3:
   isru_pwl_vehicle1_node3_time8_lambda_9
   + isru_pwl_vehicle1_node3_time8_lambda_10
   + isru_pwl_vehicle1_node3_time8_lambda_11
   + isru_pwl_vehicle1_node3_time8_lambda_12
   + isru_pwl_vehicle1_node3_time8_lambda_13
   + isru_pwl_vehicle1_node3_time8_lambda_14
   + isru_pwl_vehicle1_node3_time8_lambda_15
   + isru_pwl_vehicle1_node3_time8_lambda_16
   + isru_pwl_vehicle1_node3_time8_lambda_17
   + isru_pwl_vehicle1_node3_time8_lambda_18
   + isru_pwl_vehicle1_node3_time8_lambda_19
   + isru_pwl_vehicle1_node3_time8_lambda_20
   + isru_pwl_vehicle1_node3_time8_lambda_21
   + isru_pwl_vehicle1_node3_time8_lambda_22
   + isru_pwl_vehicle1_node3_time8_lambda_23
   + isru_pwl_vehicle1_node3_time8_lambda_41
   + isru_pwl_vehicle1_node3_time8_lambda_42
   + isru_pwl_vehicle1_node3_time8_lambda_43
   + isru_pwl_vehicle1_node3_time8_lambda_44
   + isru_pwl_vehicle1_node3_time8_lambda_45
   + isru_pwl_vehicle1_node3_time8_lambda_46
   + isru_pwl_vehicle1_node3_time8_lambda_47
   + isru_pwl_vehicle1_node3_time8_lambda_48
   + isru_pwl_vehicle1_node3_time8_lambda_49
   + isru_pwl_vehicle1_node3_time8_lambda_50
   + isru_pwl_vehicle1_node3_time8_lambda_51
   + isru_pwl_vehicle1_node3_time8_lambda_52
   + isru_pwl_vehicle1_node3_time8_lambda_53
   + isru_pwl_vehicle1_node3_time8_lambda_54
   + isru_pwl_vehicle1_node3_time8_lambda_55
   + isru_pwl_vehicle1_node3_time8_lambda_73
   + isru_pwl_vehicle1_node3_time8_lambda_74
   + isru_pwl_vehicle1_node3_time8_lambda_75
   + isru_pwl_vehicle1_node3_time8_lambda_76
   + isru_pwl_vehicle1_node3_time8_lambda_77
   + isru_pwl_vehicle1_node3_time8_lambda_78
   + isru_pwl_vehicle1_node3_time8_lambda_79
   + isru_pwl_vehicle1_node3_time8_lambda_80
   + isru_pwl_vehicle1_node3_time8_lambda_81
   + isru_pwl_vehicle1_node3_time8_lambda_82
   + isru_pwl_vehicle1_node3_time8_lambda_83
   + isru_pwl_vehicle1_node3_time8_lambda_84
   + isru_pwl_vehicle1_node3_time8_lambda_85
   + isru_pwl_vehicle1_node3_time8_lambda_86
   + isru_pwl_vehicle1_node3_time8_lambda_87
   - isru_pwl_vehicle1_node3_time8_graybit_3 <= 0
 isru_pwl_vehicle1_node3_time8_branch_neg_bit_3:
   isru_pwl_vehicle1_node3_time8_lambda_0
   + isru_pwl_vehicle1_node3_time8_lambda_1
   + isru_pwl_vehicle1_node3_time8_lambda_2
   + isru_pwl_vehicle1_node3_time8_lambda_3
   + isru_pwl_vehicle1_node3_time8_lambda_4
   + isru_pwl_vehicle1_node3_time8_lambda_5
   + isru_pwl_vehicle1_node3_time8_lambda_6
   + isru_pwl_vehicle1_node3_time8_lambda_7
   + isru_pwl_vehicle1_node3_time8_lambda_25
   + isru_pwl_vehicle1_node3_time8_lambda_26
   + isru_pwl_vehicle1_node3_time8_lambda_27
   + isru_pwl_vehicle1_node3_time8_lambda_28
   + isru_pwl_vehicle1_node3_time8_lambda_29
   + isru_pwl_vehicle1_node3_time8_lambda_30
   + isru_pwl_vehicle1_node3_time8_lambda_31
   + isru_pwl_vehicle1_node3_time8_lambda_32
   + isru_pwl_vehicle1_node3_time8_lambda_33
   + isru_pwl_vehicle1_node3_time8_lambda_34
   + isru_pwl_vehicle1_node3_time8_lambda_35
   + isru_pwl_vehicle1_node3_time8_lambda_36
   + isru_pwl_vehicle1_node3_time8_lambda_37
   + isru_pwl_vehicle1_node3_time8_lambda_38
   + isru_pwl_vehicle1_node3_time8_lambda_39
   + isru_pwl_vehicle1_node3_time8_lambda_57
   + isru_pwl_vehicle1_node3_time8_lambda_58
   + isru_pwl_vehicle1_node3_time8_lambda_59
   + isru_pwl_vehicle1_node3_time8_lambda_60
   + isru_pwl_vehicle1_node3_time8_lambda_61
   + isru_pwl_vehicle1_node3_time8_lambda_62
   + isru_pwl_vehicle1_node3_time8_lambda_63
   + isru_pwl_vehicle1_node3_time8_lambda_64
   + isru_pwl_vehicle1_node3_time8_lambda_65
   + isru_pwl_vehicle1_node3_time8_lambda_66
   + isru_pwl_vehicle1_node3_time8_lambda_67
   + isru_pwl_vehicle1_node3_time8_lambda_68
   + isru_pwl_vehicle1_node3_time8_lambda_69
   + isru_pwl_vehicle1_node3_time8_lambda_70
   + isru_pwl_vehicle1_node3_time8_lambda_71
   + isru_pwl_vehicle1_node3_time8_lambda_89
   + isru_pwl_vehicle1_node3_time8_lambda_90
   + isru_pwl_vehicle1_node3_time8_lambda_91
   + isru_pwl_vehicle1_node3_time8_lambda_92
   + isru_pwl_vehicle1_node3_time8_lambda_93
   + isru_pwl_vehicle1_node3_time8_lambda_94
   + isru_pwl_vehicle1_node3_time8_lambda_95
   + isru_pwl_vehicle1_node3_time8_lambda_96
   + isru_pwl_vehicle1_node3_time8_lambda_97
   + isru_pwl_vehicle1_node3_time8_lambda_98
   + isru_pwl_vehicle1_node3_time8_lambda_99
   + isru_pwl_vehicle1_node3_time8_lambda_100
   + isru_pwl_vehicle1_node3_time8_graybit_3 <= 1
 isru_pwl_vehicle1_node3_time8_branch_pos_bit_4:
   isru_pwl_vehicle1_node3_time8_lambda_5
   + isru_pwl_vehicle1_node3_time8_lambda_6
   + isru_pwl_vehicle1_node3_time8_lambda_7
   + isru_pwl_vehicle1_node3_time8_lambda_8
   + isru_pwl_vehicle1_node3_time8_lambda_9
   + isru_pwl_vehicle1_node3_time8_lambda_10
   + isru_pwl_vehicle1_node3_time8_lambda_11
   + isru_pwl_vehicle1_node3_time8_lambda_21
   + isru_pwl_vehicle1_node3_time8_lambda_22
   + isru_pwl_vehicle1_node3_time8_lambda_23
   + isru_pwl_vehicle1_node3_time8_lambda_24
   + isru_pwl_vehicle1_node3_time8_lambda_25
   + isru_pwl_vehicle1_node3_time8_lambda_26
   + isru_pwl_vehicle1_node3_time8_lambda_27
   + isru_pwl_vehicle1_node3_time8_lambda_37
   + isru_pwl_vehicle1_node3_time8_lambda_38
   + isru_pwl_vehicle1_node3_time8_lambda_39
   + isru_pwl_vehicle1_node3_time8_lambda_40
   + isru_pwl_vehicle1_node3_time8_lambda_41
   + isru_pwl_vehicle1_node3_time8_lambda_42
   + isru_pwl_vehicle1_node3_time8_lambda_43
   + isru_pwl_vehicle1_node3_time8_lambda_53
   + isru_pwl_vehicle1_node3_time8_lambda_54
   + isru_pwl_vehicle1_node3_time8_lambda_55
   + isru_pwl_vehicle1_node3_time8_lambda_56
   + isru_pwl_vehicle1_node3_time8_lambda_57
   + isru_pwl_vehicle1_node3_time8_lambda_58
   + isru_pwl_vehicle1_node3_time8_lambda_59
   + isru_pwl_vehicle1_node3_time8_lambda_69
   + isru_pwl_vehicle1_node3_time8_lambda_70
   + isru_pwl_vehicle1_node3_time8_lambda_71
   + isru_pwl_vehicle1_node3_time8_lambda_72
   + isru_pwl_vehicle1_node3_time8_lambda_73
   + isru_pwl_vehicle1_node3_time8_lambda_74
   + isru_pwl_vehicle1_node3_time8_lambda_75
   + isru_pwl_vehicle1_node3_time8_lambda_85
   + isru_pwl_vehicle1_node3_time8_lambda_86
   + isru_pwl_vehicle1_node3_time8_lambda_87
   + isru_pwl_vehicle1_node3_time8_lambda_88
   + isru_pwl_vehicle1_node3_time8_lambda_89
   + isru_pwl_vehicle1_node3_time8_lambda_90
   + isru_pwl_vehicle1_node3_time8_lambda_91
   - isru_pwl_vehicle1_node3_time8_graybit_4 <= 0
 isru_pwl_vehicle1_node3_time8_branch_neg_bit_4:
   isru_pwl_vehicle1_node3_time8_lambda_0
   + isru_pwl_vehicle1_node3_time8_lambda_1
   + isru_pwl_vehicle1_node3_time8_lambda_2
   + isru_pwl_vehicle1_node3_time8_lambda_3
   + isru_pwl_vehicle1_node3_time8_lambda_13
   + isru_pwl_vehicle1_node3_time8_lambda_14
   + isru_pwl_vehicle1_node3_time8_lambda_15
   + isru_pwl_vehicle1_node3_time8_lambda_16
   + isru_pwl_vehicle1_node3_time8_lambda_17
   + isru_pwl_vehicle1_node3_time8_lambda_18
   + isru_pwl_vehicle1_node3_time8_lambda_19
   + isru_pwl_vehicle1_node3_time8_lambda_29
   + isru_pwl_vehicle1_node3_time8_lambda_30
   + isru_pwl_vehicle1_node3_time8_lambda_31
   + isru_pwl_vehicle1_node3_time8_lambda_32
   + isru_pwl_vehicle1_node3_time8_lambda_33
   + isru_pwl_vehicle1_node3_time8_lambda_34
   + isru_pwl_vehicle1_node3_time8_lambda_35
   + isru_pwl_vehicle1_node3_time8_lambda_45
   + isru_pwl_vehicle1_node3_time8_lambda_46
   + isru_pwl_vehicle1_node3_time8_lambda_47
   + isru_pwl_vehicle1_node3_time8_lambda_48
   + isru_pwl_vehicle1_node3_time8_lambda_49
   + isru_pwl_vehicle1_node3_time8_lambda_50
   + isru_pwl_vehicle1_node3_time8_lambda_51
   + isru_pwl_vehicle1_node3_time8_lambda_61
   + isru_pwl_vehicle1_node3_time8_lambda_62
   + isru_pwl_vehicle1_node3_time8_lambda_63
   + isru_pwl_vehicle1_node3_time8_lambda_64
   + isru_pwl_vehicle1_node3_time8_lambda_65
   + isru_pwl_vehicle1_node3_time8_lambda_66
   + isru_pwl_vehicle1_node3_time8_lambda_67
   + isru_pwl_vehicle1_node3_time8_lambda_77
   + isru_pwl_vehicle1_node3_time8_lambda_78
   + isru_pwl_vehicle1_node3_time8_lambda_79
   + isru_pwl_vehicle1_node3_time8_lambda_80
   + isru_pwl_vehicle1_node3_time8_lambda_81
   + isru_pwl_vehicle1_node3_time8_lambda_82
   + isru_pwl_vehicle1_node3_time8_lambda_83
   + isru_pwl_vehicle1_node3_time8_lambda_93
   + isru_pwl_vehicle1_node3_time8_lambda_94
   + isru_pwl_vehicle1_node3_time8_lambda_95
   + isru_pwl_vehicle1_node3_time8_lambda_96
   + isru_pwl_vehicle1_node3_time8_lambda_97
   + isru_pwl_vehicle1_node3_time8_lambda_98
   + isru_pwl_vehicle1_node3_time8_lambda_99
   + isru_pwl_vehicle1_node3_time8_lambda_100
   + isru_pwl_vehicle1_node3_time8_graybit_4 <= 1
 isru_pwl_vehicle1_node3_time8_branch_pos_bit_5:
   isru_pwl_vehicle1_node3_time8_lambda_3
   + isru_pwl_vehicle1_node3_time8_lambda_4
   + isru_pwl_vehicle1_node3_time8_lambda_5
   + isru_pwl_vehicle1_node3_time8_lambda_11
   + isru_pwl_vehicle1_node3_time8_lambda_12
   + isru_pwl_vehicle1_node3_time8_lambda_13
   + isru_pwl_vehicle1_node3_time8_lambda_19
   + isru_pwl_vehicle1_node3_time8_lambda_20
   + isru_pwl_vehicle1_node3_time8_lambda_21
   + isru_pwl_vehicle1_node3_time8_lambda_27
   + isru_pwl_vehicle1_node3_time8_lambda_28
   + isru_pwl_vehicle1_node3_time8_lambda_29
   + isru_pwl_vehicle1_node3_time8_lambda_35
   + isru_pwl_vehicle1_node3_time8_lambda_36
   + isru_pwl_vehicle1_node3_time8_lambda_37
   + isru_pwl_vehicle1_node3_time8_lambda_43
   + isru_pwl_vehicle1_node3_time8_lambda_44
   + isru_pwl_vehicle1_node3_time8_lambda_45
   + isru_pwl_vehicle1_node3_time8_lambda_51
   + isru_pwl_vehicle1_node3_time8_lambda_52
   + isru_pwl_vehicle1_node3_time8_lambda_53
   + isru_pwl_vehicle1_node3_time8_lambda_59
   + isru_pwl_vehicle1_node3_time8_lambda_60
   + isru_pwl_vehicle1_node3_time8_lambda_61
   + isru_pwl_vehicle1_node3_time8_lambda_67
   + isru_pwl_vehicle1_node3_time8_lambda_68
   + isru_pwl_vehicle1_node3_time8_lambda_69
   + isru_pwl_vehicle1_node3_time8_lambda_75
   + isru_pwl_vehicle1_node3_time8_lambda_76
   + isru_pwl_vehicle1_node3_time8_lambda_77
   + isru_pwl_vehicle1_node3_time8_lambda_83
   + isru_pwl_vehicle1_node3_time8_lambda_84
   + isru_pwl_vehicle1_node3_time8_lambda_85
   + isru_pwl_vehicle1_node3_time8_lambda_91
   + isru_pwl_vehicle1_node3_time8_lambda_92
   + isru_pwl_vehicle1_node3_time8_lambda_93
   + isru_pwl_vehicle1_node3_time8_lambda_99
   + isru_pwl_vehicle1_node3_time8_lambda_100
   - isru_pwl_vehicle1_node3_time8_graybit_5 <= 0
 isru_pwl_vehicle1_node3_time8_branch_neg_bit_5:
   isru_pwl_vehicle1_node3_time8_lambda_0
   + isru_pwl_vehicle1_node3_time8_lambda_1
   + isru_pwl_vehicle1_node3_time8_lambda_7
   + isru_pwl_vehicle1_node3_time8_lambda_8
   + isru_pwl_vehicle1_node3_time8_lambda_9
   + isru_pwl_vehicle1_node3_time8_lambda_15
   + isru_pwl_vehicle1_node3_time8_lambda_16
   + isru_pwl_vehicle1_node3_time8_lambda_17
   + isru_pwl_vehicle1_node3_time8_lambda_23
   + isru_pwl_vehicle1_node3_time8_lambda_24
   + isru_pwl_vehicle1_node3_time8_lambda_25
   + isru_pwl_vehicle1_node3_time8_lambda_31
   + isru_pwl_vehicle1_node3_time8_lambda_32
   + isru_pwl_vehicle1_node3_time8_lambda_33
   + isru_pwl_vehicle1_node3_time8_lambda_39
   + isru_pwl_vehicle1_node3_time8_lambda_40
   + isru_pwl_vehicle1_node3_time8_lambda_41
   + isru_pwl_vehicle1_node3_time8_lambda_47
   + isru_pwl_vehicle1_node3_time8_lambda_48
   + isru_pwl_vehicle1_node3_time8_lambda_49
   + isru_pwl_vehicle1_node3_time8_lambda_55
   + isru_pwl_vehicle1_node3_time8_lambda_56
   + isru_pwl_vehicle1_node3_time8_lambda_57
   + isru_pwl_vehicle1_node3_time8_lambda_63
   + isru_pwl_vehicle1_node3_time8_lambda_64
   + isru_pwl_vehicle1_node3_time8_lambda_65
   + isru_pwl_vehicle1_node3_time8_lambda_71
   + isru_pwl_vehicle1_node3_time8_lambda_72
   + isru_pwl_vehicle1_node3_time8_lambda_73
   + isru_pwl_vehicle1_node3_time8_lambda_79
   + isru_pwl_vehicle1_node3_time8_lambda_80
   + isru_pwl_vehicle1_node3_time8_lambda_81
   + isru_pwl_vehicle1_node3_time8_lambda_87
   + isru_pwl_vehicle1_node3_time8_lambda_88
   + isru_pwl_vehicle1_node3_time8_lambda_89
   + isru_pwl_vehicle1_node3_time8_lambda_95
   + isru_pwl_vehicle1_node3_time8_lambda_96
   + isru_pwl_vehicle1_node3_time8_lambda_97
   + isru_pwl_vehicle1_node3_time8_graybit_5 <= 1
 isru_pwl_vehicle1_node3_time8_branch_pos_bit_6:
   isru_pwl_vehicle1_node3_time8_lambda_2
   + isru_pwl_vehicle1_node3_time8_lambda_6
   + isru_pwl_vehicle1_node3_time8_lambda_10
   + isru_pwl_vehicle1_node3_time8_lambda_14
   + isru_pwl_vehicle1_node3_time8_lambda_18
   + isru_pwl_vehicle1_node3_time8_lambda_22
   + isru_pwl_vehicle1_node3_time8_lambda_26
   + isru_pwl_vehicle1_node3_time8_lambda_30
   + isru_pwl_vehicle1_node3_time8_lambda_34
   + isru_pwl_vehicle1_node3_time8_lambda_38
   + isru_pwl_vehicle1_node3_time8_lambda_42
   + isru_pwl_vehicle1_node3_time8_lambda_46
   + isru_pwl_vehicle1_node3_time8_lambda_50
   + isru_pwl_vehicle1_node3_time8_lambda_54
   + isru_pwl_vehicle1_node3_time8_lambda_58
   + isru_pwl_vehicle1_node3_time8_lambda_62
   + isru_pwl_vehicle1_node3_time8_lambda_66
   + isru_pwl_vehicle1_node3_time8_lambda_70
   + isru_pwl_vehicle1_node3_time8_lambda_74
   + isru_pwl_vehicle1_node3_time8_lambda_78
   + isru_pwl_vehicle1_node3_time8_lambda_82
   + isru_pwl_vehicle1_node3_time8_lambda_86
   + isru_pwl_vehicle1_node3_time8_lambda_90
   + isru_pwl_vehicle1_node3_time8_lambda_94
   + isru_pwl_vehicle1_node3_time8_lambda_98
   - isru_pwl_vehicle1_node3_time8_graybit_6 <= 0
 isru_pwl_vehicle1_node3_time8_branch_neg_bit_6:
   isru_pwl_vehicle1_node3_time8_lambda_0
   + isru_pwl_vehicle1_node3_time8_lambda_4
   + isru_pwl_vehicle1_node3_time8_lambda_8
   + isru_pwl_vehicle1_node3_time8_lambda_12
   + isru_pwl_vehicle1_node3_time8_lambda_16
   + isru_pwl_vehicle1_node3_time8_lambda_20
   + isru_pwl_vehicle1_node3_time8_lambda_24
   + isru_pwl_vehicle1_node3_time8_lambda_28
   + isru_pwl_vehicle1_node3_time8_lambda_32
   + isru_pwl_vehicle1_node3_time8_lambda_36
   + isru_pwl_vehicle1_node3_time8_lambda_40
   + isru_pwl_vehicle1_node3_time8_lambda_44
   + isru_pwl_vehicle1_node3_time8_lambda_48
   + isru_pwl_vehicle1_node3_time8_lambda_52
   + isru_pwl_vehicle1_node3_time8_lambda_56
   + isru_pwl_vehicle1_node3_time8_lambda_60
   + isru_pwl_vehicle1_node3_time8_lambda_64
   + isru_pwl_vehicle1_node3_time8_lambda_68
   + isru_pwl_vehicle1_node3_time8_lambda_72
   + isru_pwl_vehicle1_node3_time8_lambda_76
   + isru_pwl_vehicle1_node3_time8_lambda_80
   + isru_pwl_vehicle1_node3_time8_lambda_84
   + isru_pwl_vehicle1_node3_time8_lambda_88
   + isru_pwl_vehicle1_node3_time8_lambda_92
   + isru_pwl_vehicle1_node3_time8_lambda_96
   + isru_pwl_vehicle1_node3_time8_lambda_100
   + isru_pwl_vehicle1_node3_time8_graybit_6 <= 1
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1000000:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= 0
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1000001:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -1
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1000010:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -1
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1000011:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1000100:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -1
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1000101:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1000110:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1000111:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1001000:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -1
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1001001:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1001010:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1001011:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1001100:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1001101:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1001110:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1001111:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   + isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1010100:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1010101:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1010110:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1010111:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   + isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1011000:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1011001:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1011010:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1011011:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   + isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1011100:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1011101:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   + isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1011110:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   + isru_pwl_vehicle1_node3_time8_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time8_forbid_unused_code_1011111:
   - isru_pwl_vehicle1_node3_time8_graybit_0
   + isru_pwl_vehicle1_node3_time8_graybit_1
   - isru_pwl_vehicle1_node3_time8_graybit_2
   - isru_pwl_vehicle1_node3_time8_graybit_3
   - isru_pwl_vehicle1_node3_time8_graybit_4
   - isru_pwl_vehicle1_node3_time8_graybit_5
   - isru_pwl_vehicle1_node3_time8_graybit_6 >= -5
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity5:
   0.99984 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   + 0.0136986301369863 isru_arc_propellant_vehicle1_node3_time8 = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity9:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity10:
   - 0.00136986301369863 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,3,3,Tstart8,Tend13
   - 179.96 SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity11:
   sc_commodity_outflow_1,3,3,Tstart8,Tend13
   - sc_commodity_inflow_1,3,3,Tstart8,Tend13 = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start3_end3_time8:
   - Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,3,3,Tstart8,Tend13 >= 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity1:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_return
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew_return = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity2:
   - 25.695 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew
   - 25.695 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_return
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityconsumables
   - 25.695 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityconsumables = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityequipment
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityequipment = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditysamples
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditysamples = 0
 isru_pwl_vehicle0_node3_time5_lambda_sum:
   isru_pwl_vehicle0_node3_time5_lambda_0
   + isru_pwl_vehicle0_node3_time5_lambda_1
   + isru_pwl_vehicle0_node3_time5_lambda_2
   + isru_pwl_vehicle0_node3_time5_lambda_3
   + isru_pwl_vehicle0_node3_time5_lambda_4
   + isru_pwl_vehicle0_node3_time5_lambda_5
   + isru_pwl_vehicle0_node3_time5_lambda_6
   + isru_pwl_vehicle0_node3_time5_lambda_7
   + isru_pwl_vehicle0_node3_time5_lambda_8
   + isru_pwl_vehicle0_node3_time5_lambda_9
   + isru_pwl_vehicle0_node3_time5_lambda_10
   + isru_pwl_vehicle0_node3_time5_lambda_11
   + isru_pwl_vehicle0_node3_time5_lambda_12
   + isru_pwl_vehicle0_node3_time5_lambda_13
   + isru_pwl_vehicle0_node3_time5_lambda_14
   + isru_pwl_vehicle0_node3_time5_lambda_15
   + isru_pwl_vehicle0_node3_time5_lambda_16
   + isru_pwl_vehicle0_node3_time5_lambda_17
   + isru_pwl_vehicle0_node3_time5_lambda_18
   + isru_pwl_vehicle0_node3_time5_lambda_19
   + isru_pwl_vehicle0_node3_time5_lambda_20
   + isru_pwl_vehicle0_node3_time5_lambda_21
   + isru_pwl_vehicle0_node3_time5_lambda_22
   + isru_pwl_vehicle0_node3_time5_lambda_23
   + isru_pwl_vehicle0_node3_time5_lambda_24
   + isru_pwl_vehicle0_node3_time5_lambda_25
   + isru_pwl_vehicle0_node3_time5_lambda_26
   + isru_pwl_vehicle0_node3_time5_lambda_27
   + isru_pwl_vehicle0_node3_time5_lambda_28
   + isru_pwl_vehicle0_node3_time5_lambda_29
   + isru_pwl_vehicle0_node3_time5_lambda_30
   + isru_pwl_vehicle0_node3_time5_lambda_31
   + isru_pwl_vehicle0_node3_time5_lambda_32
   + isru_pwl_vehicle0_node3_time5_lambda_33
   + isru_pwl_vehicle0_node3_time5_lambda_34
   + isru_pwl_vehicle0_node3_time5_lambda_35
   + isru_pwl_vehicle0_node3_time5_lambda_36
   + isru_pwl_vehicle0_node3_time5_lambda_37
   + isru_pwl_vehicle0_node3_time5_lambda_38
   + isru_pwl_vehicle0_node3_time5_lambda_39
   + isru_pwl_vehicle0_node3_time5_lambda_40
   + isru_pwl_vehicle0_node3_time5_lambda_41
   + isru_pwl_vehicle0_node3_time5_lambda_42
   + isru_pwl_vehicle0_node3_time5_lambda_43
   + isru_pwl_vehicle0_node3_time5_lambda_44
   + isru_pwl_vehicle0_node3_time5_lambda_45
   + isru_pwl_vehicle0_node3_time5_lambda_46
   + isru_pwl_vehicle0_node3_time5_lambda_47
   + isru_pwl_vehicle0_node3_time5_lambda_48
   + isru_pwl_vehicle0_node3_time5_lambda_49
   + isru_pwl_vehicle0_node3_time5_lambda_50
   + isru_pwl_vehicle0_node3_time5_lambda_51
   + isru_pwl_vehicle0_node3_time5_lambda_52
   + isru_pwl_vehicle0_node3_time5_lambda_53
   + isru_pwl_vehicle0_node3_time5_lambda_54
   + isru_pwl_vehicle0_node3_time5_lambda_55
   + isru_pwl_vehicle0_node3_time5_lambda_56
   + isru_pwl_vehicle0_node3_time5_lambda_57
   + isru_pwl_vehicle0_node3_time5_lambda_58
   + isru_pwl_vehicle0_node3_time5_lambda_59
   + isru_pwl_vehicle0_node3_time5_lambda_60
   + isru_pwl_vehicle0_node3_time5_lambda_61
   + isru_pwl_vehicle0_node3_time5_lambda_62
   + isru_pwl_vehicle0_node3_time5_lambda_63
   + isru_pwl_vehicle0_node3_time5_lambda_64
   + isru_pwl_vehicle0_node3_time5_lambda_65
   + isru_pwl_vehicle0_node3_time5_lambda_66
   + isru_pwl_vehicle0_node3_time5_lambda_67
   + isru_pwl_vehicle0_node3_time5_lambda_68
   + isru_pwl_vehicle0_node3_time5_lambda_69
   + isru_pwl_vehicle0_node3_time5_lambda_70
   + isru_pwl_vehicle0_node3_time5_lambda_71
   + isru_pwl_vehicle0_node3_time5_lambda_72
   + isru_pwl_vehicle0_node3_time5_lambda_73
   + isru_pwl_vehicle0_node3_time5_lambda_74
   + isru_pwl_vehicle0_node3_time5_lambda_75
   + isru_pwl_vehicle0_node3_time5_lambda_76
   + isru_pwl_vehicle0_node3_time5_lambda_77
   + isru_pwl_vehicle0_node3_time5_lambda_78
   + isru_pwl_vehicle0_node3_time5_lambda_79
   + isru_pwl_vehicle0_node3_time5_lambda_80
   + isru_pwl_vehicle0_node3_time5_lambda_81
   + isru_pwl_vehicle0_node3_time5_lambda_82
   + isru_pwl_vehicle0_node3_time5_lambda_83
   + isru_pwl_vehicle0_node3_time5_lambda_84
   + isru_pwl_vehicle0_node3_time5_lambda_85
   + isru_pwl_vehicle0_node3_time5_lambda_86
   + isru_pwl_vehicle0_node3_time5_lambda_87
   + isru_pwl_vehicle0_node3_time5_lambda_88
   + isru_pwl_vehicle0_node3_time5_lambda_89
   + isru_pwl_vehicle0_node3_time5_lambda_90
   + isru_pwl_vehicle0_node3_time5_lambda_91
   + isru_pwl_vehicle0_node3_time5_lambda_92
   + isru_pwl_vehicle0_node3_time5_lambda_93
   + isru_pwl_vehicle0_node3_time5_lambda_94
   + isru_pwl_vehicle0_node3_time5_lambda_95
   + isru_pwl_vehicle0_node3_time5_lambda_96
   + isru_pwl_vehicle0_node3_time5_lambda_97
   + isru_pwl_vehicle0_node3_time5_lambda_98
   + isru_pwl_vehicle0_node3_time5_lambda_99
   + isru_pwl_vehicle0_node3_time5_lambda_100 = 1
 isru_pwl_vehicle0_node3_time5_x_interp:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityactive_isru
   - 100 isru_pwl_vehicle0_node3_time5_lambda_1
   - 200 isru_pwl_vehicle0_node3_time5_lambda_2
   - 300 isru_pwl_vehicle0_node3_time5_lambda_3
   - 400 isru_pwl_vehicle0_node3_time5_lambda_4
   - 500 isru_pwl_vehicle0_node3_time5_lambda_5
   - 600 isru_pwl_vehicle0_node3_time5_lambda_6
   - 700 isru_pwl_vehicle0_node3_time5_lambda_7
   - 800 isru_pwl_vehicle0_node3_time5_lambda_8
   - 900 isru_pwl_vehicle0_node3_time5_lambda_9
   - 1000 isru_pwl_vehicle0_node3_time5_lambda_10
   - 1100 isru_pwl_vehicle0_node3_time5_lambda_11
   - 1200 isru_pwl_vehicle0_node3_time5_lambda_12
   - 1300 isru_pwl_vehicle0_node3_time5_lambda_13
   - 1400 isru_pwl_vehicle0_node3_time5_lambda_14
   - 1500 isru_pwl_vehicle0_node3_time5_lambda_15
   - 1600 isru_pwl_vehicle0_node3_time5_lambda_16
   - 1700 isru_pwl_vehicle0_node3_time5_lambda_17
   - 1800 isru_pwl_vehicle0_node3_time5_lambda_18
   - 1900 isru_pwl_vehicle0_node3_time5_lambda_19
   - 2000 isru_pwl_vehicle0_node3_time5_lambda_20
   - 2100 isru_pwl_vehicle0_node3_time5_lambda_21
   - 2200 isru_pwl_vehicle0_node3_time5_lambda_22
   - 2300 isru_pwl_vehicle0_node3_time5_lambda_23
   - 2400 isru_pwl_vehicle0_node3_time5_lambda_24
   - 2500 isru_pwl_vehicle0_node3_time5_lambda_25
   - 2600 isru_pwl_vehicle0_node3_time5_lambda_26
   - 2700 isru_pwl_vehicle0_node3_time5_lambda_27
   - 2800 isru_pwl_vehicle0_node3_time5_lambda_28
   - 2900 isru_pwl_vehicle0_node3_time5_lambda_29
   - 3000 isru_pwl_vehicle0_node3_time5_lambda_30
   - 3100 isru_pwl_vehicle0_node3_time5_lambda_31
   - 3200 isru_pwl_vehicle0_node3_time5_lambda_32
   - 3300 isru_pwl_vehicle0_node3_time5_lambda_33
   - 3400 isru_pwl_vehicle0_node3_time5_lambda_34
   - 3500 isru_pwl_vehicle0_node3_time5_lambda_35
   - 3600 isru_pwl_vehicle0_node3_time5_lambda_36
   - 3700 isru_pwl_vehicle0_node3_time5_lambda_37
   - 3800 isru_pwl_vehicle0_node3_time5_lambda_38
   - 3900 isru_pwl_vehicle0_node3_time5_lambda_39
   - 4000 isru_pwl_vehicle0_node3_time5_lambda_40
   - 4100 isru_pwl_vehicle0_node3_time5_lambda_41
   - 4200 isru_pwl_vehicle0_node3_time5_lambda_42
   - 4300 isru_pwl_vehicle0_node3_time5_lambda_43
   - 4400 isru_pwl_vehicle0_node3_time5_lambda_44
   - 4500 isru_pwl_vehicle0_node3_time5_lambda_45
   - 4600 isru_pwl_vehicle0_node3_time5_lambda_46
   - 4700 isru_pwl_vehicle0_node3_time5_lambda_47
   - 4800 isru_pwl_vehicle0_node3_time5_lambda_48
   - 4900 isru_pwl_vehicle0_node3_time5_lambda_49
   - 5000 isru_pwl_vehicle0_node3_time5_lambda_50
   - 5100 isru_pwl_vehicle0_node3_time5_lambda_51
   - 5200 isru_pwl_vehicle0_node3_time5_lambda_52
   - 5300 isru_pwl_vehicle0_node3_time5_lambda_53
   - 5400 isru_pwl_vehicle0_node3_time5_lambda_54
   - 5500 isru_pwl_vehicle0_node3_time5_lambda_55
   - 5600 isru_pwl_vehicle0_node3_time5_lambda_56
   - 5700 isru_pwl_vehicle0_node3_time5_lambda_57
   - 5800 isru_pwl_vehicle0_node3_time5_lambda_58
   - 5900 isru_pwl_vehicle0_node3_time5_lambda_59
   - 6000 isru_pwl_vehicle0_node3_time5_lambda_60
   - 6100 isru_pwl_vehicle0_node3_time5_lambda_61
   - 6200 isru_pwl_vehicle0_node3_time5_lambda_62
   - 6300 isru_pwl_vehicle0_node3_time5_lambda_63
   - 6400 isru_pwl_vehicle0_node3_time5_lambda_64
   - 6500 isru_pwl_vehicle0_node3_time5_lambda_65
   - 6600 isru_pwl_vehicle0_node3_time5_lambda_66
   - 6700 isru_pwl_vehicle0_node3_time5_lambda_67
   - 6800 isru_pwl_vehicle0_node3_time5_lambda_68
   - 6900 isru_pwl_vehicle0_node3_time5_lambda_69
   - 7000 isru_pwl_vehicle0_node3_time5_lambda_70
   - 7100 isru_pwl_vehicle0_node3_time5_lambda_71
   - 7200 isru_pwl_vehicle0_node3_time5_lambda_72
   - 7300 isru_pwl_vehicle0_node3_time5_lambda_73
   - 7400 isru_pwl_vehicle0_node3_time5_lambda_74
   - 7500 isru_pwl_vehicle0_node3_time5_lambda_75
   - 7600 isru_pwl_vehicle0_node3_time5_lambda_76
   - 7700 isru_pwl_vehicle0_node3_time5_lambda_77
   - 7800 isru_pwl_vehicle0_node3_time5_lambda_78
   - 7900 isru_pwl_vehicle0_node3_time5_lambda_79
   - 8000 isru_pwl_vehicle0_node3_time5_lambda_80
   - 8100 isru_pwl_vehicle0_node3_time5_lambda_81
   - 8200 isru_pwl_vehicle0_node3_time5_lambda_82
   - 8300 isru_pwl_vehicle0_node3_time5_lambda_83
   - 8400 isru_pwl_vehicle0_node3_time5_lambda_84
   - 8500 isru_pwl_vehicle0_node3_time5_lambda_85
   - 8600 isru_pwl_vehicle0_node3_time5_lambda_86
   - 8700 isru_pwl_vehicle0_node3_time5_lambda_87
   - 8800 isru_pwl_vehicle0_node3_time5_lambda_88
   - 8900 isru_pwl_vehicle0_node3_time5_lambda_89
   - 9000 isru_pwl_vehicle0_node3_time5_lambda_90
   - 9100 isru_pwl_vehicle0_node3_time5_lambda_91
   - 9200 isru_pwl_vehicle0_node3_time5_lambda_92
   - 9300 isru_pwl_vehicle0_node3_time5_lambda_93
   - 9400 isru_pwl_vehicle0_node3_time5_lambda_94
   - 9500 isru_pwl_vehicle0_node3_time5_lambda_95
   - 9600 isru_pwl_vehicle0_node3_time5_lambda_96
   - 9700 isru_pwl_vehicle0_node3_time5_lambda_97
   - 9800 isru_pwl_vehicle0_node3_time5_lambda_98
   - 9900 isru_pwl_vehicle0_node3_time5_lambda_99
   - 10000 isru_pwl_vehicle0_node3_time5_lambda_100 = 0
 isru_pwl_vehicle0_node3_time5_z_interp:
   isru_arc_propellant_vehicle0_node3_time5
   - 985.2825563858833 isru_pwl_vehicle0_node3_time5_lambda_4
   - 1500.748691745031 isru_pwl_vehicle0_node3_time5_lambda_5
   - 2088.933864258242 isru_pwl_vehicle0_node3_time5_lambda_6
   - 2737.018880329098 isru_pwl_vehicle0_node3_time5_lambda_7
   - 3434.228243716464 isru_pwl_vehicle0_node3_time5_lambda_8
   - 4171.526536767735 isru_pwl_vehicle0_node3_time5_lambda_9
   - 4941.357797288778 isru_pwl_vehicle0_node3_time5_lambda_10
   - 5737.422001432911 isru_pwl_vehicle0_node3_time5_lambda_11
   - 6554.483550637531 isru_pwl_vehicle0_node3_time5_lambda_12
   - 7388.207344829402 isru_pwl_vehicle0_node3_time5_lambda_13
   - 8235.01861825687 isru_pwl_vehicle0_node3_time5_lambda_14
   - 9091.983230072974 isru_pwl_vehicle0_node3_time5_lambda_15
   - 9956.705549371904 isru_pwl_vehicle0_node3_time5_lambda_16
   - 10827.24146264956 isru_pwl_vehicle0_node3_time5_lambda_17
   - 11702.02436835233 isru_pwl_vehicle0_node3_time5_lambda_18
   - 12579.8023150352 isru_pwl_vehicle0_node3_time5_lambda_19
   - 13459.5846925414 isru_pwl_vehicle0_node3_time5_lambda_20
   - 14340.59710465161 isru_pwl_vehicle0_node3_time5_lambda_21
   - 15222.24324128196 isru_pwl_vehicle0_node3_time5_lambda_22
   - 16104.07273241018 isru_pwl_vehicle0_node3_time5_lambda_23
   - 16985.75410784817 isru_pwl_vehicle0_node3_time5_lambda_24
   - 17867.0521096901 isru_pwl_vehicle0_node3_time5_lambda_25
   - 18747.80871029746 isru_pwl_vehicle0_node3_time5_lambda_26
   - 19627.92728025435 isru_pwl_vehicle0_node3_time5_lambda_27
   - 20507.35942976479 isru_pwl_vehicle0_node3_time5_lambda_28
   - 21386.09411514398 isru_pwl_vehicle0_node3_time5_lambda_29
   - 22264.14866083277 isru_pwl_vehicle0_node3_time5_lambda_30
   - 23141.56139800195 isru_pwl_vehicle0_node3_time5_lambda_31
   - 24018.38566440885 isru_pwl_vehicle0_node3_time5_lambda_32
   - 24894.68494767318 isru_pwl_vehicle0_node3_time5_lambda_33
   - 25770.52898638042 isru_pwl_vehicle0_node3_time5_lambda_34
   - 26645.99067111392 isru_pwl_vehicle0_node3_time5_lambda_35
   - 27521.14361128332 isru_pwl_vehicle0_node3_time5_lambda_36
   - 28396.06025399472 isru_pwl_vehicle0_node3_time5_lambda_37
   - 29270.81045866316 isru_pwl_vehicle0_node3_time5_lambda_38
   - 30145.46044600507 isru_pwl_vehicle0_node3_time5_lambda_39
   - 31020.07205281519 isru_pwl_vehicle0_node3_time5_lambda_40
   - 31894.70223483293 isru_pwl_vehicle0_node3_time5_lambda_41
   - 32769.40276929723 isru_pwl_vehicle0_node3_time5_lambda_42
   - 33644.22011670309 isru_pwl_vehicle0_node3_time5_lambda_43
   - 34519.19540800239 isru_pwl_vehicle0_node3_time5_lambda_44
   - 35394.36452920375 isru_pwl_vehicle0_node3_time5_lambda_45
   - 36269.75828016792 isru_pwl_vehicle0_node3_time5_lambda_46
   - 37145.40258848952 isru_pwl_vehicle0_node3_time5_lambda_47
   - 38021.31876281364 isru_pwl_vehicle0_node3_time5_lambda_48
   - 38897.52377284662 isru_pwl_vehicle0_node3_time5_lambda_49
   - 39774.03054576725 isru_pwl_vehicle0_node3_time5_lambda_50
   - 40650.84827079403 isru_pwl_vehicle0_node3_time5_lambda_51
   - 41527.98270537665 isru_pwl_vehicle0_node3_time5_lambda_52
   - 42405.43647790508 isru_pwl_vehicle0_node3_time5_lambda_53
   - 43283.20938301237 isru_pwl_vehicle0_node3_time5_lambda_54
   - 44161.29866652277 isru_pwl_vehicle0_node3_time5_lambda_55
   - 45039.69929789972 isru_pwl_vehicle0_node3_time5_lambda_56
   - 45918.40422870246 isru_pwl_vehicle0_node3_time5_lambda_57
   - 46797.40463609257 isru_pwl_vehicle0_node3_time5_lambda_58
   - 47676.69015085884 isru_pwl_vehicle0_node3_time5_lambda_59
   - 48556.24906977034 isru_pwl_vehicle0_node3_time5_lambda_60
   - 49436.06855233612 isru_pwl_vehicle0_node3_time5_lambda_61
   - 50316.13480225825 isru_pwl_vehicle0_node3_time5_lambda_62
   - 51196.4332340237 isru_pwl_vehicle0_node3_time5_lambda_63
   - 52076.94862519771 isru_pwl_vehicle0_node3_time5_lambda_64
   - 52957.66525506565 isru_pwl_vehicle0_node3_time5_lambda_65
   - 53838.56703032609 isru_pwl_vehicle0_node3_time5_lambda_66
   - 54719.63759857266 isru_pwl_vehicle0_node3_time5_lambda_67
   - 55600.860450318 isru_pwl_vehicle0_node3_time5_lambda_68
   - 56482.21901031626 isru_pwl_vehicle0_node3_time5_lambda_69
   - 57363.69671893076 isru_pwl_vehicle0_node3_time5_lambda_70
   - 58245.27710427711 isru_pwl_vehicle0_node3_time5_lambda_71
   - 59126.94384584791 isru_pwl_vehicle0_node3_time5_lambda_72
   - 60008.68083029681 isru_pwl_vehicle0_node3_time5_lambda_73
   - 60890.47220002831 isru_pwl_vehicle0_node3_time5_lambda_74
   - 61772.30239520559 isru_pwl_vehicle0_node3_time5_lambda_75
   - 62654.15618975411 isru_pwl_vehicle0_node3_time5_lambda_76
   - 63536.01872190295 isru_pwl_vehicle0_node3_time5_lambda_77
   - 64417.87551977086 isru_pwl_vehicle0_node3_time5_lambda_78
   - 65299.71252246922 isru_pwl_vehicle0_node3_time5_lambda_79
   - 66181.5160971603 isru_pwl_vehicle0_node3_time5_lambda_80
   - 67063.27305247675 isru_pwl_vehicle0_node3_time5_lambda_81
   - 67944.97064867713 isru_pwl_vehicle0_node3_time5_lambda_82
   - 68826.59660488224 isru_pwl_vehicle0_node3_time5_lambda_83
   - 69708.1391037096 isru_pwl_vehicle0_node3_time5_lambda_84
   - 70589.58679359611 isru_pwl_vehicle0_node3_time5_lambda_85
   - 71470.92878907495 isru_pwl_vehicle0_node3_time5_lambda_86
   - 72352.15466924875 isru_pwl_vehicle0_node3_time5_lambda_87
   - 73233.25447468 isru_pwl_vehicle0_node3_time5_lambda_88
   - 74114.21870289929 isru_pwl_vehicle0_node3_time5_lambda_89
   - 74995.03830271348 isru_pwl_vehicle0_node3_time5_lambda_90
   - 75875.70466747832 isru_pwl_vehicle0_node3_time5_lambda_91
   - 76756.20962748471 isru_pwl_vehicle0_node3_time5_lambda_92
   - 77636.5454415929 isru_pwl_vehicle0_node3_time5_lambda_93
   - 78516.70478823519 isru_pwl_vehicle0_node3_time5_lambda_94
   - 79396.68075589606 isru_pwl_vehicle0_node3_time5_lambda_95
   - 80276.46683316681 isru_pwl_vehicle0_node3_time5_lambda_96
   - 81156.05689846189 isru_pwl_vehicle0_node3_time5_lambda_97
   - 82035.44520947429 isru_pwl_vehicle0_node3_time5_lambda_98
   - 82914.62639243968 isru_pwl_vehicle0_node3_time5_lambda_99
   - 83793.5954312698 isru_pwl_vehicle0_node3_time5_lambda_100 <= 0
 isru_pwl_vehicle0_node3_time5_branch_pos_bit_0:
   isru_pwl_vehicle0_node3_time5_lambda_65
   + isru_pwl_vehicle0_node3_time5_lambda_66
   + isru_pwl_vehicle0_node3_time5_lambda_67
   + isru_pwl_vehicle0_node3_time5_lambda_68
   + isru_pwl_vehicle0_node3_time5_lambda_69
   + isru_pwl_vehicle0_node3_time5_lambda_70
   + isru_pwl_vehicle0_node3_time5_lambda_71
   + isru_pwl_vehicle0_node3_time5_lambda_72
   + isru_pwl_vehicle0_node3_time5_lambda_73
   + isru_pwl_vehicle0_node3_time5_lambda_74
   + isru_pwl_vehicle0_node3_time5_lambda_75
   + isru_pwl_vehicle0_node3_time5_lambda_76
   + isru_pwl_vehicle0_node3_time5_lambda_77
   + isru_pwl_vehicle0_node3_time5_lambda_78
   + isru_pwl_vehicle0_node3_time5_lambda_79
   + isru_pwl_vehicle0_node3_time5_lambda_80
   + isru_pwl_vehicle0_node3_time5_lambda_81
   + isru_pwl_vehicle0_node3_time5_lambda_82
   + isru_pwl_vehicle0_node3_time5_lambda_83
   + isru_pwl_vehicle0_node3_time5_lambda_84
   + isru_pwl_vehicle0_node3_time5_lambda_85
   + isru_pwl_vehicle0_node3_time5_lambda_86
   + isru_pwl_vehicle0_node3_time5_lambda_87
   + isru_pwl_vehicle0_node3_time5_lambda_88
   + isru_pwl_vehicle0_node3_time5_lambda_89
   + isru_pwl_vehicle0_node3_time5_lambda_90
   + isru_pwl_vehicle0_node3_time5_lambda_91
   + isru_pwl_vehicle0_node3_time5_lambda_92
   + isru_pwl_vehicle0_node3_time5_lambda_93
   + isru_pwl_vehicle0_node3_time5_lambda_94
   + isru_pwl_vehicle0_node3_time5_lambda_95
   + isru_pwl_vehicle0_node3_time5_lambda_96
   + isru_pwl_vehicle0_node3_time5_lambda_97
   + isru_pwl_vehicle0_node3_time5_lambda_98
   + isru_pwl_vehicle0_node3_time5_lambda_99
   + isru_pwl_vehicle0_node3_time5_lambda_100
   - isru_pwl_vehicle0_node3_time5_graybit_0 <= 0
 isru_pwl_vehicle0_node3_time5_branch_neg_bit_0:
   isru_pwl_vehicle0_node3_time5_lambda_0
   + isru_pwl_vehicle0_node3_time5_lambda_1
   + isru_pwl_vehicle0_node3_time5_lambda_2
   + isru_pwl_vehicle0_node3_time5_lambda_3
   + isru_pwl_vehicle0_node3_time5_lambda_4
   + isru_pwl_vehicle0_node3_time5_lambda_5
   + isru_pwl_vehicle0_node3_time5_lambda_6
   + isru_pwl_vehicle0_node3_time5_lambda_7
   + isru_pwl_vehicle0_node3_time5_lambda_8
   + isru_pwl_vehicle0_node3_time5_lambda_9
   + isru_pwl_vehicle0_node3_time5_lambda_10
   + isru_pwl_vehicle0_node3_time5_lambda_11
   + isru_pwl_vehicle0_node3_time5_lambda_12
   + isru_pwl_vehicle0_node3_time5_lambda_13
   + isru_pwl_vehicle0_node3_time5_lambda_14
   + isru_pwl_vehicle0_node3_time5_lambda_15
   + isru_pwl_vehicle0_node3_time5_lambda_16
   + isru_pwl_vehicle0_node3_time5_lambda_17
   + isru_pwl_vehicle0_node3_time5_lambda_18
   + isru_pwl_vehicle0_node3_time5_lambda_19
   + isru_pwl_vehicle0_node3_time5_lambda_20
   + isru_pwl_vehicle0_node3_time5_lambda_21
   + isru_pwl_vehicle0_node3_time5_lambda_22
   + isru_pwl_vehicle0_node3_time5_lambda_23
   + isru_pwl_vehicle0_node3_time5_lambda_24
   + isru_pwl_vehicle0_node3_time5_lambda_25
   + isru_pwl_vehicle0_node3_time5_lambda_26
   + isru_pwl_vehicle0_node3_time5_lambda_27
   + isru_pwl_vehicle0_node3_time5_lambda_28
   + isru_pwl_vehicle0_node3_time5_lambda_29
   + isru_pwl_vehicle0_node3_time5_lambda_30
   + isru_pwl_vehicle0_node3_time5_lambda_31
   + isru_pwl_vehicle0_node3_time5_lambda_32
   + isru_pwl_vehicle0_node3_time5_lambda_33
   + isru_pwl_vehicle0_node3_time5_lambda_34
   + isru_pwl_vehicle0_node3_time5_lambda_35
   + isru_pwl_vehicle0_node3_time5_lambda_36
   + isru_pwl_vehicle0_node3_time5_lambda_37
   + isru_pwl_vehicle0_node3_time5_lambda_38
   + isru_pwl_vehicle0_node3_time5_lambda_39
   + isru_pwl_vehicle0_node3_time5_lambda_40
   + isru_pwl_vehicle0_node3_time5_lambda_41
   + isru_pwl_vehicle0_node3_time5_lambda_42
   + isru_pwl_vehicle0_node3_time5_lambda_43
   + isru_pwl_vehicle0_node3_time5_lambda_44
   + isru_pwl_vehicle0_node3_time5_lambda_45
   + isru_pwl_vehicle0_node3_time5_lambda_46
   + isru_pwl_vehicle0_node3_time5_lambda_47
   + isru_pwl_vehicle0_node3_time5_lambda_48
   + isru_pwl_vehicle0_node3_time5_lambda_49
   + isru_pwl_vehicle0_node3_time5_lambda_50
   + isru_pwl_vehicle0_node3_time5_lambda_51
   + isru_pwl_vehicle0_node3_time5_lambda_52
   + isru_pwl_vehicle0_node3_time5_lambda_53
   + isru_pwl_vehicle0_node3_time5_lambda_54
   + isru_pwl_vehicle0_node3_time5_lambda_55
   + isru_pwl_vehicle0_node3_time5_lambda_56
   + isru_pwl_vehicle0_node3_time5_lambda_57
   + isru_pwl_vehicle0_node3_time5_lambda_58
   + isru_pwl_vehicle0_node3_time5_lambda_59
   + isru_pwl_vehicle0_node3_time5_lambda_60
   + isru_pwl_vehicle0_node3_time5_lambda_61
   + isru_pwl_vehicle0_node3_time5_lambda_62
   + isru_pwl_vehicle0_node3_time5_lambda_63
   + isru_pwl_vehicle0_node3_time5_graybit_0 <= 1
 isru_pwl_vehicle0_node3_time5_branch_pos_bit_1:
   isru_pwl_vehicle0_node3_time5_lambda_33
   + isru_pwl_vehicle0_node3_time5_lambda_34
   + isru_pwl_vehicle0_node3_time5_lambda_35
   + isru_pwl_vehicle0_node3_time5_lambda_36
   + isru_pwl_vehicle0_node3_time5_lambda_37
   + isru_pwl_vehicle0_node3_time5_lambda_38
   + isru_pwl_vehicle0_node3_time5_lambda_39
   + isru_pwl_vehicle0_node3_time5_lambda_40
   + isru_pwl_vehicle0_node3_time5_lambda_41
   + isru_pwl_vehicle0_node3_time5_lambda_42
   + isru_pwl_vehicle0_node3_time5_lambda_43
   + isru_pwl_vehicle0_node3_time5_lambda_44
   + isru_pwl_vehicle0_node3_time5_lambda_45
   + isru_pwl_vehicle0_node3_time5_lambda_46
   + isru_pwl_vehicle0_node3_time5_lambda_47
   + isru_pwl_vehicle0_node3_time5_lambda_48
   + isru_pwl_vehicle0_node3_time5_lambda_49
   + isru_pwl_vehicle0_node3_time5_lambda_50
   + isru_pwl_vehicle0_node3_time5_lambda_51
   + isru_pwl_vehicle0_node3_time5_lambda_52
   + isru_pwl_vehicle0_node3_time5_lambda_53
   + isru_pwl_vehicle0_node3_time5_lambda_54
   + isru_pwl_vehicle0_node3_time5_lambda_55
   + isru_pwl_vehicle0_node3_time5_lambda_56
   + isru_pwl_vehicle0_node3_time5_lambda_57
   + isru_pwl_vehicle0_node3_time5_lambda_58
   + isru_pwl_vehicle0_node3_time5_lambda_59
   + isru_pwl_vehicle0_node3_time5_lambda_60
   + isru_pwl_vehicle0_node3_time5_lambda_61
   + isru_pwl_vehicle0_node3_time5_lambda_62
   + isru_pwl_vehicle0_node3_time5_lambda_63
   + isru_pwl_vehicle0_node3_time5_lambda_64
   + isru_pwl_vehicle0_node3_time5_lambda_65
   + isru_pwl_vehicle0_node3_time5_lambda_66
   + isru_pwl_vehicle0_node3_time5_lambda_67
   + isru_pwl_vehicle0_node3_time5_lambda_68
   + isru_pwl_vehicle0_node3_time5_lambda_69
   + isru_pwl_vehicle0_node3_time5_lambda_70
   + isru_pwl_vehicle0_node3_time5_lambda_71
   + isru_pwl_vehicle0_node3_time5_lambda_72
   + isru_pwl_vehicle0_node3_time5_lambda_73
   + isru_pwl_vehicle0_node3_time5_lambda_74
   + isru_pwl_vehicle0_node3_time5_lambda_75
   + isru_pwl_vehicle0_node3_time5_lambda_76
   + isru_pwl_vehicle0_node3_time5_lambda_77
   + isru_pwl_vehicle0_node3_time5_lambda_78
   + isru_pwl_vehicle0_node3_time5_lambda_79
   + isru_pwl_vehicle0_node3_time5_lambda_80
   + isru_pwl_vehicle0_node3_time5_lambda_81
   + isru_pwl_vehicle0_node3_time5_lambda_82
   + isru_pwl_vehicle0_node3_time5_lambda_83
   + isru_pwl_vehicle0_node3_time5_lambda_84
   + isru_pwl_vehicle0_node3_time5_lambda_85
   + isru_pwl_vehicle0_node3_time5_lambda_86
   + isru_pwl_vehicle0_node3_time5_lambda_87
   + isru_pwl_vehicle0_node3_time5_lambda_88
   + isru_pwl_vehicle0_node3_time5_lambda_89
   + isru_pwl_vehicle0_node3_time5_lambda_90
   + isru_pwl_vehicle0_node3_time5_lambda_91
   + isru_pwl_vehicle0_node3_time5_lambda_92
   + isru_pwl_vehicle0_node3_time5_lambda_93
   + isru_pwl_vehicle0_node3_time5_lambda_94
   + isru_pwl_vehicle0_node3_time5_lambda_95
   - isru_pwl_vehicle0_node3_time5_graybit_1 <= 0
 isru_pwl_vehicle0_node3_time5_branch_neg_bit_1:
   isru_pwl_vehicle0_node3_time5_lambda_0
   + isru_pwl_vehicle0_node3_time5_lambda_1
   + isru_pwl_vehicle0_node3_time5_lambda_2
   + isru_pwl_vehicle0_node3_time5_lambda_3
   + isru_pwl_vehicle0_node3_time5_lambda_4
   + isru_pwl_vehicle0_node3_time5_lambda_5
   + isru_pwl_vehicle0_node3_time5_lambda_6
   + isru_pwl_vehicle0_node3_time5_lambda_7
   + isru_pwl_vehicle0_node3_time5_lambda_8
   + isru_pwl_vehicle0_node3_time5_lambda_9
   + isru_pwl_vehicle0_node3_time5_lambda_10
   + isru_pwl_vehicle0_node3_time5_lambda_11
   + isru_pwl_vehicle0_node3_time5_lambda_12
   + isru_pwl_vehicle0_node3_time5_lambda_13
   + isru_pwl_vehicle0_node3_time5_lambda_14
   + isru_pwl_vehicle0_node3_time5_lambda_15
   + isru_pwl_vehicle0_node3_time5_lambda_16
   + isru_pwl_vehicle0_node3_time5_lambda_17
   + isru_pwl_vehicle0_node3_time5_lambda_18
   + isru_pwl_vehicle0_node3_time5_lambda_19
   + isru_pwl_vehicle0_node3_time5_lambda_20
   + isru_pwl_vehicle0_node3_time5_lambda_21
   + isru_pwl_vehicle0_node3_time5_lambda_22
   + isru_pwl_vehicle0_node3_time5_lambda_23
   + isru_pwl_vehicle0_node3_time5_lambda_24
   + isru_pwl_vehicle0_node3_time5_lambda_25
   + isru_pwl_vehicle0_node3_time5_lambda_26
   + isru_pwl_vehicle0_node3_time5_lambda_27
   + isru_pwl_vehicle0_node3_time5_lambda_28
   + isru_pwl_vehicle0_node3_time5_lambda_29
   + isru_pwl_vehicle0_node3_time5_lambda_30
   + isru_pwl_vehicle0_node3_time5_lambda_31
   + isru_pwl_vehicle0_node3_time5_lambda_97
   + isru_pwl_vehicle0_node3_time5_lambda_98
   + isru_pwl_vehicle0_node3_time5_lambda_99
   + isru_pwl_vehicle0_node3_time5_lambda_100
   + isru_pwl_vehicle0_node3_time5_graybit_1 <= 1
 isru_pwl_vehicle0_node3_time5_branch_pos_bit_2:
   isru_pwl_vehicle0_node3_time5_lambda_17
   + isru_pwl_vehicle0_node3_time5_lambda_18
   + isru_pwl_vehicle0_node3_time5_lambda_19
   + isru_pwl_vehicle0_node3_time5_lambda_20
   + isru_pwl_vehicle0_node3_time5_lambda_21
   + isru_pwl_vehicle0_node3_time5_lambda_22
   + isru_pwl_vehicle0_node3_time5_lambda_23
   + isru_pwl_vehicle0_node3_time5_lambda_24
   + isru_pwl_vehicle0_node3_time5_lambda_25
   + isru_pwl_vehicle0_node3_time5_lambda_26
   + isru_pwl_vehicle0_node3_time5_lambda_27
   + isru_pwl_vehicle0_node3_time5_lambda_28
   + isru_pwl_vehicle0_node3_time5_lambda_29
   + isru_pwl_vehicle0_node3_time5_lambda_30
   + isru_pwl_vehicle0_node3_time5_lambda_31
   + isru_pwl_vehicle0_node3_time5_lambda_32
   + isru_pwl_vehicle0_node3_time5_lambda_33
   + isru_pwl_vehicle0_node3_time5_lambda_34
   + isru_pwl_vehicle0_node3_time5_lambda_35
   + isru_pwl_vehicle0_node3_time5_lambda_36
   + isru_pwl_vehicle0_node3_time5_lambda_37
   + isru_pwl_vehicle0_node3_time5_lambda_38
   + isru_pwl_vehicle0_node3_time5_lambda_39
   + isru_pwl_vehicle0_node3_time5_lambda_40
   + isru_pwl_vehicle0_node3_time5_lambda_41
   + isru_pwl_vehicle0_node3_time5_lambda_42
   + isru_pwl_vehicle0_node3_time5_lambda_43
   + isru_pwl_vehicle0_node3_time5_lambda_44
   + isru_pwl_vehicle0_node3_time5_lambda_45
   + isru_pwl_vehicle0_node3_time5_lambda_46
   + isru_pwl_vehicle0_node3_time5_lambda_47
   + isru_pwl_vehicle0_node3_time5_lambda_81
   + isru_pwl_vehicle0_node3_time5_lambda_82
   + isru_pwl_vehicle0_node3_time5_lambda_83
   + isru_pwl_vehicle0_node3_time5_lambda_84
   + isru_pwl_vehicle0_node3_time5_lambda_85
   + isru_pwl_vehicle0_node3_time5_lambda_86
   + isru_pwl_vehicle0_node3_time5_lambda_87
   + isru_pwl_vehicle0_node3_time5_lambda_88
   + isru_pwl_vehicle0_node3_time5_lambda_89
   + isru_pwl_vehicle0_node3_time5_lambda_90
   + isru_pwl_vehicle0_node3_time5_lambda_91
   + isru_pwl_vehicle0_node3_time5_lambda_92
   + isru_pwl_vehicle0_node3_time5_lambda_93
   + isru_pwl_vehicle0_node3_time5_lambda_94
   + isru_pwl_vehicle0_node3_time5_lambda_95
   + isru_pwl_vehicle0_node3_time5_lambda_96
   + isru_pwl_vehicle0_node3_time5_lambda_97
   + isru_pwl_vehicle0_node3_time5_lambda_98
   + isru_pwl_vehicle0_node3_time5_lambda_99
   + isru_pwl_vehicle0_node3_time5_lambda_100
   - isru_pwl_vehicle0_node3_time5_graybit_2 <= 0
 isru_pwl_vehicle0_node3_time5_branch_neg_bit_2:
   isru_pwl_vehicle0_node3_time5_lambda_0
   + isru_pwl_vehicle0_node3_time5_lambda_1
   + isru_pwl_vehicle0_node3_time5_lambda_2
   + isru_pwl_vehicle0_node3_time5_lambda_3
   + isru_pwl_vehicle0_node3_time5_lambda_4
   + isru_pwl_vehicle0_node3_time5_lambda_5
   + isru_pwl_vehicle0_node3_time5_lambda_6
   + isru_pwl_vehicle0_node3_time5_lambda_7
   + isru_pwl_vehicle0_node3_time5_lambda_8
   + isru_pwl_vehicle0_node3_time5_lambda_9
   + isru_pwl_vehicle0_node3_time5_lambda_10
   + isru_pwl_vehicle0_node3_time5_lambda_11
   + isru_pwl_vehicle0_node3_time5_lambda_12
   + isru_pwl_vehicle0_node3_time5_lambda_13
   + isru_pwl_vehicle0_node3_time5_lambda_14
   + isru_pwl_vehicle0_node3_time5_lambda_15
   + isru_pwl_vehicle0_node3_time5_lambda_49
   + isru_pwl_vehicle0_node3_time5_lambda_50
   + isru_pwl_vehicle0_node3_time5_lambda_51
   + isru_pwl_vehicle0_node3_time5_lambda_52
   + isru_pwl_vehicle0_node3_time5_lambda_53
   + isru_pwl_vehicle0_node3_time5_lambda_54
   + isru_pwl_vehicle0_node3_time5_lambda_55
   + isru_pwl_vehicle0_node3_time5_lambda_56
   + isru_pwl_vehicle0_node3_time5_lambda_57
   + isru_pwl_vehicle0_node3_time5_lambda_58
   + isru_pwl_vehicle0_node3_time5_lambda_59
   + isru_pwl_vehicle0_node3_time5_lambda_60
   + isru_pwl_vehicle0_node3_time5_lambda_61
   + isru_pwl_vehicle0_node3_time5_lambda_62
   + isru_pwl_vehicle0_node3_time5_lambda_63
   + isru_pwl_vehicle0_node3_time5_lambda_64
   + isru_pwl_vehicle0_node3_time5_lambda_65
   + isru_pwl_vehicle0_node3_time5_lambda_66
   + isru_pwl_vehicle0_node3_time5_lambda_67
   + isru_pwl_vehicle0_node3_time5_lambda_68
   + isru_pwl_vehicle0_node3_time5_lambda_69
   + isru_pwl_vehicle0_node3_time5_lambda_70
   + isru_pwl_vehicle0_node3_time5_lambda_71
   + isru_pwl_vehicle0_node3_time5_lambda_72
   + isru_pwl_vehicle0_node3_time5_lambda_73
   + isru_pwl_vehicle0_node3_time5_lambda_74
   + isru_pwl_vehicle0_node3_time5_lambda_75
   + isru_pwl_vehicle0_node3_time5_lambda_76
   + isru_pwl_vehicle0_node3_time5_lambda_77
   + isru_pwl_vehicle0_node3_time5_lambda_78
   + isru_pwl_vehicle0_node3_time5_lambda_79
   + isru_pwl_vehicle0_node3_time5_graybit_2 <= 1
 isru_pwl_vehicle0_node3_time5_branch_pos_bit_3:
   isru_pwl_vehicle0_node3_time5_lambda_9
   + isru_pwl_vehicle0_node3_time5_lambda_10
   + isru_pwl_vehicle0_node3_time5_lambda_11
   + isru_pwl_vehicle0_node3_time5_lambda_12
   + isru_pwl_vehicle0_node3_time5_lambda_13
   + isru_pwl_vehicle0_node3_time5_lambda_14
   + isru_pwl_vehicle0_node3_time5_lambda_15
   + isru_pwl_vehicle0_node3_time5_lambda_16
   + isru_pwl_vehicle0_node3_time5_lambda_17
   + isru_pwl_vehicle0_node3_time5_lambda_18
   + isru_pwl_vehicle0_node3_time5_lambda_19
   + isru_pwl_vehicle0_node3_time5_lambda_20
   + isru_pwl_vehicle0_node3_time5_lambda_21
   + isru_pwl_vehicle0_node3_time5_lambda_22
   + isru_pwl_vehicle0_node3_time5_lambda_23
   + isru_pwl_vehicle0_node3_time5_lambda_41
   + isru_pwl_vehicle0_node3_time5_lambda_42
   + isru_pwl_vehicle0_node3_time5_lambda_43
   + isru_pwl_vehicle0_node3_time5_lambda_44
   + isru_pwl_vehicle0_node3_time5_lambda_45
   + isru_pwl_vehicle0_node3_time5_lambda_46
   + isru_pwl_vehicle0_node3_time5_lambda_47
   + isru_pwl_vehicle0_node3_time5_lambda_48
   + isru_pwl_vehicle0_node3_time5_lambda_49
   + isru_pwl_vehicle0_node3_time5_lambda_50
   + isru_pwl_vehicle0_node3_time5_lambda_51
   + isru_pwl_vehicle0_node3_time5_lambda_52
   + isru_pwl_vehicle0_node3_time5_lambda_53
   + isru_pwl_vehicle0_node3_time5_lambda_54
   + isru_pwl_vehicle0_node3_time5_lambda_55
   + isru_pwl_vehicle0_node3_time5_lambda_73
   + isru_pwl_vehicle0_node3_time5_lambda_74
   + isru_pwl_vehicle0_node3_time5_lambda_75
   + isru_pwl_vehicle0_node3_time5_lambda_76
   + isru_pwl_vehicle0_node3_time5_lambda_77
   + isru_pwl_vehicle0_node3_time5_lambda_78
   + isru_pwl_vehicle0_node3_time5_lambda_79
   + isru_pwl_vehicle0_node3_time5_lambda_80
   + isru_pwl_vehicle0_node3_time5_lambda_81
   + isru_pwl_vehicle0_node3_time5_lambda_82
   + isru_pwl_vehicle0_node3_time5_lambda_83
   + isru_pwl_vehicle0_node3_time5_lambda_84
   + isru_pwl_vehicle0_node3_time5_lambda_85
   + isru_pwl_vehicle0_node3_time5_lambda_86
   + isru_pwl_vehicle0_node3_time5_lambda_87
   - isru_pwl_vehicle0_node3_time5_graybit_3 <= 0
 isru_pwl_vehicle0_node3_time5_branch_neg_bit_3:
   isru_pwl_vehicle0_node3_time5_lambda_0
   + isru_pwl_vehicle0_node3_time5_lambda_1
   + isru_pwl_vehicle0_node3_time5_lambda_2
   + isru_pwl_vehicle0_node3_time5_lambda_3
   + isru_pwl_vehicle0_node3_time5_lambda_4
   + isru_pwl_vehicle0_node3_time5_lambda_5
   + isru_pwl_vehicle0_node3_time5_lambda_6
   + isru_pwl_vehicle0_node3_time5_lambda_7
   + isru_pwl_vehicle0_node3_time5_lambda_25
   + isru_pwl_vehicle0_node3_time5_lambda_26
   + isru_pwl_vehicle0_node3_time5_lambda_27
   + isru_pwl_vehicle0_node3_time5_lambda_28
   + isru_pwl_vehicle0_node3_time5_lambda_29
   + isru_pwl_vehicle0_node3_time5_lambda_30
   + isru_pwl_vehicle0_node3_time5_lambda_31
   + isru_pwl_vehicle0_node3_time5_lambda_32
   + isru_pwl_vehicle0_node3_time5_lambda_33
   + isru_pwl_vehicle0_node3_time5_lambda_34
   + isru_pwl_vehicle0_node3_time5_lambda_35
   + isru_pwl_vehicle0_node3_time5_lambda_36
   + isru_pwl_vehicle0_node3_time5_lambda_37
   + isru_pwl_vehicle0_node3_time5_lambda_38
   + isru_pwl_vehicle0_node3_time5_lambda_39
   + isru_pwl_vehicle0_node3_time5_lambda_57
   + isru_pwl_vehicle0_node3_time5_lambda_58
   + isru_pwl_vehicle0_node3_time5_lambda_59
   + isru_pwl_vehicle0_node3_time5_lambda_60
   + isru_pwl_vehicle0_node3_time5_lambda_61
   + isru_pwl_vehicle0_node3_time5_lambda_62
   + isru_pwl_vehicle0_node3_time5_lambda_63
   + isru_pwl_vehicle0_node3_time5_lambda_64
   + isru_pwl_vehicle0_node3_time5_lambda_65
   + isru_pwl_vehicle0_node3_time5_lambda_66
   + isru_pwl_vehicle0_node3_time5_lambda_67
   + isru_pwl_vehicle0_node3_time5_lambda_68
   + isru_pwl_vehicle0_node3_time5_lambda_69
   + isru_pwl_vehicle0_node3_time5_lambda_70
   + isru_pwl_vehicle0_node3_time5_lambda_71
   + isru_pwl_vehicle0_node3_time5_lambda_89
   + isru_pwl_vehicle0_node3_time5_lambda_90
   + isru_pwl_vehicle0_node3_time5_lambda_91
   + isru_pwl_vehicle0_node3_time5_lambda_92
   + isru_pwl_vehicle0_node3_time5_lambda_93
   + isru_pwl_vehicle0_node3_time5_lambda_94
   + isru_pwl_vehicle0_node3_time5_lambda_95
   + isru_pwl_vehicle0_node3_time5_lambda_96
   + isru_pwl_vehicle0_node3_time5_lambda_97
   + isru_pwl_vehicle0_node3_time5_lambda_98
   + isru_pwl_vehicle0_node3_time5_lambda_99
   + isru_pwl_vehicle0_node3_time5_lambda_100
   + isru_pwl_vehicle0_node3_time5_graybit_3 <= 1
 isru_pwl_vehicle0_node3_time5_branch_pos_bit_4:
   isru_pwl_vehicle0_node3_time5_lambda_5
   + isru_pwl_vehicle0_node3_time5_lambda_6
   + isru_pwl_vehicle0_node3_time5_lambda_7
   + isru_pwl_vehicle0_node3_time5_lambda_8
   + isru_pwl_vehicle0_node3_time5_lambda_9
   + isru_pwl_vehicle0_node3_time5_lambda_10
   + isru_pwl_vehicle0_node3_time5_lambda_11
   + isru_pwl_vehicle0_node3_time5_lambda_21
   + isru_pwl_vehicle0_node3_time5_lambda_22
   + isru_pwl_vehicle0_node3_time5_lambda_23
   + isru_pwl_vehicle0_node3_time5_lambda_24
   + isru_pwl_vehicle0_node3_time5_lambda_25
   + isru_pwl_vehicle0_node3_time5_lambda_26
   + isru_pwl_vehicle0_node3_time5_lambda_27
   + isru_pwl_vehicle0_node3_time5_lambda_37
   + isru_pwl_vehicle0_node3_time5_lambda_38
   + isru_pwl_vehicle0_node3_time5_lambda_39
   + isru_pwl_vehicle0_node3_time5_lambda_40
   + isru_pwl_vehicle0_node3_time5_lambda_41
   + isru_pwl_vehicle0_node3_time5_lambda_42
   + isru_pwl_vehicle0_node3_time5_lambda_43
   + isru_pwl_vehicle0_node3_time5_lambda_53
   + isru_pwl_vehicle0_node3_time5_lambda_54
   + isru_pwl_vehicle0_node3_time5_lambda_55
   + isru_pwl_vehicle0_node3_time5_lambda_56
   + isru_pwl_vehicle0_node3_time5_lambda_57
   + isru_pwl_vehicle0_node3_time5_lambda_58
   + isru_pwl_vehicle0_node3_time5_lambda_59
   + isru_pwl_vehicle0_node3_time5_lambda_69
   + isru_pwl_vehicle0_node3_time5_lambda_70
   + isru_pwl_vehicle0_node3_time5_lambda_71
   + isru_pwl_vehicle0_node3_time5_lambda_72
   + isru_pwl_vehicle0_node3_time5_lambda_73
   + isru_pwl_vehicle0_node3_time5_lambda_74
   + isru_pwl_vehicle0_node3_time5_lambda_75
   + isru_pwl_vehicle0_node3_time5_lambda_85
   + isru_pwl_vehicle0_node3_time5_lambda_86
   + isru_pwl_vehicle0_node3_time5_lambda_87
   + isru_pwl_vehicle0_node3_time5_lambda_88
   + isru_pwl_vehicle0_node3_time5_lambda_89
   + isru_pwl_vehicle0_node3_time5_lambda_90
   + isru_pwl_vehicle0_node3_time5_lambda_91
   - isru_pwl_vehicle0_node3_time5_graybit_4 <= 0
 isru_pwl_vehicle0_node3_time5_branch_neg_bit_4:
   isru_pwl_vehicle0_node3_time5_lambda_0
   + isru_pwl_vehicle0_node3_time5_lambda_1
   + isru_pwl_vehicle0_node3_time5_lambda_2
   + isru_pwl_vehicle0_node3_time5_lambda_3
   + isru_pwl_vehicle0_node3_time5_lambda_13
   + isru_pwl_vehicle0_node3_time5_lambda_14
   + isru_pwl_vehicle0_node3_time5_lambda_15
   + isru_pwl_vehicle0_node3_time5_lambda_16
   + isru_pwl_vehicle0_node3_time5_lambda_17
   + isru_pwl_vehicle0_node3_time5_lambda_18
   + isru_pwl_vehicle0_node3_time5_lambda_19
   + isru_pwl_vehicle0_node3_time5_lambda_29
   + isru_pwl_vehicle0_node3_time5_lambda_30
   + isru_pwl_vehicle0_node3_time5_lambda_31
   + isru_pwl_vehicle0_node3_time5_lambda_32
   + isru_pwl_vehicle0_node3_time5_lambda_33
   + isru_pwl_vehicle0_node3_time5_lambda_34
   + isru_pwl_vehicle0_node3_time5_lambda_35
   + isru_pwl_vehicle0_node3_time5_lambda_45
   + isru_pwl_vehicle0_node3_time5_lambda_46
   + isru_pwl_vehicle0_node3_time5_lambda_47
   + isru_pwl_vehicle0_node3_time5_lambda_48
   + isru_pwl_vehicle0_node3_time5_lambda_49
   + isru_pwl_vehicle0_node3_time5_lambda_50
   + isru_pwl_vehicle0_node3_time5_lambda_51
   + isru_pwl_vehicle0_node3_time5_lambda_61
   + isru_pwl_vehicle0_node3_time5_lambda_62
   + isru_pwl_vehicle0_node3_time5_lambda_63
   + isru_pwl_vehicle0_node3_time5_lambda_64
   + isru_pwl_vehicle0_node3_time5_lambda_65
   + isru_pwl_vehicle0_node3_time5_lambda_66
   + isru_pwl_vehicle0_node3_time5_lambda_67
   + isru_pwl_vehicle0_node3_time5_lambda_77
   + isru_pwl_vehicle0_node3_time5_lambda_78
   + isru_pwl_vehicle0_node3_time5_lambda_79
   + isru_pwl_vehicle0_node3_time5_lambda_80
   + isru_pwl_vehicle0_node3_time5_lambda_81
   + isru_pwl_vehicle0_node3_time5_lambda_82
   + isru_pwl_vehicle0_node3_time5_lambda_83
   + isru_pwl_vehicle0_node3_time5_lambda_93
   + isru_pwl_vehicle0_node3_time5_lambda_94
   + isru_pwl_vehicle0_node3_time5_lambda_95
   + isru_pwl_vehicle0_node3_time5_lambda_96
   + isru_pwl_vehicle0_node3_time5_lambda_97
   + isru_pwl_vehicle0_node3_time5_lambda_98
   + isru_pwl_vehicle0_node3_time5_lambda_99
   + isru_pwl_vehicle0_node3_time5_lambda_100
   + isru_pwl_vehicle0_node3_time5_graybit_4 <= 1
 isru_pwl_vehicle0_node3_time5_branch_pos_bit_5:
   isru_pwl_vehicle0_node3_time5_lambda_3
   + isru_pwl_vehicle0_node3_time5_lambda_4
   + isru_pwl_vehicle0_node3_time5_lambda_5
   + isru_pwl_vehicle0_node3_time5_lambda_11
   + isru_pwl_vehicle0_node3_time5_lambda_12
   + isru_pwl_vehicle0_node3_time5_lambda_13
   + isru_pwl_vehicle0_node3_time5_lambda_19
   + isru_pwl_vehicle0_node3_time5_lambda_20
   + isru_pwl_vehicle0_node3_time5_lambda_21
   + isru_pwl_vehicle0_node3_time5_lambda_27
   + isru_pwl_vehicle0_node3_time5_lambda_28
   + isru_pwl_vehicle0_node3_time5_lambda_29
   + isru_pwl_vehicle0_node3_time5_lambda_35
   + isru_pwl_vehicle0_node3_time5_lambda_36
   + isru_pwl_vehicle0_node3_time5_lambda_37
   + isru_pwl_vehicle0_node3_time5_lambda_43
   + isru_pwl_vehicle0_node3_time5_lambda_44
   + isru_pwl_vehicle0_node3_time5_lambda_45
   + isru_pwl_vehicle0_node3_time5_lambda_51
   + isru_pwl_vehicle0_node3_time5_lambda_52
   + isru_pwl_vehicle0_node3_time5_lambda_53
   + isru_pwl_vehicle0_node3_time5_lambda_59
   + isru_pwl_vehicle0_node3_time5_lambda_60
   + isru_pwl_vehicle0_node3_time5_lambda_61
   + isru_pwl_vehicle0_node3_time5_lambda_67
   + isru_pwl_vehicle0_node3_time5_lambda_68
   + isru_pwl_vehicle0_node3_time5_lambda_69
   + isru_pwl_vehicle0_node3_time5_lambda_75
   + isru_pwl_vehicle0_node3_time5_lambda_76
   + isru_pwl_vehicle0_node3_time5_lambda_77
   + isru_pwl_vehicle0_node3_time5_lambda_83
   + isru_pwl_vehicle0_node3_time5_lambda_84
   + isru_pwl_vehicle0_node3_time5_lambda_85
   + isru_pwl_vehicle0_node3_time5_lambda_91
   + isru_pwl_vehicle0_node3_time5_lambda_92
   + isru_pwl_vehicle0_node3_time5_lambda_93
   + isru_pwl_vehicle0_node3_time5_lambda_99
   + isru_pwl_vehicle0_node3_time5_lambda_100
   - isru_pwl_vehicle0_node3_time5_graybit_5 <= 0
 isru_pwl_vehicle0_node3_time5_branch_neg_bit_5:
   isru_pwl_vehicle0_node3_time5_lambda_0
   + isru_pwl_vehicle0_node3_time5_lambda_1
   + isru_pwl_vehicle0_node3_time5_lambda_7
   + isru_pwl_vehicle0_node3_time5_lambda_8
   + isru_pwl_vehicle0_node3_time5_lambda_9
   + isru_pwl_vehicle0_node3_time5_lambda_15
   + isru_pwl_vehicle0_node3_time5_lambda_16
   + isru_pwl_vehicle0_node3_time5_lambda_17
   + isru_pwl_vehicle0_node3_time5_lambda_23
   + isru_pwl_vehicle0_node3_time5_lambda_24
   + isru_pwl_vehicle0_node3_time5_lambda_25
   + isru_pwl_vehicle0_node3_time5_lambda_31
   + isru_pwl_vehicle0_node3_time5_lambda_32
   + isru_pwl_vehicle0_node3_time5_lambda_33
   + isru_pwl_vehicle0_node3_time5_lambda_39
   + isru_pwl_vehicle0_node3_time5_lambda_40
   + isru_pwl_vehicle0_node3_time5_lambda_41
   + isru_pwl_vehicle0_node3_time5_lambda_47
   + isru_pwl_vehicle0_node3_time5_lambda_48
   + isru_pwl_vehicle0_node3_time5_lambda_49
   + isru_pwl_vehicle0_node3_time5_lambda_55
   + isru_pwl_vehicle0_node3_time5_lambda_56
   + isru_pwl_vehicle0_node3_time5_lambda_57
   + isru_pwl_vehicle0_node3_time5_lambda_63
   + isru_pwl_vehicle0_node3_time5_lambda_64
   + isru_pwl_vehicle0_node3_time5_lambda_65
   + isru_pwl_vehicle0_node3_time5_lambda_71
   + isru_pwl_vehicle0_node3_time5_lambda_72
   + isru_pwl_vehicle0_node3_time5_lambda_73
   + isru_pwl_vehicle0_node3_time5_lambda_79
   + isru_pwl_vehicle0_node3_time5_lambda_80
   + isru_pwl_vehicle0_node3_time5_lambda_81
   + isru_pwl_vehicle0_node3_time5_lambda_87
   + isru_pwl_vehicle0_node3_time5_lambda_88
   + isru_pwl_vehicle0_node3_time5_lambda_89
   + isru_pwl_vehicle0_node3_time5_lambda_95
   + isru_pwl_vehicle0_node3_time5_lambda_96
   + isru_pwl_vehicle0_node3_time5_lambda_97
   + isru_pwl_vehicle0_node3_time5_graybit_5 <= 1
 isru_pwl_vehicle0_node3_time5_branch_pos_bit_6:
   isru_pwl_vehicle0_node3_time5_lambda_2
   + isru_pwl_vehicle0_node3_time5_lambda_6
   + isru_pwl_vehicle0_node3_time5_lambda_10
   + isru_pwl_vehicle0_node3_time5_lambda_14
   + isru_pwl_vehicle0_node3_time5_lambda_18
   + isru_pwl_vehicle0_node3_time5_lambda_22
   + isru_pwl_vehicle0_node3_time5_lambda_26
   + isru_pwl_vehicle0_node3_time5_lambda_30
   + isru_pwl_vehicle0_node3_time5_lambda_34
   + isru_pwl_vehicle0_node3_time5_lambda_38
   + isru_pwl_vehicle0_node3_time5_lambda_42
   + isru_pwl_vehicle0_node3_time5_lambda_46
   + isru_pwl_vehicle0_node3_time5_lambda_50
   + isru_pwl_vehicle0_node3_time5_lambda_54
   + isru_pwl_vehicle0_node3_time5_lambda_58
   + isru_pwl_vehicle0_node3_time5_lambda_62
   + isru_pwl_vehicle0_node3_time5_lambda_66
   + isru_pwl_vehicle0_node3_time5_lambda_70
   + isru_pwl_vehicle0_node3_time5_lambda_74
   + isru_pwl_vehicle0_node3_time5_lambda_78
   + isru_pwl_vehicle0_node3_time5_lambda_82
   + isru_pwl_vehicle0_node3_time5_lambda_86
   + isru_pwl_vehicle0_node3_time5_lambda_90
   + isru_pwl_vehicle0_node3_time5_lambda_94
   + isru_pwl_vehicle0_node3_time5_lambda_98
   - isru_pwl_vehicle0_node3_time5_graybit_6 <= 0
 isru_pwl_vehicle0_node3_time5_branch_neg_bit_6:
   isru_pwl_vehicle0_node3_time5_lambda_0
   + isru_pwl_vehicle0_node3_time5_lambda_4
   + isru_pwl_vehicle0_node3_time5_lambda_8
   + isru_pwl_vehicle0_node3_time5_lambda_12
   + isru_pwl_vehicle0_node3_time5_lambda_16
   + isru_pwl_vehicle0_node3_time5_lambda_20
   + isru_pwl_vehicle0_node3_time5_lambda_24
   + isru_pwl_vehicle0_node3_time5_lambda_28
   + isru_pwl_vehicle0_node3_time5_lambda_32
   + isru_pwl_vehicle0_node3_time5_lambda_36
   + isru_pwl_vehicle0_node3_time5_lambda_40
   + isru_pwl_vehicle0_node3_time5_lambda_44
   + isru_pwl_vehicle0_node3_time5_lambda_48
   + isru_pwl_vehicle0_node3_time5_lambda_52
   + isru_pwl_vehicle0_node3_time5_lambda_56
   + isru_pwl_vehicle0_node3_time5_lambda_60
   + isru_pwl_vehicle0_node3_time5_lambda_64
   + isru_pwl_vehicle0_node3_time5_lambda_68
   + isru_pwl_vehicle0_node3_time5_lambda_72
   + isru_pwl_vehicle0_node3_time5_lambda_76
   + isru_pwl_vehicle0_node3_time5_lambda_80
   + isru_pwl_vehicle0_node3_time5_lambda_84
   + isru_pwl_vehicle0_node3_time5_lambda_88
   + isru_pwl_vehicle0_node3_time5_lambda_92
   + isru_pwl_vehicle0_node3_time5_lambda_96
   + isru_pwl_vehicle0_node3_time5_lambda_100
   + isru_pwl_vehicle0_node3_time5_graybit_6 <= 1
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1000000:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= 0
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1000001:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -1
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1000010:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -1
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1000011:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1000100:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -1
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1000101:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1000110:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1000111:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1001000:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -1
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1001001:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1001010:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1001011:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1001100:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1001101:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1001110:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1001111:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   + isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1010100:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1010101:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1010110:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1010111:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   + isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1011000:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1011001:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1011010:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1011011:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   + isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1011100:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1011101:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   + isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1011110:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   + isru_pwl_vehicle0_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle0_node3_time5_forbid_unused_code_1011111:
   - isru_pwl_vehicle0_node3_time5_graybit_0
   + isru_pwl_vehicle0_node3_time5_graybit_1
   - isru_pwl_vehicle0_node3_time5_graybit_2
   - isru_pwl_vehicle0_node3_time5_graybit_3
   - isru_pwl_vehicle0_node3_time5_graybit_4
   - isru_pwl_vehicle0_node3_time5_graybit_5
   - isru_pwl_vehicle0_node3_time5_graybit_6 >= -5
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity5:
   0.99984 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   + 0.00821917808219178 isru_arc_propellant_vehicle0_node3_time5 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity6:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity7:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity8:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityactive_isru
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityactive_isru = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity9:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity10:
   - 8.2191780821917813e-04 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityactive_isru
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   - 179.96 sc_commodity_outflow_0,3,3,Tstart5,Tend8
   - 179.96 SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity11:
   sc_commodity_outflow_0,3,3,Tstart5,Tend8
   - sc_commodity_inflow_0,3,3,Tstart5,Tend8 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity12:
   SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity13:
   SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle0_start3_end3_time5:
   - Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   - Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   + Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   + Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   + 166481 sc_commodity_outflow_0,3,3,Tstart5,Tend8 >= 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity1:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_return
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew_return = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity2:
   - 25.695 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew
   - 25.695 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_return
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityconsumables
   - 25.695 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityconsumables = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityequipment
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityequipment = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditysamples
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditysamples = 0
 isru_pwl_vehicle1_node3_time5_lambda_sum:
   isru_pwl_vehicle1_node3_time5_lambda_0
   + isru_pwl_vehicle1_node3_time5_lambda_1
   + isru_pwl_vehicle1_node3_time5_lambda_2
   + isru_pwl_vehicle1_node3_time5_lambda_3
   + isru_pwl_vehicle1_node3_time5_lambda_4
   + isru_pwl_vehicle1_node3_time5_lambda_5
   + isru_pwl_vehicle1_node3_time5_lambda_6
   + isru_pwl_vehicle1_node3_time5_lambda_7
   + isru_pwl_vehicle1_node3_time5_lambda_8
   + isru_pwl_vehicle1_node3_time5_lambda_9
   + isru_pwl_vehicle1_node3_time5_lambda_10
   + isru_pwl_vehicle1_node3_time5_lambda_11
   + isru_pwl_vehicle1_node3_time5_lambda_12
   + isru_pwl_vehicle1_node3_time5_lambda_13
   + isru_pwl_vehicle1_node3_time5_lambda_14
   + isru_pwl_vehicle1_node3_time5_lambda_15
   + isru_pwl_vehicle1_node3_time5_lambda_16
   + isru_pwl_vehicle1_node3_time5_lambda_17
   + isru_pwl_vehicle1_node3_time5_lambda_18
   + isru_pwl_vehicle1_node3_time5_lambda_19
   + isru_pwl_vehicle1_node3_time5_lambda_20
   + isru_pwl_vehicle1_node3_time5_lambda_21
   + isru_pwl_vehicle1_node3_time5_lambda_22
   + isru_pwl_vehicle1_node3_time5_lambda_23
   + isru_pwl_vehicle1_node3_time5_lambda_24
   + isru_pwl_vehicle1_node3_time5_lambda_25
   + isru_pwl_vehicle1_node3_time5_lambda_26
   + isru_pwl_vehicle1_node3_time5_lambda_27
   + isru_pwl_vehicle1_node3_time5_lambda_28
   + isru_pwl_vehicle1_node3_time5_lambda_29
   + isru_pwl_vehicle1_node3_time5_lambda_30
   + isru_pwl_vehicle1_node3_time5_lambda_31
   + isru_pwl_vehicle1_node3_time5_lambda_32
   + isru_pwl_vehicle1_node3_time5_lambda_33
   + isru_pwl_vehicle1_node3_time5_lambda_34
   + isru_pwl_vehicle1_node3_time5_lambda_35
   + isru_pwl_vehicle1_node3_time5_lambda_36
   + isru_pwl_vehicle1_node3_time5_lambda_37
   + isru_pwl_vehicle1_node3_time5_lambda_38
   + isru_pwl_vehicle1_node3_time5_lambda_39
   + isru_pwl_vehicle1_node3_time5_lambda_40
   + isru_pwl_vehicle1_node3_time5_lambda_41
   + isru_pwl_vehicle1_node3_time5_lambda_42
   + isru_pwl_vehicle1_node3_time5_lambda_43
   + isru_pwl_vehicle1_node3_time5_lambda_44
   + isru_pwl_vehicle1_node3_time5_lambda_45
   + isru_pwl_vehicle1_node3_time5_lambda_46
   + isru_pwl_vehicle1_node3_time5_lambda_47
   + isru_pwl_vehicle1_node3_time5_lambda_48
   + isru_pwl_vehicle1_node3_time5_lambda_49
   + isru_pwl_vehicle1_node3_time5_lambda_50
   + isru_pwl_vehicle1_node3_time5_lambda_51
   + isru_pwl_vehicle1_node3_time5_lambda_52
   + isru_pwl_vehicle1_node3_time5_lambda_53
   + isru_pwl_vehicle1_node3_time5_lambda_54
   + isru_pwl_vehicle1_node3_time5_lambda_55
   + isru_pwl_vehicle1_node3_time5_lambda_56
   + isru_pwl_vehicle1_node3_time5_lambda_57
   + isru_pwl_vehicle1_node3_time5_lambda_58
   + isru_pwl_vehicle1_node3_time5_lambda_59
   + isru_pwl_vehicle1_node3_time5_lambda_60
   + isru_pwl_vehicle1_node3_time5_lambda_61
   + isru_pwl_vehicle1_node3_time5_lambda_62
   + isru_pwl_vehicle1_node3_time5_lambda_63
   + isru_pwl_vehicle1_node3_time5_lambda_64
   + isru_pwl_vehicle1_node3_time5_lambda_65
   + isru_pwl_vehicle1_node3_time5_lambda_66
   + isru_pwl_vehicle1_node3_time5_lambda_67
   + isru_pwl_vehicle1_node3_time5_lambda_68
   + isru_pwl_vehicle1_node3_time5_lambda_69
   + isru_pwl_vehicle1_node3_time5_lambda_70
   + isru_pwl_vehicle1_node3_time5_lambda_71
   + isru_pwl_vehicle1_node3_time5_lambda_72
   + isru_pwl_vehicle1_node3_time5_lambda_73
   + isru_pwl_vehicle1_node3_time5_lambda_74
   + isru_pwl_vehicle1_node3_time5_lambda_75
   + isru_pwl_vehicle1_node3_time5_lambda_76
   + isru_pwl_vehicle1_node3_time5_lambda_77
   + isru_pwl_vehicle1_node3_time5_lambda_78
   + isru_pwl_vehicle1_node3_time5_lambda_79
   + isru_pwl_vehicle1_node3_time5_lambda_80
   + isru_pwl_vehicle1_node3_time5_lambda_81
   + isru_pwl_vehicle1_node3_time5_lambda_82
   + isru_pwl_vehicle1_node3_time5_lambda_83
   + isru_pwl_vehicle1_node3_time5_lambda_84
   + isru_pwl_vehicle1_node3_time5_lambda_85
   + isru_pwl_vehicle1_node3_time5_lambda_86
   + isru_pwl_vehicle1_node3_time5_lambda_87
   + isru_pwl_vehicle1_node3_time5_lambda_88
   + isru_pwl_vehicle1_node3_time5_lambda_89
   + isru_pwl_vehicle1_node3_time5_lambda_90
   + isru_pwl_vehicle1_node3_time5_lambda_91
   + isru_pwl_vehicle1_node3_time5_lambda_92
   + isru_pwl_vehicle1_node3_time5_lambda_93
   + isru_pwl_vehicle1_node3_time5_lambda_94
   + isru_pwl_vehicle1_node3_time5_lambda_95
   + isru_pwl_vehicle1_node3_time5_lambda_96
   + isru_pwl_vehicle1_node3_time5_lambda_97
   + isru_pwl_vehicle1_node3_time5_lambda_98
   + isru_pwl_vehicle1_node3_time5_lambda_99
   + isru_pwl_vehicle1_node3_time5_lambda_100 = 1
 isru_pwl_vehicle1_node3_time5_x_interp:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityactive_isru
   - 100 isru_pwl_vehicle1_node3_time5_lambda_1
   - 200 isru_pwl_vehicle1_node3_time5_lambda_2
   - 300 isru_pwl_vehicle1_node3_time5_lambda_3
   - 400 isru_pwl_vehicle1_node3_time5_lambda_4
   - 500 isru_pwl_vehicle1_node3_time5_lambda_5
   - 600 isru_pwl_vehicle1_node3_time5_lambda_6
   - 700 isru_pwl_vehicle1_node3_time5_lambda_7
   - 800 isru_pwl_vehicle1_node3_time5_lambda_8
   - 900 isru_pwl_vehicle1_node3_time5_lambda_9
   - 1000 isru_pwl_vehicle1_node3_time5_lambda_10
   - 1100 isru_pwl_vehicle1_node3_time5_lambda_11
   - 1200 isru_pwl_vehicle1_node3_time5_lambda_12
   - 1300 isru_pwl_vehicle1_node3_time5_lambda_13
   - 1400 isru_pwl_vehicle1_node3_time5_lambda_14
   - 1500 isru_pwl_vehicle1_node3_time5_lambda_15
   - 1600 isru_pwl_vehicle1_node3_time5_lambda_16
   - 1700 isru_pwl_vehicle1_node3_time5_lambda_17
   - 1800 isru_pwl_vehicle1_node3_time5_lambda_18
   - 1900 isru_pwl_vehicle1_node3_time5_lambda_19
   - 2000 isru_pwl_vehicle1_node3_time5_lambda_20
   - 2100 isru_pwl_vehicle1_node3_time5_lambda_21
   - 2200 isru_pwl_vehicle1_node3_time5_lambda_22
   - 2300 isru_pwl_vehicle1_node3_time5_lambda_23
   - 2400 isru_pwl_vehicle1_node3_time5_lambda_24
   - 2500 isru_pwl_vehicle1_node3_time5_lambda_25
   - 2600 isru_pwl_vehicle1_node3_time5_lambda_26
   - 2700 isru_pwl_vehicle1_node3_time5_lambda_27
   - 2800 isru_pwl_vehicle1_node3_time5_lambda_28
   - 2900 isru_pwl_vehicle1_node3_time5_lambda_29
   - 3000 isru_pwl_vehicle1_node3_time5_lambda_30
   - 3100 isru_pwl_vehicle1_node3_time5_lambda_31
   - 3200 isru_pwl_vehicle1_node3_time5_lambda_32
   - 3300 isru_pwl_vehicle1_node3_time5_lambda_33
   - 3400 isru_pwl_vehicle1_node3_time5_lambda_34
   - 3500 isru_pwl_vehicle1_node3_time5_lambda_35
   - 3600 isru_pwl_vehicle1_node3_time5_lambda_36
   - 3700 isru_pwl_vehicle1_node3_time5_lambda_37
   - 3800 isru_pwl_vehicle1_node3_time5_lambda_38
   - 3900 isru_pwl_vehicle1_node3_time5_lambda_39
   - 4000 isru_pwl_vehicle1_node3_time5_lambda_40
   - 4100 isru_pwl_vehicle1_node3_time5_lambda_41
   - 4200 isru_pwl_vehicle1_node3_time5_lambda_42
   - 4300 isru_pwl_vehicle1_node3_time5_lambda_43
   - 4400 isru_pwl_vehicle1_node3_time5_lambda_44
   - 4500 isru_pwl_vehicle1_node3_time5_lambda_45
   - 4600 isru_pwl_vehicle1_node3_time5_lambda_46
   - 4700 isru_pwl_vehicle1_node3_time5_lambda_47
   - 4800 isru_pwl_vehicle1_node3_time5_lambda_48
   - 4900 isru_pwl_vehicle1_node3_time5_lambda_49
   - 5000 isru_pwl_vehicle1_node3_time5_lambda_50
   - 5100 isru_pwl_vehicle1_node3_time5_lambda_51
   - 5200 isru_pwl_vehicle1_node3_time5_lambda_52
   - 5300 isru_pwl_vehicle1_node3_time5_lambda_53
   - 5400 isru_pwl_vehicle1_node3_time5_lambda_54
   - 5500 isru_pwl_vehicle1_node3_time5_lambda_55
   - 5600 isru_pwl_vehicle1_node3_time5_lambda_56
   - 5700 isru_pwl_vehicle1_node3_time5_lambda_57
   - 5800 isru_pwl_vehicle1_node3_time5_lambda_58
   - 5900 isru_pwl_vehicle1_node3_time5_lambda_59
   - 6000 isru_pwl_vehicle1_node3_time5_lambda_60
   - 6100 isru_pwl_vehicle1_node3_time5_lambda_61
   - 6200 isru_pwl_vehicle1_node3_time5_lambda_62
   - 6300 isru_pwl_vehicle1_node3_time5_lambda_63
   - 6400 isru_pwl_vehicle1_node3_time5_lambda_64
   - 6500 isru_pwl_vehicle1_node3_time5_lambda_65
   - 6600 isru_pwl_vehicle1_node3_time5_lambda_66
   - 6700 isru_pwl_vehicle1_node3_time5_lambda_67
   - 6800 isru_pwl_vehicle1_node3_time5_lambda_68
   - 6900 isru_pwl_vehicle1_node3_time5_lambda_69
   - 7000 isru_pwl_vehicle1_node3_time5_lambda_70
   - 7100 isru_pwl_vehicle1_node3_time5_lambda_71
   - 7200 isru_pwl_vehicle1_node3_time5_lambda_72
   - 7300 isru_pwl_vehicle1_node3_time5_lambda_73
   - 7400 isru_pwl_vehicle1_node3_time5_lambda_74
   - 7500 isru_pwl_vehicle1_node3_time5_lambda_75
   - 7600 isru_pwl_vehicle1_node3_time5_lambda_76
   - 7700 isru_pwl_vehicle1_node3_time5_lambda_77
   - 7800 isru_pwl_vehicle1_node3_time5_lambda_78
   - 7900 isru_pwl_vehicle1_node3_time5_lambda_79
   - 8000 isru_pwl_vehicle1_node3_time5_lambda_80
   - 8100 isru_pwl_vehicle1_node3_time5_lambda_81
   - 8200 isru_pwl_vehicle1_node3_time5_lambda_82
   - 8300 isru_pwl_vehicle1_node3_time5_lambda_83
   - 8400 isru_pwl_vehicle1_node3_time5_lambda_84
   - 8500 isru_pwl_vehicle1_node3_time5_lambda_85
   - 8600 isru_pwl_vehicle1_node3_time5_lambda_86
   - 8700 isru_pwl_vehicle1_node3_time5_lambda_87
   - 8800 isru_pwl_vehicle1_node3_time5_lambda_88
   - 8900 isru_pwl_vehicle1_node3_time5_lambda_89
   - 9000 isru_pwl_vehicle1_node3_time5_lambda_90
   - 9100 isru_pwl_vehicle1_node3_time5_lambda_91
   - 9200 isru_pwl_vehicle1_node3_time5_lambda_92
   - 9300 isru_pwl_vehicle1_node3_time5_lambda_93
   - 9400 isru_pwl_vehicle1_node3_time5_lambda_94
   - 9500 isru_pwl_vehicle1_node3_time5_lambda_95
   - 9600 isru_pwl_vehicle1_node3_time5_lambda_96
   - 9700 isru_pwl_vehicle1_node3_time5_lambda_97
   - 9800 isru_pwl_vehicle1_node3_time5_lambda_98
   - 9900 isru_pwl_vehicle1_node3_time5_lambda_99
   - 10000 isru_pwl_vehicle1_node3_time5_lambda_100 = 0
 isru_pwl_vehicle1_node3_time5_z_interp:
   isru_arc_propellant_vehicle1_node3_time5
   - 985.2825563858833 isru_pwl_vehicle1_node3_time5_lambda_4
   - 1500.748691745031 isru_pwl_vehicle1_node3_time5_lambda_5
   - 2088.933864258242 isru_pwl_vehicle1_node3_time5_lambda_6
   - 2737.018880329098 isru_pwl_vehicle1_node3_time5_lambda_7
   - 3434.228243716464 isru_pwl_vehicle1_node3_time5_lambda_8
   - 4171.526536767735 isru_pwl_vehicle1_node3_time5_lambda_9
   - 4941.357797288778 isru_pwl_vehicle1_node3_time5_lambda_10
   - 5737.422001432911 isru_pwl_vehicle1_node3_time5_lambda_11
   - 6554.483550637531 isru_pwl_vehicle1_node3_time5_lambda_12
   - 7388.207344829402 isru_pwl_vehicle1_node3_time5_lambda_13
   - 8235.01861825687 isru_pwl_vehicle1_node3_time5_lambda_14
   - 9091.983230072974 isru_pwl_vehicle1_node3_time5_lambda_15
   - 9956.705549371904 isru_pwl_vehicle1_node3_time5_lambda_16
   - 10827.24146264956 isru_pwl_vehicle1_node3_time5_lambda_17
   - 11702.02436835233 isru_pwl_vehicle1_node3_time5_lambda_18
   - 12579.8023150352 isru_pwl_vehicle1_node3_time5_lambda_19
   - 13459.5846925414 isru_pwl_vehicle1_node3_time5_lambda_20
   - 14340.59710465161 isru_pwl_vehicle1_node3_time5_lambda_21
   - 15222.24324128196 isru_pwl_vehicle1_node3_time5_lambda_22
   - 16104.07273241018 isru_pwl_vehicle1_node3_time5_lambda_23
   - 16985.75410784817 isru_pwl_vehicle1_node3_time5_lambda_24
   - 17867.0521096901 isru_pwl_vehicle1_node3_time5_lambda_25
   - 18747.80871029746 isru_pwl_vehicle1_node3_time5_lambda_26
   - 19627.92728025435 isru_pwl_vehicle1_node3_time5_lambda_27
   - 20507.35942976479 isru_pwl_vehicle1_node3_time5_lambda_28
   - 21386.09411514398 isru_pwl_vehicle1_node3_time5_lambda_29
   - 22264.14866083277 isru_pwl_vehicle1_node3_time5_lambda_30
   - 23141.56139800195 isru_pwl_vehicle1_node3_time5_lambda_31
   - 24018.38566440885 isru_pwl_vehicle1_node3_time5_lambda_32
   - 24894.68494767318 isru_pwl_vehicle1_node3_time5_lambda_33
   - 25770.52898638042 isru_pwl_vehicle1_node3_time5_lambda_34
   - 26645.99067111392 isru_pwl_vehicle1_node3_time5_lambda_35
   - 27521.14361128332 isru_pwl_vehicle1_node3_time5_lambda_36
   - 28396.06025399472 isru_pwl_vehicle1_node3_time5_lambda_37
   - 29270.81045866316 isru_pwl_vehicle1_node3_time5_lambda_38
   - 30145.46044600507 isru_pwl_vehicle1_node3_time5_lambda_39
   - 31020.07205281519 isru_pwl_vehicle1_node3_time5_lambda_40
   - 31894.70223483293 isru_pwl_vehicle1_node3_time5_lambda_41
   - 32769.40276929723 isru_pwl_vehicle1_node3_time5_lambda_42
   - 33644.22011670309 isru_pwl_vehicle1_node3_time5_lambda_43
   - 34519.19540800239 isru_pwl_vehicle1_node3_time5_lambda_44
   - 35394.36452920375 isru_pwl_vehicle1_node3_time5_lambda_45
   - 36269.75828016792 isru_pwl_vehicle1_node3_time5_lambda_46
   - 37145.40258848952 isru_pwl_vehicle1_node3_time5_lambda_47
   - 38021.31876281364 isru_pwl_vehicle1_node3_time5_lambda_48
   - 38897.52377284662 isru_pwl_vehicle1_node3_time5_lambda_49
   - 39774.03054576725 isru_pwl_vehicle1_node3_time5_lambda_50
   - 40650.84827079403 isru_pwl_vehicle1_node3_time5_lambda_51
   - 41527.98270537665 isru_pwl_vehicle1_node3_time5_lambda_52
   - 42405.43647790508 isru_pwl_vehicle1_node3_time5_lambda_53
   - 43283.20938301237 isru_pwl_vehicle1_node3_time5_lambda_54
   - 44161.29866652277 isru_pwl_vehicle1_node3_time5_lambda_55
   - 45039.69929789972 isru_pwl_vehicle1_node3_time5_lambda_56
   - 45918.40422870246 isru_pwl_vehicle1_node3_time5_lambda_57
   - 46797.40463609257 isru_pwl_vehicle1_node3_time5_lambda_58
   - 47676.69015085884 isru_pwl_vehicle1_node3_time5_lambda_59
   - 48556.24906977034 isru_pwl_vehicle1_node3_time5_lambda_60
   - 49436.06855233612 isru_pwl_vehicle1_node3_time5_lambda_61
   - 50316.13480225825 isru_pwl_vehicle1_node3_time5_lambda_62
   - 51196.4332340237 isru_pwl_vehicle1_node3_time5_lambda_63
   - 52076.94862519771 isru_pwl_vehicle1_node3_time5_lambda_64
   - 52957.66525506565 isru_pwl_vehicle1_node3_time5_lambda_65
   - 53838.56703032609 isru_pwl_vehicle1_node3_time5_lambda_66
   - 54719.63759857266 isru_pwl_vehicle1_node3_time5_lambda_67
   - 55600.860450318 isru_pwl_vehicle1_node3_time5_lambda_68
   - 56482.21901031626 isru_pwl_vehicle1_node3_time5_lambda_69
   - 57363.69671893076 isru_pwl_vehicle1_node3_time5_lambda_70
   - 58245.27710427711 isru_pwl_vehicle1_node3_time5_lambda_71
   - 59126.94384584791 isru_pwl_vehicle1_node3_time5_lambda_72
   - 60008.68083029681 isru_pwl_vehicle1_node3_time5_lambda_73
   - 60890.47220002831 isru_pwl_vehicle1_node3_time5_lambda_74
   - 61772.30239520559 isru_pwl_vehicle1_node3_time5_lambda_75
   - 62654.15618975411 isru_pwl_vehicle1_node3_time5_lambda_76
   - 63536.01872190295 isru_pwl_vehicle1_node3_time5_lambda_77
   - 64417.87551977086 isru_pwl_vehicle1_node3_time5_lambda_78
   - 65299.71252246922 isru_pwl_vehicle1_node3_time5_lambda_79
   - 66181.5160971603 isru_pwl_vehicle1_node3_time5_lambda_80
   - 67063.27305247675 isru_pwl_vehicle1_node3_time5_lambda_81
   - 67944.97064867713 isru_pwl_vehicle1_node3_time5_lambda_82
   - 68826.59660488224 isru_pwl_vehicle1_node3_time5_lambda_83
   - 69708.1391037096 isru_pwl_vehicle1_node3_time5_lambda_84
   - 70589.58679359611 isru_pwl_vehicle1_node3_time5_lambda_85
   - 71470.92878907495 isru_pwl_vehicle1_node3_time5_lambda_86
   - 72352.15466924875 isru_pwl_vehicle1_node3_time5_lambda_87
   - 73233.25447468 isru_pwl_vehicle1_node3_time5_lambda_88
   - 74114.21870289929 isru_pwl_vehicle1_node3_time5_lambda_89
   - 74995.03830271348 isru_pwl_vehicle1_node3_time5_lambda_90
   - 75875.70466747832 isru_pwl_vehicle1_node3_time5_lambda_91
   - 76756.20962748471 isru_pwl_vehicle1_node3_time5_lambda_92
   - 77636.5454415929 isru_pwl_vehicle1_node3_time5_lambda_93
   - 78516.70478823519 isru_pwl_vehicle1_node3_time5_lambda_94
   - 79396.68075589606 isru_pwl_vehicle1_node3_time5_lambda_95
   - 80276.46683316681 isru_pwl_vehicle1_node3_time5_lambda_96
   - 81156.05689846189 isru_pwl_vehicle1_node3_time5_lambda_97
   - 82035.44520947429 isru_pwl_vehicle1_node3_time5_lambda_98
   - 82914.62639243968 isru_pwl_vehicle1_node3_time5_lambda_99
   - 83793.5954312698 isru_pwl_vehicle1_node3_time5_lambda_100 <= 0
 isru_pwl_vehicle1_node3_time5_branch_pos_bit_0:
   isru_pwl_vehicle1_node3_time5_lambda_65
   + isru_pwl_vehicle1_node3_time5_lambda_66
   + isru_pwl_vehicle1_node3_time5_lambda_67
   + isru_pwl_vehicle1_node3_time5_lambda_68
   + isru_pwl_vehicle1_node3_time5_lambda_69
   + isru_pwl_vehicle1_node3_time5_lambda_70
   + isru_pwl_vehicle1_node3_time5_lambda_71
   + isru_pwl_vehicle1_node3_time5_lambda_72
   + isru_pwl_vehicle1_node3_time5_lambda_73
   + isru_pwl_vehicle1_node3_time5_lambda_74
   + isru_pwl_vehicle1_node3_time5_lambda_75
   + isru_pwl_vehicle1_node3_time5_lambda_76
   + isru_pwl_vehicle1_node3_time5_lambda_77
   + isru_pwl_vehicle1_node3_time5_lambda_78
   + isru_pwl_vehicle1_node3_time5_lambda_79
   + isru_pwl_vehicle1_node3_time5_lambda_80
   + isru_pwl_vehicle1_node3_time5_lambda_81
   + isru_pwl_vehicle1_node3_time5_lambda_82
   + isru_pwl_vehicle1_node3_time5_lambda_83
   + isru_pwl_vehicle1_node3_time5_lambda_84
   + isru_pwl_vehicle1_node3_time5_lambda_85
   + isru_pwl_vehicle1_node3_time5_lambda_86
   + isru_pwl_vehicle1_node3_time5_lambda_87
   + isru_pwl_vehicle1_node3_time5_lambda_88
   + isru_pwl_vehicle1_node3_time5_lambda_89
   + isru_pwl_vehicle1_node3_time5_lambda_90
   + isru_pwl_vehicle1_node3_time5_lambda_91
   + isru_pwl_vehicle1_node3_time5_lambda_92
   + isru_pwl_vehicle1_node3_time5_lambda_93
   + isru_pwl_vehicle1_node3_time5_lambda_94
   + isru_pwl_vehicle1_node3_time5_lambda_95
   + isru_pwl_vehicle1_node3_time5_lambda_96
   + isru_pwl_vehicle1_node3_time5_lambda_97
   + isru_pwl_vehicle1_node3_time5_lambda_98
   + isru_pwl_vehicle1_node3_time5_lambda_99
   + isru_pwl_vehicle1_node3_time5_lambda_100
   - isru_pwl_vehicle1_node3_time5_graybit_0 <= 0
 isru_pwl_vehicle1_node3_time5_branch_neg_bit_0:
   isru_pwl_vehicle1_node3_time5_lambda_0
   + isru_pwl_vehicle1_node3_time5_lambda_1
   + isru_pwl_vehicle1_node3_time5_lambda_2
   + isru_pwl_vehicle1_node3_time5_lambda_3
   + isru_pwl_vehicle1_node3_time5_lambda_4
   + isru_pwl_vehicle1_node3_time5_lambda_5
   + isru_pwl_vehicle1_node3_time5_lambda_6
   + isru_pwl_vehicle1_node3_time5_lambda_7
   + isru_pwl_vehicle1_node3_time5_lambda_8
   + isru_pwl_vehicle1_node3_time5_lambda_9
   + isru_pwl_vehicle1_node3_time5_lambda_10
   + isru_pwl_vehicle1_node3_time5_lambda_11
   + isru_pwl_vehicle1_node3_time5_lambda_12
   + isru_pwl_vehicle1_node3_time5_lambda_13
   + isru_pwl_vehicle1_node3_time5_lambda_14
   + isru_pwl_vehicle1_node3_time5_lambda_15
   + isru_pwl_vehicle1_node3_time5_lambda_16
   + isru_pwl_vehicle1_node3_time5_lambda_17
   + isru_pwl_vehicle1_node3_time5_lambda_18
   + isru_pwl_vehicle1_node3_time5_lambda_19
   + isru_pwl_vehicle1_node3_time5_lambda_20
   + isru_pwl_vehicle1_node3_time5_lambda_21
   + isru_pwl_vehicle1_node3_time5_lambda_22
   + isru_pwl_vehicle1_node3_time5_lambda_23
   + isru_pwl_vehicle1_node3_time5_lambda_24
   + isru_pwl_vehicle1_node3_time5_lambda_25
   + isru_pwl_vehicle1_node3_time5_lambda_26
   + isru_pwl_vehicle1_node3_time5_lambda_27
   + isru_pwl_vehicle1_node3_time5_lambda_28
   + isru_pwl_vehicle1_node3_time5_lambda_29
   + isru_pwl_vehicle1_node3_time5_lambda_30
   + isru_pwl_vehicle1_node3_time5_lambda_31
   + isru_pwl_vehicle1_node3_time5_lambda_32
   + isru_pwl_vehicle1_node3_time5_lambda_33
   + isru_pwl_vehicle1_node3_time5_lambda_34
   + isru_pwl_vehicle1_node3_time5_lambda_35
   + isru_pwl_vehicle1_node3_time5_lambda_36
   + isru_pwl_vehicle1_node3_time5_lambda_37
   + isru_pwl_vehicle1_node3_time5_lambda_38
   + isru_pwl_vehicle1_node3_time5_lambda_39
   + isru_pwl_vehicle1_node3_time5_lambda_40
   + isru_pwl_vehicle1_node3_time5_lambda_41
   + isru_pwl_vehicle1_node3_time5_lambda_42
   + isru_pwl_vehicle1_node3_time5_lambda_43
   + isru_pwl_vehicle1_node3_time5_lambda_44
   + isru_pwl_vehicle1_node3_time5_lambda_45
   + isru_pwl_vehicle1_node3_time5_lambda_46
   + isru_pwl_vehicle1_node3_time5_lambda_47
   + isru_pwl_vehicle1_node3_time5_lambda_48
   + isru_pwl_vehicle1_node3_time5_lambda_49
   + isru_pwl_vehicle1_node3_time5_lambda_50
   + isru_pwl_vehicle1_node3_time5_lambda_51
   + isru_pwl_vehicle1_node3_time5_lambda_52
   + isru_pwl_vehicle1_node3_time5_lambda_53
   + isru_pwl_vehicle1_node3_time5_lambda_54
   + isru_pwl_vehicle1_node3_time5_lambda_55
   + isru_pwl_vehicle1_node3_time5_lambda_56
   + isru_pwl_vehicle1_node3_time5_lambda_57
   + isru_pwl_vehicle1_node3_time5_lambda_58
   + isru_pwl_vehicle1_node3_time5_lambda_59
   + isru_pwl_vehicle1_node3_time5_lambda_60
   + isru_pwl_vehicle1_node3_time5_lambda_61
   + isru_pwl_vehicle1_node3_time5_lambda_62
   + isru_pwl_vehicle1_node3_time5_lambda_63
   + isru_pwl_vehicle1_node3_time5_graybit_0 <= 1
 isru_pwl_vehicle1_node3_time5_branch_pos_bit_1:
   isru_pwl_vehicle1_node3_time5_lambda_33
   + isru_pwl_vehicle1_node3_time5_lambda_34
   + isru_pwl_vehicle1_node3_time5_lambda_35
   + isru_pwl_vehicle1_node3_time5_lambda_36
   + isru_pwl_vehicle1_node3_time5_lambda_37
   + isru_pwl_vehicle1_node3_time5_lambda_38
   + isru_pwl_vehicle1_node3_time5_lambda_39
   + isru_pwl_vehicle1_node3_time5_lambda_40
   + isru_pwl_vehicle1_node3_time5_lambda_41
   + isru_pwl_vehicle1_node3_time5_lambda_42
   + isru_pwl_vehicle1_node3_time5_lambda_43
   + isru_pwl_vehicle1_node3_time5_lambda_44
   + isru_pwl_vehicle1_node3_time5_lambda_45
   + isru_pwl_vehicle1_node3_time5_lambda_46
   + isru_pwl_vehicle1_node3_time5_lambda_47
   + isru_pwl_vehicle1_node3_time5_lambda_48
   + isru_pwl_vehicle1_node3_time5_lambda_49
   + isru_pwl_vehicle1_node3_time5_lambda_50
   + isru_pwl_vehicle1_node3_time5_lambda_51
   + isru_pwl_vehicle1_node3_time5_lambda_52
   + isru_pwl_vehicle1_node3_time5_lambda_53
   + isru_pwl_vehicle1_node3_time5_lambda_54
   + isru_pwl_vehicle1_node3_time5_lambda_55
   + isru_pwl_vehicle1_node3_time5_lambda_56
   + isru_pwl_vehicle1_node3_time5_lambda_57
   + isru_pwl_vehicle1_node3_time5_lambda_58
   + isru_pwl_vehicle1_node3_time5_lambda_59
   + isru_pwl_vehicle1_node3_time5_lambda_60
   + isru_pwl_vehicle1_node3_time5_lambda_61
   + isru_pwl_vehicle1_node3_time5_lambda_62
   + isru_pwl_vehicle1_node3_time5_lambda_63
   + isru_pwl_vehicle1_node3_time5_lambda_64
   + isru_pwl_vehicle1_node3_time5_lambda_65
   + isru_pwl_vehicle1_node3_time5_lambda_66
   + isru_pwl_vehicle1_node3_time5_lambda_67
   + isru_pwl_vehicle1_node3_time5_lambda_68
   + isru_pwl_vehicle1_node3_time5_lambda_69
   + isru_pwl_vehicle1_node3_time5_lambda_70
   + isru_pwl_vehicle1_node3_time5_lambda_71
   + isru_pwl_vehicle1_node3_time5_lambda_72
   + isru_pwl_vehicle1_node3_time5_lambda_73
   + isru_pwl_vehicle1_node3_time5_lambda_74
   + isru_pwl_vehicle1_node3_time5_lambda_75
   + isru_pwl_vehicle1_node3_time5_lambda_76
   + isru_pwl_vehicle1_node3_time5_lambda_77
   + isru_pwl_vehicle1_node3_time5_lambda_78
   + isru_pwl_vehicle1_node3_time5_lambda_79
   + isru_pwl_vehicle1_node3_time5_lambda_80
   + isru_pwl_vehicle1_node3_time5_lambda_81
   + isru_pwl_vehicle1_node3_time5_lambda_82
   + isru_pwl_vehicle1_node3_time5_lambda_83
   + isru_pwl_vehicle1_node3_time5_lambda_84
   + isru_pwl_vehicle1_node3_time5_lambda_85
   + isru_pwl_vehicle1_node3_time5_lambda_86
   + isru_pwl_vehicle1_node3_time5_lambda_87
   + isru_pwl_vehicle1_node3_time5_lambda_88
   + isru_pwl_vehicle1_node3_time5_lambda_89
   + isru_pwl_vehicle1_node3_time5_lambda_90
   + isru_pwl_vehicle1_node3_time5_lambda_91
   + isru_pwl_vehicle1_node3_time5_lambda_92
   + isru_pwl_vehicle1_node3_time5_lambda_93
   + isru_pwl_vehicle1_node3_time5_lambda_94
   + isru_pwl_vehicle1_node3_time5_lambda_95
   - isru_pwl_vehicle1_node3_time5_graybit_1 <= 0
 isru_pwl_vehicle1_node3_time5_branch_neg_bit_1:
   isru_pwl_vehicle1_node3_time5_lambda_0
   + isru_pwl_vehicle1_node3_time5_lambda_1
   + isru_pwl_vehicle1_node3_time5_lambda_2
   + isru_pwl_vehicle1_node3_time5_lambda_3
   + isru_pwl_vehicle1_node3_time5_lambda_4
   + isru_pwl_vehicle1_node3_time5_lambda_5
   + isru_pwl_vehicle1_node3_time5_lambda_6
   + isru_pwl_vehicle1_node3_time5_lambda_7
   + isru_pwl_vehicle1_node3_time5_lambda_8
   + isru_pwl_vehicle1_node3_time5_lambda_9
   + isru_pwl_vehicle1_node3_time5_lambda_10
   + isru_pwl_vehicle1_node3_time5_lambda_11
   + isru_pwl_vehicle1_node3_time5_lambda_12
   + isru_pwl_vehicle1_node3_time5_lambda_13
   + isru_pwl_vehicle1_node3_time5_lambda_14
   + isru_pwl_vehicle1_node3_time5_lambda_15
   + isru_pwl_vehicle1_node3_time5_lambda_16
   + isru_pwl_vehicle1_node3_time5_lambda_17
   + isru_pwl_vehicle1_node3_time5_lambda_18
   + isru_pwl_vehicle1_node3_time5_lambda_19
   + isru_pwl_vehicle1_node3_time5_lambda_20
   + isru_pwl_vehicle1_node3_time5_lambda_21
   + isru_pwl_vehicle1_node3_time5_lambda_22
   + isru_pwl_vehicle1_node3_time5_lambda_23
   + isru_pwl_vehicle1_node3_time5_lambda_24
   + isru_pwl_vehicle1_node3_time5_lambda_25
   + isru_pwl_vehicle1_node3_time5_lambda_26
   + isru_pwl_vehicle1_node3_time5_lambda_27
   + isru_pwl_vehicle1_node3_time5_lambda_28
   + isru_pwl_vehicle1_node3_time5_lambda_29
   + isru_pwl_vehicle1_node3_time5_lambda_30
   + isru_pwl_vehicle1_node3_time5_lambda_31
   + isru_pwl_vehicle1_node3_time5_lambda_97
   + isru_pwl_vehicle1_node3_time5_lambda_98
   + isru_pwl_vehicle1_node3_time5_lambda_99
   + isru_pwl_vehicle1_node3_time5_lambda_100
   + isru_pwl_vehicle1_node3_time5_graybit_1 <= 1
 isru_pwl_vehicle1_node3_time5_branch_pos_bit_2:
   isru_pwl_vehicle1_node3_time5_lambda_17
   + isru_pwl_vehicle1_node3_time5_lambda_18
   + isru_pwl_vehicle1_node3_time5_lambda_19
   + isru_pwl_vehicle1_node3_time5_lambda_20
   + isru_pwl_vehicle1_node3_time5_lambda_21
   + isru_pwl_vehicle1_node3_time5_lambda_22
   + isru_pwl_vehicle1_node3_time5_lambda_23
   + isru_pwl_vehicle1_node3_time5_lambda_24
   + isru_pwl_vehicle1_node3_time5_lambda_25
   + isru_pwl_vehicle1_node3_time5_lambda_26
   + isru_pwl_vehicle1_node3_time5_lambda_27
   + isru_pwl_vehicle1_node3_time5_lambda_28
   + isru_pwl_vehicle1_node3_time5_lambda_29
   + isru_pwl_vehicle1_node3_time5_lambda_30
   + isru_pwl_vehicle1_node3_time5_lambda_31
   + isru_pwl_vehicle1_node3_time5_lambda_32
   + isru_pwl_vehicle1_node3_time5_lambda_33
   + isru_pwl_vehicle1_node3_time5_lambda_34
   + isru_pwl_vehicle1_node3_time5_lambda_35
   + isru_pwl_vehicle1_node3_time5_lambda_36
   + isru_pwl_vehicle1_node3_time5_lambda_37
   + isru_pwl_vehicle1_node3_time5_lambda_38
   + isru_pwl_vehicle1_node3_time5_lambda_39
   + isru_pwl_vehicle1_node3_time5_lambda_40
   + isru_pwl_vehicle1_node3_time5_lambda_41
   + isru_pwl_vehicle1_node3_time5_lambda_42
   + isru_pwl_vehicle1_node3_time5_lambda_43
   + isru_pwl_vehicle1_node3_time5_lambda_44
   + isru_pwl_vehicle1_node3_time5_lambda_45
   + isru_pwl_vehicle1_node3_time5_lambda_46
   + isru_pwl_vehicle1_node3_time5_lambda_47
   + isru_pwl_vehicle1_node3_time5_lambda_81
   + isru_pwl_vehicle1_node3_time5_lambda_82
   + isru_pwl_vehicle1_node3_time5_lambda_83
   + isru_pwl_vehicle1_node3_time5_lambda_84
   + isru_pwl_vehicle1_node3_time5_lambda_85
   + isru_pwl_vehicle1_node3_time5_lambda_86
   + isru_pwl_vehicle1_node3_time5_lambda_87
   + isru_pwl_vehicle1_node3_time5_lambda_88
   + isru_pwl_vehicle1_node3_time5_lambda_89
   + isru_pwl_vehicle1_node3_time5_lambda_90
   + isru_pwl_vehicle1_node3_time5_lambda_91
   + isru_pwl_vehicle1_node3_time5_lambda_92
   + isru_pwl_vehicle1_node3_time5_lambda_93
   + isru_pwl_vehicle1_node3_time5_lambda_94
   + isru_pwl_vehicle1_node3_time5_lambda_95
   + isru_pwl_vehicle1_node3_time5_lambda_96
   + isru_pwl_vehicle1_node3_time5_lambda_97
   + isru_pwl_vehicle1_node3_time5_lambda_98
   + isru_pwl_vehicle1_node3_time5_lambda_99
   + isru_pwl_vehicle1_node3_time5_lambda_100
   - isru_pwl_vehicle1_node3_time5_graybit_2 <= 0
 isru_pwl_vehicle1_node3_time5_branch_neg_bit_2:
   isru_pwl_vehicle1_node3_time5_lambda_0
   + isru_pwl_vehicle1_node3_time5_lambda_1
   + isru_pwl_vehicle1_node3_time5_lambda_2
   + isru_pwl_vehicle1_node3_time5_lambda_3
   + isru_pwl_vehicle1_node3_time5_lambda_4
   + isru_pwl_vehicle1_node3_time5_lambda_5
   + isru_pwl_vehicle1_node3_time5_lambda_6
   + isru_pwl_vehicle1_node3_time5_lambda_7
   + isru_pwl_vehicle1_node3_time5_lambda_8
   + isru_pwl_vehicle1_node3_time5_lambda_9
   + isru_pwl_vehicle1_node3_time5_lambda_10
   + isru_pwl_vehicle1_node3_time5_lambda_11
   + isru_pwl_vehicle1_node3_time5_lambda_12
   + isru_pwl_vehicle1_node3_time5_lambda_13
   + isru_pwl_vehicle1_node3_time5_lambda_14
   + isru_pwl_vehicle1_node3_time5_lambda_15
   + isru_pwl_vehicle1_node3_time5_lambda_49
   + isru_pwl_vehicle1_node3_time5_lambda_50
   + isru_pwl_vehicle1_node3_time5_lambda_51
   + isru_pwl_vehicle1_node3_time5_lambda_52
   + isru_pwl_vehicle1_node3_time5_lambda_53
   + isru_pwl_vehicle1_node3_time5_lambda_54
   + isru_pwl_vehicle1_node3_time5_lambda_55
   + isru_pwl_vehicle1_node3_time5_lambda_56
   + isru_pwl_vehicle1_node3_time5_lambda_57
   + isru_pwl_vehicle1_node3_time5_lambda_58
   + isru_pwl_vehicle1_node3_time5_lambda_59
   + isru_pwl_vehicle1_node3_time5_lambda_60
   + isru_pwl_vehicle1_node3_time5_lambda_61
   + isru_pwl_vehicle1_node3_time5_lambda_62
   + isru_pwl_vehicle1_node3_time5_lambda_63
   + isru_pwl_vehicle1_node3_time5_lambda_64
   + isru_pwl_vehicle1_node3_time5_lambda_65
   + isru_pwl_vehicle1_node3_time5_lambda_66
   + isru_pwl_vehicle1_node3_time5_lambda_67
   + isru_pwl_vehicle1_node3_time5_lambda_68
   + isru_pwl_vehicle1_node3_time5_lambda_69
   + isru_pwl_vehicle1_node3_time5_lambda_70
   + isru_pwl_vehicle1_node3_time5_lambda_71
   + isru_pwl_vehicle1_node3_time5_lambda_72
   + isru_pwl_vehicle1_node3_time5_lambda_73
   + isru_pwl_vehicle1_node3_time5_lambda_74
   + isru_pwl_vehicle1_node3_time5_lambda_75
   + isru_pwl_vehicle1_node3_time5_lambda_76
   + isru_pwl_vehicle1_node3_time5_lambda_77
   + isru_pwl_vehicle1_node3_time5_lambda_78
   + isru_pwl_vehicle1_node3_time5_lambda_79
   + isru_pwl_vehicle1_node3_time5_graybit_2 <= 1
 isru_pwl_vehicle1_node3_time5_branch_pos_bit_3:
   isru_pwl_vehicle1_node3_time5_lambda_9
   + isru_pwl_vehicle1_node3_time5_lambda_10
   + isru_pwl_vehicle1_node3_time5_lambda_11
   + isru_pwl_vehicle1_node3_time5_lambda_12
   + isru_pwl_vehicle1_node3_time5_lambda_13
   + isru_pwl_vehicle1_node3_time5_lambda_14
   + isru_pwl_vehicle1_node3_time5_lambda_15
   + isru_pwl_vehicle1_node3_time5_lambda_16
   + isru_pwl_vehicle1_node3_time5_lambda_17
   + isru_pwl_vehicle1_node3_time5_lambda_18
   + isru_pwl_vehicle1_node3_time5_lambda_19
   + isru_pwl_vehicle1_node3_time5_lambda_20
   + isru_pwl_vehicle1_node3_time5_lambda_21
   + isru_pwl_vehicle1_node3_time5_lambda_22
   + isru_pwl_vehicle1_node3_time5_lambda_23
   + isru_pwl_vehicle1_node3_time5_lambda_41
   + isru_pwl_vehicle1_node3_time5_lambda_42
   + isru_pwl_vehicle1_node3_time5_lambda_43
   + isru_pwl_vehicle1_node3_time5_lambda_44
   + isru_pwl_vehicle1_node3_time5_lambda_45
   + isru_pwl_vehicle1_node3_time5_lambda_46
   + isru_pwl_vehicle1_node3_time5_lambda_47
   + isru_pwl_vehicle1_node3_time5_lambda_48
   + isru_pwl_vehicle1_node3_time5_lambda_49
   + isru_pwl_vehicle1_node3_time5_lambda_50
   + isru_pwl_vehicle1_node3_time5_lambda_51
   + isru_pwl_vehicle1_node3_time5_lambda_52
   + isru_pwl_vehicle1_node3_time5_lambda_53
   + isru_pwl_vehicle1_node3_time5_lambda_54
   + isru_pwl_vehicle1_node3_time5_lambda_55
   + isru_pwl_vehicle1_node3_time5_lambda_73
   + isru_pwl_vehicle1_node3_time5_lambda_74
   + isru_pwl_vehicle1_node3_time5_lambda_75
   + isru_pwl_vehicle1_node3_time5_lambda_76
   + isru_pwl_vehicle1_node3_time5_lambda_77
   + isru_pwl_vehicle1_node3_time5_lambda_78
   + isru_pwl_vehicle1_node3_time5_lambda_79
   + isru_pwl_vehicle1_node3_time5_lambda_80
   + isru_pwl_vehicle1_node3_time5_lambda_81
   + isru_pwl_vehicle1_node3_time5_lambda_82
   + isru_pwl_vehicle1_node3_time5_lambda_83
   + isru_pwl_vehicle1_node3_time5_lambda_84
   + isru_pwl_vehicle1_node3_time5_lambda_85
   + isru_pwl_vehicle1_node3_time5_lambda_86
   + isru_pwl_vehicle1_node3_time5_lambda_87
   - isru_pwl_vehicle1_node3_time5_graybit_3 <= 0
 isru_pwl_vehicle1_node3_time5_branch_neg_bit_3:
   isru_pwl_vehicle1_node3_time5_lambda_0
   + isru_pwl_vehicle1_node3_time5_lambda_1
   + isru_pwl_vehicle1_node3_time5_lambda_2
   + isru_pwl_vehicle1_node3_time5_lambda_3
   + isru_pwl_vehicle1_node3_time5_lambda_4
   + isru_pwl_vehicle1_node3_time5_lambda_5
   + isru_pwl_vehicle1_node3_time5_lambda_6
   + isru_pwl_vehicle1_node3_time5_lambda_7
   + isru_pwl_vehicle1_node3_time5_lambda_25
   + isru_pwl_vehicle1_node3_time5_lambda_26
   + isru_pwl_vehicle1_node3_time5_lambda_27
   + isru_pwl_vehicle1_node3_time5_lambda_28
   + isru_pwl_vehicle1_node3_time5_lambda_29
   + isru_pwl_vehicle1_node3_time5_lambda_30
   + isru_pwl_vehicle1_node3_time5_lambda_31
   + isru_pwl_vehicle1_node3_time5_lambda_32
   + isru_pwl_vehicle1_node3_time5_lambda_33
   + isru_pwl_vehicle1_node3_time5_lambda_34
   + isru_pwl_vehicle1_node3_time5_lambda_35
   + isru_pwl_vehicle1_node3_time5_lambda_36
   + isru_pwl_vehicle1_node3_time5_lambda_37
   + isru_pwl_vehicle1_node3_time5_lambda_38
   + isru_pwl_vehicle1_node3_time5_lambda_39
   + isru_pwl_vehicle1_node3_time5_lambda_57
   + isru_pwl_vehicle1_node3_time5_lambda_58
   + isru_pwl_vehicle1_node3_time5_lambda_59
   + isru_pwl_vehicle1_node3_time5_lambda_60
   + isru_pwl_vehicle1_node3_time5_lambda_61
   + isru_pwl_vehicle1_node3_time5_lambda_62
   + isru_pwl_vehicle1_node3_time5_lambda_63
   + isru_pwl_vehicle1_node3_time5_lambda_64
   + isru_pwl_vehicle1_node3_time5_lambda_65
   + isru_pwl_vehicle1_node3_time5_lambda_66
   + isru_pwl_vehicle1_node3_time5_lambda_67
   + isru_pwl_vehicle1_node3_time5_lambda_68
   + isru_pwl_vehicle1_node3_time5_lambda_69
   + isru_pwl_vehicle1_node3_time5_lambda_70
   + isru_pwl_vehicle1_node3_time5_lambda_71
   + isru_pwl_vehicle1_node3_time5_lambda_89
   + isru_pwl_vehicle1_node3_time5_lambda_90
   + isru_pwl_vehicle1_node3_time5_lambda_91
   + isru_pwl_vehicle1_node3_time5_lambda_92
   + isru_pwl_vehicle1_node3_time5_lambda_93
   + isru_pwl_vehicle1_node3_time5_lambda_94
   + isru_pwl_vehicle1_node3_time5_lambda_95
   + isru_pwl_vehicle1_node3_time5_lambda_96
   + isru_pwl_vehicle1_node3_time5_lambda_97
   + isru_pwl_vehicle1_node3_time5_lambda_98
   + isru_pwl_vehicle1_node3_time5_lambda_99
   + isru_pwl_vehicle1_node3_time5_lambda_100
   + isru_pwl_vehicle1_node3_time5_graybit_3 <= 1
 isru_pwl_vehicle1_node3_time5_branch_pos_bit_4:
   isru_pwl_vehicle1_node3_time5_lambda_5
   + isru_pwl_vehicle1_node3_time5_lambda_6
   + isru_pwl_vehicle1_node3_time5_lambda_7
   + isru_pwl_vehicle1_node3_time5_lambda_8
   + isru_pwl_vehicle1_node3_time5_lambda_9
   + isru_pwl_vehicle1_node3_time5_lambda_10
   + isru_pwl_vehicle1_node3_time5_lambda_11
   + isru_pwl_vehicle1_node3_time5_lambda_21
   + isru_pwl_vehicle1_node3_time5_lambda_22
   + isru_pwl_vehicle1_node3_time5_lambda_23
   + isru_pwl_vehicle1_node3_time5_lambda_24
   + isru_pwl_vehicle1_node3_time5_lambda_25
   + isru_pwl_vehicle1_node3_time5_lambda_26
   + isru_pwl_vehicle1_node3_time5_lambda_27
   + isru_pwl_vehicle1_node3_time5_lambda_37
   + isru_pwl_vehicle1_node3_time5_lambda_38
   + isru_pwl_vehicle1_node3_time5_lambda_39
   + isru_pwl_vehicle1_node3_time5_lambda_40
   + isru_pwl_vehicle1_node3_time5_lambda_41
   + isru_pwl_vehicle1_node3_time5_lambda_42
   + isru_pwl_vehicle1_node3_time5_lambda_43
   + isru_pwl_vehicle1_node3_time5_lambda_53
   + isru_pwl_vehicle1_node3_time5_lambda_54
   + isru_pwl_vehicle1_node3_time5_lambda_55
   + isru_pwl_vehicle1_node3_time5_lambda_56
   + isru_pwl_vehicle1_node3_time5_lambda_57
   + isru_pwl_vehicle1_node3_time5_lambda_58
   + isru_pwl_vehicle1_node3_time5_lambda_59
   + isru_pwl_vehicle1_node3_time5_lambda_69
   + isru_pwl_vehicle1_node3_time5_lambda_70
   + isru_pwl_vehicle1_node3_time5_lambda_71
   + isru_pwl_vehicle1_node3_time5_lambda_72
   + isru_pwl_vehicle1_node3_time5_lambda_73
   + isru_pwl_vehicle1_node3_time5_lambda_74
   + isru_pwl_vehicle1_node3_time5_lambda_75
   + isru_pwl_vehicle1_node3_time5_lambda_85
   + isru_pwl_vehicle1_node3_time5_lambda_86
   + isru_pwl_vehicle1_node3_time5_lambda_87
   + isru_pwl_vehicle1_node3_time5_lambda_88
   + isru_pwl_vehicle1_node3_time5_lambda_89
   + isru_pwl_vehicle1_node3_time5_lambda_90
   + isru_pwl_vehicle1_node3_time5_lambda_91
   - isru_pwl_vehicle1_node3_time5_graybit_4 <= 0
 isru_pwl_vehicle1_node3_time5_branch_neg_bit_4:
   isru_pwl_vehicle1_node3_time5_lambda_0
   + isru_pwl_vehicle1_node3_time5_lambda_1
   + isru_pwl_vehicle1_node3_time5_lambda_2
   + isru_pwl_vehicle1_node3_time5_lambda_3
   + isru_pwl_vehicle1_node3_time5_lambda_13
   + isru_pwl_vehicle1_node3_time5_lambda_14
   + isru_pwl_vehicle1_node3_time5_lambda_15
   + isru_pwl_vehicle1_node3_time5_lambda_16
   + isru_pwl_vehicle1_node3_time5_lambda_17
   + isru_pwl_vehicle1_node3_time5_lambda_18
   + isru_pwl_vehicle1_node3_time5_lambda_19
   + isru_pwl_vehicle1_node3_time5_lambda_29
   + isru_pwl_vehicle1_node3_time5_lambda_30
   + isru_pwl_vehicle1_node3_time5_lambda_31
   + isru_pwl_vehicle1_node3_time5_lambda_32
   + isru_pwl_vehicle1_node3_time5_lambda_33
   + isru_pwl_vehicle1_node3_time5_lambda_34
   + isru_pwl_vehicle1_node3_time5_lambda_35
   + isru_pwl_vehicle1_node3_time5_lambda_45
   + isru_pwl_vehicle1_node3_time5_lambda_46
   + isru_pwl_vehicle1_node3_time5_lambda_47
   + isru_pwl_vehicle1_node3_time5_lambda_48
   + isru_pwl_vehicle1_node3_time5_lambda_49
   + isru_pwl_vehicle1_node3_time5_lambda_50
   + isru_pwl_vehicle1_node3_time5_lambda_51
   + isru_pwl_vehicle1_node3_time5_lambda_61
   + isru_pwl_vehicle1_node3_time5_lambda_62
   + isru_pwl_vehicle1_node3_time5_lambda_63
   + isru_pwl_vehicle1_node3_time5_lambda_64
   + isru_pwl_vehicle1_node3_time5_lambda_65
   + isru_pwl_vehicle1_node3_time5_lambda_66
   + isru_pwl_vehicle1_node3_time5_lambda_67
   + isru_pwl_vehicle1_node3_time5_lambda_77
   + isru_pwl_vehicle1_node3_time5_lambda_78
   + isru_pwl_vehicle1_node3_time5_lambda_79
   + isru_pwl_vehicle1_node3_time5_lambda_80
   + isru_pwl_vehicle1_node3_time5_lambda_81
   + isru_pwl_vehicle1_node3_time5_lambda_82
   + isru_pwl_vehicle1_node3_time5_lambda_83
   + isru_pwl_vehicle1_node3_time5_lambda_93
   + isru_pwl_vehicle1_node3_time5_lambda_94
   + isru_pwl_vehicle1_node3_time5_lambda_95
   + isru_pwl_vehicle1_node3_time5_lambda_96
   + isru_pwl_vehicle1_node3_time5_lambda_97
   + isru_pwl_vehicle1_node3_time5_lambda_98
   + isru_pwl_vehicle1_node3_time5_lambda_99
   + isru_pwl_vehicle1_node3_time5_lambda_100
   + isru_pwl_vehicle1_node3_time5_graybit_4 <= 1
 isru_pwl_vehicle1_node3_time5_branch_pos_bit_5:
   isru_pwl_vehicle1_node3_time5_lambda_3
   + isru_pwl_vehicle1_node3_time5_lambda_4
   + isru_pwl_vehicle1_node3_time5_lambda_5
   + isru_pwl_vehicle1_node3_time5_lambda_11
   + isru_pwl_vehicle1_node3_time5_lambda_12
   + isru_pwl_vehicle1_node3_time5_lambda_13
   + isru_pwl_vehicle1_node3_time5_lambda_19
   + isru_pwl_vehicle1_node3_time5_lambda_20
   + isru_pwl_vehicle1_node3_time5_lambda_21
   + isru_pwl_vehicle1_node3_time5_lambda_27
   + isru_pwl_vehicle1_node3_time5_lambda_28
   + isru_pwl_vehicle1_node3_time5_lambda_29
   + isru_pwl_vehicle1_node3_time5_lambda_35
   + isru_pwl_vehicle1_node3_time5_lambda_36
   + isru_pwl_vehicle1_node3_time5_lambda_37
   + isru_pwl_vehicle1_node3_time5_lambda_43
   + isru_pwl_vehicle1_node3_time5_lambda_44
   + isru_pwl_vehicle1_node3_time5_lambda_45
   + isru_pwl_vehicle1_node3_time5_lambda_51
   + isru_pwl_vehicle1_node3_time5_lambda_52
   + isru_pwl_vehicle1_node3_time5_lambda_53
   + isru_pwl_vehicle1_node3_time5_lambda_59
   + isru_pwl_vehicle1_node3_time5_lambda_60
   + isru_pwl_vehicle1_node3_time5_lambda_61
   + isru_pwl_vehicle1_node3_time5_lambda_67
   + isru_pwl_vehicle1_node3_time5_lambda_68
   + isru_pwl_vehicle1_node3_time5_lambda_69
   + isru_pwl_vehicle1_node3_time5_lambda_75
   + isru_pwl_vehicle1_node3_time5_lambda_76
   + isru_pwl_vehicle1_node3_time5_lambda_77
   + isru_pwl_vehicle1_node3_time5_lambda_83
   + isru_pwl_vehicle1_node3_time5_lambda_84
   + isru_pwl_vehicle1_node3_time5_lambda_85
   + isru_pwl_vehicle1_node3_time5_lambda_91
   + isru_pwl_vehicle1_node3_time5_lambda_92
   + isru_pwl_vehicle1_node3_time5_lambda_93
   + isru_pwl_vehicle1_node3_time5_lambda_99
   + isru_pwl_vehicle1_node3_time5_lambda_100
   - isru_pwl_vehicle1_node3_time5_graybit_5 <= 0
 isru_pwl_vehicle1_node3_time5_branch_neg_bit_5:
   isru_pwl_vehicle1_node3_time5_lambda_0
   + isru_pwl_vehicle1_node3_time5_lambda_1
   + isru_pwl_vehicle1_node3_time5_lambda_7
   + isru_pwl_vehicle1_node3_time5_lambda_8
   + isru_pwl_vehicle1_node3_time5_lambda_9
   + isru_pwl_vehicle1_node3_time5_lambda_15
   + isru_pwl_vehicle1_node3_time5_lambda_16
   + isru_pwl_vehicle1_node3_time5_lambda_17
   + isru_pwl_vehicle1_node3_time5_lambda_23
   + isru_pwl_vehicle1_node3_time5_lambda_24
   + isru_pwl_vehicle1_node3_time5_lambda_25
   + isru_pwl_vehicle1_node3_time5_lambda_31
   + isru_pwl_vehicle1_node3_time5_lambda_32
   + isru_pwl_vehicle1_node3_time5_lambda_33
   + isru_pwl_vehicle1_node3_time5_lambda_39
   + isru_pwl_vehicle1_node3_time5_lambda_40
   + isru_pwl_vehicle1_node3_time5_lambda_41
   + isru_pwl_vehicle1_node3_time5_lambda_47
   + isru_pwl_vehicle1_node3_time5_lambda_48
   + isru_pwl_vehicle1_node3_time5_lambda_49
   + isru_pwl_vehicle1_node3_time5_lambda_55
   + isru_pwl_vehicle1_node3_time5_lambda_56
   + isru_pwl_vehicle1_node3_time5_lambda_57
   + isru_pwl_vehicle1_node3_time5_lambda_63
   + isru_pwl_vehicle1_node3_time5_lambda_64
   + isru_pwl_vehicle1_node3_time5_lambda_65
   + isru_pwl_vehicle1_node3_time5_lambda_71
   + isru_pwl_vehicle1_node3_time5_lambda_72
   + isru_pwl_vehicle1_node3_time5_lambda_73
   + isru_pwl_vehicle1_node3_time5_lambda_79
   + isru_pwl_vehicle1_node3_time5_lambda_80
   + isru_pwl_vehicle1_node3_time5_lambda_81
   + isru_pwl_vehicle1_node3_time5_lambda_87
   + isru_pwl_vehicle1_node3_time5_lambda_88
   + isru_pwl_vehicle1_node3_time5_lambda_89
   + isru_pwl_vehicle1_node3_time5_lambda_95
   + isru_pwl_vehicle1_node3_time5_lambda_96
   + isru_pwl_vehicle1_node3_time5_lambda_97
   + isru_pwl_vehicle1_node3_time5_graybit_5 <= 1
 isru_pwl_vehicle1_node3_time5_branch_pos_bit_6:
   isru_pwl_vehicle1_node3_time5_lambda_2
   + isru_pwl_vehicle1_node3_time5_lambda_6
   + isru_pwl_vehicle1_node3_time5_lambda_10
   + isru_pwl_vehicle1_node3_time5_lambda_14
   + isru_pwl_vehicle1_node3_time5_lambda_18
   + isru_pwl_vehicle1_node3_time5_lambda_22
   + isru_pwl_vehicle1_node3_time5_lambda_26
   + isru_pwl_vehicle1_node3_time5_lambda_30
   + isru_pwl_vehicle1_node3_time5_lambda_34
   + isru_pwl_vehicle1_node3_time5_lambda_38
   + isru_pwl_vehicle1_node3_time5_lambda_42
   + isru_pwl_vehicle1_node3_time5_lambda_46
   + isru_pwl_vehicle1_node3_time5_lambda_50
   + isru_pwl_vehicle1_node3_time5_lambda_54
   + isru_pwl_vehicle1_node3_time5_lambda_58
   + isru_pwl_vehicle1_node3_time5_lambda_62
   + isru_pwl_vehicle1_node3_time5_lambda_66
   + isru_pwl_vehicle1_node3_time5_lambda_70
   + isru_pwl_vehicle1_node3_time5_lambda_74
   + isru_pwl_vehicle1_node3_time5_lambda_78
   + isru_pwl_vehicle1_node3_time5_lambda_82
   + isru_pwl_vehicle1_node3_time5_lambda_86
   + isru_pwl_vehicle1_node3_time5_lambda_90
   + isru_pwl_vehicle1_node3_time5_lambda_94
   + isru_pwl_vehicle1_node3_time5_lambda_98
   - isru_pwl_vehicle1_node3_time5_graybit_6 <= 0
 isru_pwl_vehicle1_node3_time5_branch_neg_bit_6:
   isru_pwl_vehicle1_node3_time5_lambda_0
   + isru_pwl_vehicle1_node3_time5_lambda_4
   + isru_pwl_vehicle1_node3_time5_lambda_8
   + isru_pwl_vehicle1_node3_time5_lambda_12
   + isru_pwl_vehicle1_node3_time5_lambda_16
   + isru_pwl_vehicle1_node3_time5_lambda_20
   + isru_pwl_vehicle1_node3_time5_lambda_24
   + isru_pwl_vehicle1_node3_time5_lambda_28
   + isru_pwl_vehicle1_node3_time5_lambda_32
   + isru_pwl_vehicle1_node3_time5_lambda_36
   + isru_pwl_vehicle1_node3_time5_lambda_40
   + isru_pwl_vehicle1_node3_time5_lambda_44
   + isru_pwl_vehicle1_node3_time5_lambda_48
   + isru_pwl_vehicle1_node3_time5_lambda_52
   + isru_pwl_vehicle1_node3_time5_lambda_56
   + isru_pwl_vehicle1_node3_time5_lambda_60
   + isru_pwl_vehicle1_node3_time5_lambda_64
   + isru_pwl_vehicle1_node3_time5_lambda_68
   + isru_pwl_vehicle1_node3_time5_lambda_72
   + isru_pwl_vehicle1_node3_time5_lambda_76
   + isru_pwl_vehicle1_node3_time5_lambda_80
   + isru_pwl_vehicle1_node3_time5_lambda_84
   + isru_pwl_vehicle1_node3_time5_lambda_88
   + isru_pwl_vehicle1_node3_time5_lambda_92
   + isru_pwl_vehicle1_node3_time5_lambda_96
   + isru_pwl_vehicle1_node3_time5_lambda_100
   + isru_pwl_vehicle1_node3_time5_graybit_6 <= 1
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1000000:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= 0
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1000001:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -1
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1000010:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -1
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1000011:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1000100:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -1
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1000101:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1000110:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1000111:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1001000:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -1
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1001001:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1001010:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1001011:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1001100:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1001101:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1001110:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1001111:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   + isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1010100:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1010101:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1010110:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1010111:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   + isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1011000:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -2
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1011001:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1011010:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1011011:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   + isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1011100:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -3
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1011101:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   + isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1011110:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   + isru_pwl_vehicle1_node3_time5_graybit_6 >= -4
 isru_pwl_vehicle1_node3_time5_forbid_unused_code_1011111:
   - isru_pwl_vehicle1_node3_time5_graybit_0
   + isru_pwl_vehicle1_node3_time5_graybit_1
   - isru_pwl_vehicle1_node3_time5_graybit_2
   - isru_pwl_vehicle1_node3_time5_graybit_3
   - isru_pwl_vehicle1_node3_time5_graybit_4
   - isru_pwl_vehicle1_node3_time5_graybit_5
   - isru_pwl_vehicle1_node3_time5_graybit_6 >= -5
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity5:
   0.99984 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   + 0.00821917808219178 isru_arc_propellant_vehicle1_node3_time5 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity6:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity7:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity8:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityactive_isru
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityactive_isru = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity9:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity10:
   - 8.2191780821917813e-04 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityactive_isru
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   - 73.42 sc_commodity_outflow_1,3,3,Tstart5,Tend8
   - 179.96 SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - 73.42 SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity11:
   sc_commodity_outflow_1,3,3,Tstart5,Tend8
   - sc_commodity_inflow_1,3,3,Tstart5,Tend8 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity12:
   SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - SC_payload_commodity_inflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity13:
   SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   - SC_payload_commodity_inflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   = 0
 PropellantTankOnlyBurn_vehicle1_start3_end3_time5:
   - Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   - Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   + Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   + Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   + 23891 sc_commodity_outflow_1,3,3,Tstart5,Tend8 >= 0
 ActiveISRU_negationConstraint_Start0_End1_Starttime0_Vehicle0:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start0_End1_Starttime0_Vehicle1:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start1_End0_Starttime12_Vehicle0:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityactive_isru
   = 0
 ActiveISRU_negationConstraint_Start1_End0_Starttime12_Vehicle1:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityactive_isru
   = 0
 ActiveISRU_negationConstraint_Start1_End1_Starttime12_Vehicle0:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityactive_isru
   = 0
 ActiveISRU_negationConstraint_Start1_End1_Starttime12_Vehicle1:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityactive_isru
   = 0
 ActiveISRU_negationConstraint_Start1_End1_Starttime1_Vehicle0:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start1_End1_Starttime1_Vehicle1:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start1_End2_Starttime1_Vehicle0:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start1_End2_Starttime1_Vehicle1:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start2_End1_Starttime9_Vehicle0:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start2_End1_Starttime9_Vehicle1:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start2_End2_Starttime9_Vehicle0:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start2_End2_Starttime9_Vehicle1:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start2_End2_Starttime4_Vehicle0:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start2_End2_Starttime4_Vehicle1:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start2_End3_Starttime4_Vehicle0:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start2_End3_Starttime4_Vehicle1:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start3_End2_Starttime8_Vehicle0:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityactive_isru = 0
 ActiveISRU_negationConstraint_Start3_End2_Starttime8_Vehicle1:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityactive_isru = 0
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode1_starttime0:
   100 Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew
   + 100 Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_return
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityconsumables
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityequipment
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditysamples
   + 100 Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypackaged_isru
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityactive_isru
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,0,1,Tstart0,Tend1
   - 2020 SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode1_starttime0:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,0,1,Tstart0,Tend1
   - 166481 SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode0_starttime12:
   100 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew
   + 100 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityconsumables
   + Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityequipment
   + Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditysamples
   + 100 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,1,0,Tstart12,Tend13
   - 2020 SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode0_starttime12:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,1,0,Tstart12,Tend13
   - 166481 SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode1_starttime12:
   100 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew
   + 100 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityconsumables
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityequipment
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditysamples
   + 100 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,1,1,Tstart12,Tend13
   - 2020 SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode1_starttime12:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,1,1,Tstart12,Tend13
   - 166481 SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode1_starttime1:
   100 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew
   + 100 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityconsumables
   + Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityequipment
   + Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditysamples
   + 100 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
   + Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypackaged_isru
   + Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,1,1,Tstart1,Tend12
   - 2020 SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode1_starttime1:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,1,1,Tstart1,Tend12
   - 166481 SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode2_starttime1:
   100 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew
   + 100 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_return
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityconsumables
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityequipment
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditysamples
   + 100 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypackaged_isru
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityactive_isru
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,1,2,Tstart1,Tend4
   - 2020 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode2_starttime1:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,1,2,Tstart1,Tend4
   - 166481 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode1_starttime9:
   100 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew
   + 100 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityconsumables
   + Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityequipment
   + Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditysamples
   + 100 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   + Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypackaged_isru
   + Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,2,1,Tstart9,Tend12
   - 2020 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode1_starttime9:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,2,1,Tstart9,Tend12
   - 166481 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime9:
   100 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew
   + 100 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityconsumables
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityequipment
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditysamples
   + 100 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,2,2,Tstart9,Tend13
   - 2020 SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime9:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,2,2,Tstart9,Tend13
   - 166481 SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime4:
   100 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew
   + 100 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityconsumables
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityequipment
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditysamples
   + 100 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,2,2,Tstart4,Tend9
   - 2020 SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime4:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,2,2,Tstart4,Tend9
   - 166481 SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode3_starttime4:
   100 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew
   + 100 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_return
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityconsumables
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityequipment
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditysamples
   + 100 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityactive_isru
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - 2020 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode3_starttime4:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - 166481 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode2_starttime8:
   100 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew
   + 100 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityconsumables
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityequipment
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditysamples
   + 100 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,3,2,Tstart8,Tend9
   - 2020 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode2_starttime8:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,3,2,Tstart8,Tend9
   - 166481 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode3_starttime8:
   100 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew
   + 100 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityconsumables
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityequipment
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditysamples
   + 100 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,3,3,Tstart8,Tend13
   - 2020 SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode3_starttime8:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,3,3,Tstart8,Tend13
   - 166481 SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode3_starttime5:
   100 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew
   + 100 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_return
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityconsumables
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityequipment
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditysamples
   + 100 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityactive_isru
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   - 2020 sc_commodity_outflow_0,3,3,Tstart5,Tend8
   - 2020 SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode3_starttime5:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   - 166481 sc_commodity_outflow_0,3,3,Tstart5,Tend8
   - 166481 SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode1_starttime0:
   100 Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew
   + 100 Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_return
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityconsumables
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityequipment
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditysamples
   + 100 Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypackaged_isru
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityactive_isru
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,0,1,Tstart0,Tend1
   - 2020 SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode1_starttime0:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,0,1,Tstart0,Tend1
   - 166481 SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode0_starttime12:
   100 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew
   + 100 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityconsumables
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityequipment
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditysamples
   + 100 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,1,0,Tstart12,Tend13
   - 2020 SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode0_starttime12:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,1,0,Tstart12,Tend13
   - 166481 SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode1_starttime12:
   100 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew
   + 100 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityconsumables
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityequipment
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditysamples
   + 100 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,1,1,Tstart12,Tend13
   - 2020 SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode1_starttime12:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,1,1,Tstart12,Tend13
   - 166481 SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode1_starttime1:
   100 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew
   + 100 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityconsumables
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityequipment
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditysamples
   + 100 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypackaged_isru
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,1,1,Tstart1,Tend12
   - 2020 SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode1_starttime1:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,1,1,Tstart1,Tend12
   - 166481 SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode2_starttime1:
   100 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew
   + 100 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_return
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityconsumables
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityequipment
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditysamples
   + 100 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypackaged_isru
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityactive_isru
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,1,2,Tstart1,Tend4
   - 2020 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode2_starttime1:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,1,2,Tstart1,Tend4
   - 166481 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode1_starttime9:
   100 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew
   + 100 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityconsumables
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityequipment
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditysamples
   + 100 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypackaged_isru
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityactive_isru
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,2,1,Tstart9,Tend12
   - 2020 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode1_starttime9:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,2,1,Tstart9,Tend12
   - 166481 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime9:
   100 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew
   + 100 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityconsumables
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityequipment
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditysamples
   + 100 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,2,2,Tstart9,Tend13
   - 2020 SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime9:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,2,2,Tstart9,Tend13
   - 166481 SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime4:
   100 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew
   + 100 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityconsumables
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityequipment
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditysamples
   + 100 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,2,2,Tstart4,Tend9
   - 2020 SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime4:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,2,2,Tstart4,Tend9
   - 166481 SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode3_starttime4:
   100 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew
   + 100 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_return
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityconsumables
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityequipment
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditysamples
   + 100 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityactive_isru
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - 2020 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode3_starttime4:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - 166481 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode2_starttime8:
   100 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew
   + 100 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_return
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityconsumables
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityequipment
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditysamples
   + 100 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityactive_isru
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,3,2,Tstart8,Tend9
   - 2020 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode2_starttime8:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,3,2,Tstart8,Tend9
   - 166481 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode3_starttime8:
   100 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew
   + 100 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_return
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityconsumables
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityequipment
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditysamples
   + 100 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,3,3,Tstart8,Tend13
   - 2020 SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode3_starttime8:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,3,3,Tstart8,Tend13
   - 166481 SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode3_starttime5:
   100 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew
   + 100 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_return
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityconsumables
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityequipment
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditysamples
   + 100 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityactive_isru
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   - 2262 sc_commodity_outflow_1,3,3,Tstart5,Tend8
   - 2020 SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - 2262 SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode3_starttime5:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   - 23891 sc_commodity_outflow_1,3,3,Tstart5,Tend8
   - 166481 SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   - 23891 SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode0_endnode1_starttime0:
   - 100 sc_commodity_outflow_0,0,1,Tstart0,Tend1
   + SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode1_endnode0_starttime12:
   - 100 sc_commodity_outflow_0,1,0,Tstart12,Tend13
   + SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode1_endnode1_starttime12:
   - 100 sc_commodity_outflow_0,1,1,Tstart12,Tend13
   + SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode1_endnode1_starttime1:
   - 100 sc_commodity_outflow_0,1,1,Tstart1,Tend12
   + SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode1_endnode2_starttime1:
   - 100 sc_commodity_outflow_0,1,2,Tstart1,Tend4
   + SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode2_endnode1_starttime9:
   - 100 sc_commodity_outflow_0,2,1,Tstart9,Tend12
   + SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode2_endnode2_starttime9:
   - 100 sc_commodity_outflow_0,2,2,Tstart9,Tend13
   + SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode2_endnode2_starttime4:
   - 100 sc_commodity_outflow_0,2,2,Tstart4,Tend9
   + SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode2_endnode3_starttime4:
   - 100 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   + SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode3_endnode2_starttime8:
   - 100 sc_commodity_outflow_0,3,2,Tstart8,Tend9
   + SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode3_endnode3_starttime8:
   - 100 sc_commodity_outflow_0,3,3,Tstart8,Tend13
   + SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle0_startnode3_endnode3_starttime5:
   - 100 sc_commodity_outflow_0,3,3,Tstart5,Tend8
   + SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode0_endnode1_starttime0:
   - 100 sc_commodity_outflow_1,0,1,Tstart0,Tend1
   + SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode1_endnode0_starttime12:
   - 100 sc_commodity_outflow_1,1,0,Tstart12,Tend13
   + SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode1_endnode1_starttime12:
   - 100 sc_commodity_outflow_1,1,1,Tstart12,Tend13
   + SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode1_endnode1_starttime1:
   - 100 sc_commodity_outflow_1,1,1,Tstart1,Tend12
   + SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode1_endnode2_starttime1:
   - 100 sc_commodity_outflow_1,1,2,Tstart1,Tend4
   + SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode2_endnode1_starttime9:
   - 100 sc_commodity_outflow_1,2,1,Tstart9,Tend12
   + SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode2_endnode2_starttime9:
   - 100 sc_commodity_outflow_1,2,2,Tstart9,Tend13
   + SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode2_endnode2_starttime4:
   - 100 sc_commodity_outflow_1,2,2,Tstart4,Tend9
   + SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode2_endnode3_starttime4:
   - 100 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   + SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode3_endnode2_starttime8:
   - 100 sc_commodity_outflow_1,3,2,Tstart8,Tend9
   + SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode3_endnode3_starttime8:
   - 100 sc_commodity_outflow_1,3,3,Tstart8,Tend13
   + SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
   <= 0
 Minimum_SCP_concurrency_constraint_vehicle1_startnode3_endnode3_starttime5:
   - 100 sc_commodity_outflow_1,3,3,Tstart5,Tend8
   + SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
   + SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
   <= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditycrew:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditycrew_return:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commodityconsumables:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commodityequipment:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditysamples:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditycrew_interim:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditypackaged_isru:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commodityactive_isru:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditycrew:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditycrew_return:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commodityconsumables:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commodityequipment:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditysamples:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditycrew_interim:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditypackaged_isru:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commodityactive_isru:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode0_endnode1_starttime0,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditycrew:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditycrew_return:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commodityconsumables:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commodityequipment:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditysamples:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditycrew_interim:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditypackaged_isru:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commodityactive_isru:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditycrew:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditycrew_return:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commodityconsumables:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commodityequipment:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditysamples:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditycrew_interim:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditypackaged_isru:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commodityactive_isru:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode0_endnode1_starttime0,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditycrew:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditycrew_return:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commodityconsumables:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commodityequipment:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditysamples:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditycrew_interim:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditypackaged_isru:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commodityactive_isru:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditycrew:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditycrew_return:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commodityconsumables:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commodityconsumables
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commodityequipment:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditysamples:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditycrew_interim:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditypackaged_isru:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commodityactive_isru:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commodityactive_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode0_starttime12,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditycrew:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditycrew_return:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commodityconsumables:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commodityequipment:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditysamples:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditycrew_interim:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditypackaged_isru:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commodityactive_isru:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditycrew:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditycrew_return:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commodityconsumables:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commodityconsumables
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commodityequipment:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditysamples:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditycrew_interim:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditypackaged_isru:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commodityactive_isru:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commodityactive_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode0_starttime12,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditycrew:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditycrew_return:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commodityconsumables:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commodityequipment:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditysamples:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditycrew_interim:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditypackaged_isru:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commodityactive_isru:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditycrew:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditycrew_return:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commodityconsumables:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commodityconsumables
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commodityequipment:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditysamples:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditycrew_interim:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditypackaged_isru:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commodityactive_isru:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commodityactive_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime12,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditycrew:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditycrew_return:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commodityconsumables:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commodityequipment:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditysamples:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditycrew_interim:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditypackaged_isru:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commodityactive_isru:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditycrew:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditycrew_return:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commodityconsumables:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commodityconsumables
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commodityequipment:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditysamples:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditycrew_interim:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditypackaged_isru:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commodityactive_isru:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commodityactive_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime12,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditycrew:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditycrew_return:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commodityconsumables:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commodityequipment:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditysamples:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditycrew_interim:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditypackaged_isru:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commodityactive_isru:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditycrew:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditycrew_return:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commodityconsumables:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commodityequipment:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditysamples:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditycrew_interim:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditypackaged_isru:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commodityactive_isru:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode1_starttime1,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditycrew:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditycrew_return:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commodityconsumables:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commodityequipment:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditysamples:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditycrew_interim:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditypackaged_isru:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commodityactive_isru:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditycrew:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditycrew_return:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commodityconsumables:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commodityequipment:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditysamples:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditycrew_interim:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditypackaged_isru:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commodityactive_isru:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode1_starttime1,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditycrew:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditycrew_return:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commodityconsumables:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commodityequipment:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditysamples:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditycrew_interim:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditypackaged_isru:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commodityactive_isru:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditycrew:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditycrew_return:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commodityconsumables:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commodityequipment:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditysamples:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditycrew_interim:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditypackaged_isru:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commodityactive_isru:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode1_endnode2_starttime1,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditycrew:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditycrew_return:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commodityconsumables:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commodityequipment:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditysamples:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditycrew_interim:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditypackaged_isru:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commodityactive_isru:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditycrew:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditycrew_return:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commodityconsumables:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commodityequipment:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditysamples:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditycrew_interim:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditypackaged_isru:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commodityactive_isru:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode1_endnode2_starttime1,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditycrew:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditycrew_return:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commodityconsumables:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commodityequipment:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditysamples:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditycrew_interim:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditypackaged_isru:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commodityactive_isru:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditycrew:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditycrew_return:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commodityconsumables:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commodityequipment:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditysamples:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditycrew_interim:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditypackaged_isru:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commodityactive_isru:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode1_starttime9,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditycrew:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditycrew_return:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commodityconsumables:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commodityequipment:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditysamples:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditycrew_interim:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditypackaged_isru:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commodityactive_isru:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditycrew:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditycrew_return:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commodityconsumables:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commodityequipment:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditysamples:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditycrew_interim:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditypackaged_isru:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commodityactive_isru:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode1_starttime9,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditycrew:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditycrew_return:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commodityconsumables:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commodityequipment:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditysamples:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditycrew_interim:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditypackaged_isru:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commodityactive_isru:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditycrew:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditycrew_return:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commodityconsumables:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commodityequipment:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditysamples:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditycrew_interim:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditypackaged_isru:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commodityactive_isru:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime9,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditycrew:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditycrew_return:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commodityconsumables:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commodityequipment:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditysamples:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditycrew_interim:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditypackaged_isru:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commodityactive_isru:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditycrew:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditycrew_return:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commodityconsumables:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commodityequipment:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditysamples:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditycrew_interim:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditypackaged_isru:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commodityactive_isru:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime9,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditycrew:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditycrew_return:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commodityconsumables:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commodityequipment:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditysamples:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditycrew_interim:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditypackaged_isru:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commodityactive_isru:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditycrew:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditycrew_return:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commodityconsumables:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commodityequipment:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditysamples:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditycrew_interim:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditypackaged_isru:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commodityactive_isru:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode2_starttime4,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditycrew:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditycrew_return:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commodityconsumables:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commodityequipment:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditysamples:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditycrew_interim:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditypackaged_isru:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commodityactive_isru:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditycrew:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditycrew_return:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commodityconsumables:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commodityequipment:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditysamples:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditycrew_interim:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditypackaged_isru:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commodityactive_isru:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode2_starttime4,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditycrew:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditycrew_return:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commodityconsumables:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commodityequipment:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditysamples:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditycrew_interim:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditypackaged_isru:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commodityactive_isru:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditycrew:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditycrew_return:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commodityconsumables:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commodityequipment:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditysamples:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditycrew_interim:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditypackaged_isru:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commodityactive_isru:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode2_endnode3_starttime4,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditycrew:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditycrew_return:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commodityconsumables:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commodityequipment:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditysamples:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditycrew_interim:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditypackaged_isru:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commodityactive_isru:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditycrew:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditycrew_return:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commodityconsumables:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commodityequipment:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditysamples:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditycrew_interim:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditypackaged_isru:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commodityactive_isru:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode2_endnode3_starttime4,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditycrew:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditycrew_return:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commodityconsumables:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commodityequipment:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditysamples:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditycrew_interim:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditypackaged_isru:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commodityactive_isru:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditycrew:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditycrew_return:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commodityconsumables:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commodityequipment:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditysamples:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditycrew_interim:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditypackaged_isru:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commodityactive_isru:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode2_starttime8,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditycrew:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditycrew_return:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commodityconsumables:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commodityequipment:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditysamples:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditycrew_interim:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditypackaged_isru:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commodityactive_isru:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditycrew:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditycrew_return:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commodityconsumables:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commodityequipment:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditysamples:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditycrew_interim:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditypackaged_isru:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commodityactive_isru:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode2_starttime8,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditycrew:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditycrew_return:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commodityconsumables:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commodityequipment:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditysamples:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditycrew_interim:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditypackaged_isru:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commodityactive_isru:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditycrew:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditycrew_return:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commodityconsumables:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commodityequipment:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditysamples:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditycrew_interim:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditypackaged_isru:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commodityactive_isru:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime8,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditycrew:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditycrew_return:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_return
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commodityconsumables:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityconsumables
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commodityequipment:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditysamples:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditycrew_interim:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditypackaged_isru:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commodityactive_isru:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commodityactive_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditycrew:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditycrew_return:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commodityconsumables:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commodityequipment:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditysamples:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditycrew_interim:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditypackaged_isru:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commodityactive_isru:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime8,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditycrew:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditycrew_return:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commodityconsumables:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commodityequipment:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditysamples:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditypropellant_oxygen:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditycrew_interim:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditypackaged_isru:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commodityactive_isru:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditypropellant_kerosene:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditymaintenance_mass:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditycrew:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditycrew_return:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commodityconsumables:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commodityequipment:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditysamples:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditypropellant_oxygen:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditycrew_interim:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditypackaged_isru:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commodityactive_isru:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditypropellant_kerosene:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle0_startnode3_endnode3_starttime5,Commoditymaintenance_mass:
   Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditycrew:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditycrew_return:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_return >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commodityconsumables:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityconsumables >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commodityequipment:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityequipment >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditysamples:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditysamples >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditypropellant_oxygen:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditycrew_interim:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditypackaged_isru:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commodityactive_isru:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commodityactive_isru >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditypropellant_kerosene:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   >= 0
 Outflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditymaintenance_mass:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditycrew:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditycrew_return:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew_return >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commodityconsumables:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityconsumables >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commodityequipment:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityequipment >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditysamples:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditysamples >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditypropellant_oxygen:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypropellant_oxygen
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditycrew_interim:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditypackaged_isru:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypackaged_isru
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commodityactive_isru:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commodityactive_isru >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditypropellant_kerosene:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditypropellant_kerosene
   >= 0
 Inflow_inside_time_window_constraint_vehicle1_startnode3_endnode3_starttime5,Commoditymaintenance_mass:
   Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditymaintenance_mass
   >= 0
Bounds
 isru_pwl_vehicle0_node3_time8_lambda_0 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_1 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_2 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_3 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_4 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_5 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_6 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_7 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_8 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_9 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_10 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_11 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_12 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_13 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_14 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_15 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_16 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_17 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_18 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_19 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_20 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_21 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_22 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_23 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_24 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_25 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_26 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_27 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_28 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_29 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_30 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_31 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_32 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_33 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_34 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_35 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_36 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_37 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_38 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_39 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_40 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_41 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_42 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_43 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_44 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_45 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_46 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_47 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_48 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_49 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_50 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_51 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_52 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_53 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_54 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_55 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_56 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_57 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_58 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_59 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_60 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_61 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_62 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_63 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_64 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_65 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_66 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_67 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_68 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_69 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_70 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_71 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_72 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_73 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_74 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_75 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_76 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_77 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_78 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_79 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_80 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_81 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_82 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_83 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_84 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_85 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_86 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_87 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_88 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_89 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_90 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_91 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_92 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_93 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_94 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_95 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_96 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_97 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_98 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_99 <= 1
 isru_pwl_vehicle0_node3_time8_lambda_100 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_0 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_1 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_2 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_3 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_4 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_5 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_6 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_7 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_8 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_9 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_10 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_11 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_12 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_13 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_14 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_15 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_16 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_17 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_18 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_19 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_20 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_21 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_22 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_23 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_24 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_25 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_26 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_27 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_28 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_29 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_30 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_31 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_32 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_33 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_34 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_35 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_36 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_37 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_38 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_39 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_40 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_41 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_42 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_43 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_44 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_45 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_46 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_47 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_48 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_49 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_50 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_51 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_52 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_53 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_54 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_55 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_56 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_57 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_58 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_59 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_60 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_61 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_62 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_63 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_64 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_65 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_66 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_67 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_68 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_69 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_70 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_71 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_72 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_73 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_74 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_75 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_76 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_77 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_78 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_79 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_80 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_81 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_82 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_83 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_84 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_85 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_86 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_87 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_88 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_89 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_90 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_91 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_92 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_93 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_94 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_95 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_96 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_97 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_98 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_99 <= 1
 isru_pwl_vehicle1_node3_time8_lambda_100 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_0 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_1 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_2 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_3 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_4 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_5 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_6 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_7 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_8 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_9 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_10 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_11 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_12 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_13 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_14 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_15 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_16 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_17 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_18 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_19 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_20 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_21 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_22 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_23 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_24 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_25 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_26 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_27 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_28 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_29 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_30 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_31 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_32 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_33 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_34 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_35 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_36 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_37 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_38 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_39 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_40 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_41 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_42 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_43 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_44 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_45 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_46 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_47 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_48 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_49 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_50 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_51 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_52 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_53 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_54 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_55 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_56 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_57 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_58 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_59 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_60 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_61 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_62 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_63 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_64 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_65 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_66 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_67 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_68 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_69 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_70 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_71 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_72 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_73 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_74 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_75 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_76 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_77 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_78 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_79 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_80 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_81 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_82 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_83 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_84 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_85 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_86 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_87 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_88 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_89 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_90 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_91 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_92 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_93 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_94 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_95 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_96 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_97 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_98 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_99 <= 1
 isru_pwl_vehicle0_node3_time5_lambda_100 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_0 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_1 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_2 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_3 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_4 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_5 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_6 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_7 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_8 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_9 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_10 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_11 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_12 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_13 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_14 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_15 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_16 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_17 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_18 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_19 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_20 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_21 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_22 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_23 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_24 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_25 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_26 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_27 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_28 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_29 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_30 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_31 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_32 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_33 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_34 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_35 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_36 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_37 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_38 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_39 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_40 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_41 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_42 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_43 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_44 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_45 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_46 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_47 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_48 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_49 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_50 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_51 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_52 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_53 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_54 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_55 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_56 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_57 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_58 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_59 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_60 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_61 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_62 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_63 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_64 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_65 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_66 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_67 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_68 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_69 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_70 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_71 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_72 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_73 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_74 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_75 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_76 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_77 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_78 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_79 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_80 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_81 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_82 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_83 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_84 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_85 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_86 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_87 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_88 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_89 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_90 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_91 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_92 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_93 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_94 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_95 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_96 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_97 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_98 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_99 <= 1
 isru_pwl_vehicle1_node3_time5_lambda_100 <= 1
Binaries
 isru_pwl_vehicle0_node3_time8_graybit_0
 isru_pwl_vehicle0_node3_time8_graybit_1
 isru_pwl_vehicle0_node3_time8_graybit_2
 isru_pwl_vehicle0_node3_time8_graybit_3
 isru_pwl_vehicle0_node3_time8_graybit_4
 isru_pwl_vehicle0_node3_time8_graybit_5
 isru_pwl_vehicle0_node3_time8_graybit_6
 isru_pwl_vehicle1_node3_time8_graybit_0
 isru_pwl_vehicle1_node3_time8_graybit_1
 isru_pwl_vehicle1_node3_time8_graybit_2
 isru_pwl_vehicle1_node3_time8_graybit_3
 isru_pwl_vehicle1_node3_time8_graybit_4
 isru_pwl_vehicle1_node3_time8_graybit_5
 isru_pwl_vehicle1_node3_time8_graybit_6
 isru_pwl_vehicle0_node3_time5_graybit_0
 isru_pwl_vehicle0_node3_time5_graybit_1
 isru_pwl_vehicle0_node3_time5_graybit_2
 isru_pwl_vehicle0_node3_time5_graybit_3
 isru_pwl_vehicle0_node3_time5_graybit_4
 isru_pwl_vehicle0_node3_time5_graybit_5
 isru_pwl_vehicle0_node3_time5_graybit_6
 isru_pwl_vehicle1_node3_time5_graybit_0
 isru_pwl_vehicle1_node3_time5_graybit_1
 isru_pwl_vehicle1_node3_time5_graybit_2
 isru_pwl_vehicle1_node3_time5_graybit_3
 isru_pwl_vehicle1_node3_time5_graybit_4
 isru_pwl_vehicle1_node3_time5_graybit_5
 isru_pwl_vehicle1_node3_time5_graybit_6
Generals
 Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew
 Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_return
 Classic_commodity_outflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim
 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew
 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
 Classic_commodity_outflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew
 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
 Classic_commodity_outflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew
 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_return
 Classic_commodity_outflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew
 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_return
 Classic_commodity_outflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew
 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
 Classic_commodity_outflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew
 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_return
 Classic_commodity_outflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew
 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_return
 Classic_commodity_outflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim
 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew
 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_return
 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew
 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_return
 Classic_commodity_outflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew
 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_return
 Classic_commodity_outflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew
 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_return
 Classic_commodity_outflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim
 Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew
 Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_return
 Classic_commodity_outflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim
 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew
 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
 Classic_commodity_outflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew
 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
 Classic_commodity_outflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew
 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_return
 Classic_commodity_outflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew
 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_return
 Classic_commodity_outflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew
 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
 Classic_commodity_outflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew
 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_return
 Classic_commodity_outflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew
 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_return
 Classic_commodity_outflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim
 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew
 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_return
 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew
 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_return
 Classic_commodity_outflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew
 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_return
 Classic_commodity_outflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew
 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_return
 Classic_commodity_outflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim
 Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew
 Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew_return
 Classic_commodity_inflow_0,0,1,Tstart0,Tend1,Commoditycrew_interim
 Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew
 Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew_return
 Classic_commodity_inflow_0,1,0,Tstart12,Tend13,Commoditycrew_interim
 Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew
 Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew_return
 Classic_commodity_inflow_0,1,1,Tstart12,Tend13,Commoditycrew_interim
 Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew
 Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew_return
 Classic_commodity_inflow_0,1,1,Tstart1,Tend12,Commoditycrew_interim
 Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew
 Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew_return
 Classic_commodity_inflow_0,1,2,Tstart1,Tend4,Commoditycrew_interim
 Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew
 Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew_return
 Classic_commodity_inflow_0,2,1,Tstart9,Tend12,Commoditycrew_interim
 Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew
 Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew_return
 Classic_commodity_inflow_0,2,2,Tstart9,Tend13,Commoditycrew_interim
 Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew
 Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew_return
 Classic_commodity_inflow_0,2,2,Tstart4,Tend9,Commoditycrew_interim
 Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew
 Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew_return
 Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commoditycrew_interim
 Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew
 Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew_return
 Classic_commodity_inflow_0,3,2,Tstart8,Tend9,Commoditycrew_interim
 Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew
 Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew_return
 Classic_commodity_inflow_0,3,3,Tstart8,Tend13,Commoditycrew_interim
 Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew
 Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew_return
 Classic_commodity_inflow_0,3,3,Tstart5,Tend8,Commoditycrew_interim
 Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew
 Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew_return
 Classic_commodity_inflow_1,0,1,Tstart0,Tend1,Commoditycrew_interim
 Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew
 Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew_return
 Classic_commodity_inflow_1,1,0,Tstart12,Tend13,Commoditycrew_interim
 Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew
 Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew_return
 Classic_commodity_inflow_1,1,1,Tstart12,Tend13,Commoditycrew_interim
 Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew
 Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew_return
 Classic_commodity_inflow_1,1,1,Tstart1,Tend12,Commoditycrew_interim
 Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew
 Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew_return
 Classic_commodity_inflow_1,1,2,Tstart1,Tend4,Commoditycrew_interim
 Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew
 Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew_return
 Classic_commodity_inflow_1,2,1,Tstart9,Tend12,Commoditycrew_interim
 Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew
 Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew_return
 Classic_commodity_inflow_1,2,2,Tstart9,Tend13,Commoditycrew_interim
 Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew
 Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew_return
 Classic_commodity_inflow_1,2,2,Tstart4,Tend9,Commoditycrew_interim
 Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew
 Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew_return
 Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commoditycrew_interim
 Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew
 Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew_return
 Classic_commodity_inflow_1,3,2,Tstart8,Tend9,Commoditycrew_interim
 Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew
 Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew_return
 Classic_commodity_inflow_1,3,3,Tstart8,Tend13,Commoditycrew_interim
 Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew
 Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew_return
 Classic_commodity_inflow_1,3,3,Tstart5,Tend8,Commoditycrew_interim
 sc_commodity_outflow_0,0,1,Tstart0,Tend1
 sc_commodity_outflow_0,1,0,Tstart12,Tend13
 sc_commodity_outflow_0,1,1,Tstart12,Tend13
 sc_commodity_outflow_0,1,1,Tstart1,Tend12
 sc_commodity_outflow_0,1,2,Tstart1,Tend4
 sc_commodity_outflow_0,2,1,Tstart9,Tend12
 sc_commodity_outflow_0,2,2,Tstart9,Tend13
 sc_commodity_outflow_0,2,2,Tstart4,Tend9
 sc_commodity_outflow_0,2,3,Tstart4,Tend5
 sc_commodity_outflow_0,3,2,Tstart8,Tend9
 sc_commodity_outflow_0,3,3,Tstart8,Tend13
 sc_commodity_outflow_0,3,3,Tstart5,Tend8
 sc_commodity_outflow_1,0,1,Tstart0,Tend1
 sc_commodity_outflow_1,1,0,Tstart12,Tend13
 sc_commodity_outflow_1,1,1,Tstart12,Tend13
 sc_commodity_outflow_1,1,1,Tstart1,Tend12
 sc_commodity_outflow_1,1,2,Tstart1,Tend4
 sc_commodity_outflow_1,2,1,Tstart9,Tend12
 sc_commodity_outflow_1,2,2,Tstart9,Tend13
 sc_commodity_outflow_1,2,2,Tstart4,Tend9
 sc_commodity_outflow_1,2,3,Tstart4,Tend5
 sc_commodity_outflow_1,3,2,Tstart8,Tend9
 sc_commodity_outflow_1,3,3,Tstart8,Tend13
 sc_commodity_outflow_1,3,3,Tstart5,Tend8
 sc_commodity_inflow_0,0,1,Tstart0,Tend1
 sc_commodity_inflow_0,1,0,Tstart12,Tend13
 sc_commodity_inflow_0,1,1,Tstart12,Tend13
 sc_commodity_inflow_0,1,1,Tstart1,Tend12
 sc_commodity_inflow_0,1,2,Tstart1,Tend4
 sc_commodity_inflow_0,2,1,Tstart9,Tend12
 sc_commodity_inflow_0,2,2,Tstart9,Tend13
 sc_commodity_inflow_0,2,2,Tstart4,Tend9
 sc_commodity_inflow_0,2,3,Tstart4,Tend5
 sc_commodity_inflow_0,3,2,Tstart8,Tend9
 sc_commodity_inflow_0,3,3,Tstart8,Tend13
 sc_commodity_inflow_0,3,3,Tstart5,Tend8
 sc_commodity_inflow_1,0,1,Tstart0,Tend1
 sc_commodity_inflow_1,1,0,Tstart12,Tend13
 sc_commodity_inflow_1,1,1,Tstart12,Tend13
 sc_commodity_inflow_1,1,1,Tstart1,Tend12
 sc_commodity_inflow_1,1,2,Tstart1,Tend4
 sc_commodity_inflow_1,2,1,Tstart9,Tend12
 sc_commodity_inflow_1,2,2,Tstart9,Tend13
 sc_commodity_inflow_1,2,2,Tstart4,Tend9
 sc_commodity_inflow_1,2,3,Tstart4,Tend5
 sc_commodity_inflow_1,3,2,Tstart8,Tend9
 sc_commodity_inflow_1,3,3,Tstart8,Tend13
 sc_commodity_inflow_1,3,3,Tstart5,Tend8
 SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
 SC_payload_commodity_outflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_0,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,0,1,Tstart0,Tend1,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,1,0,Tstart12,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,1,1,Tstart12,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,1,1,Tstart1,Tend12,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,1,2,Tstart1,Tend4,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,2,1,Tstart9,Tend12,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,2,2,Tstart9,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,2,2,Tstart4,Tend9,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,2,3,Tstart4,Tend5,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,3,2,Tstart8,Tend9,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,3,3,Tstart8,Tend13,CommoditypayloadVarType_2
 SC_payload_commodity_inflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_1
 SC_payload_commodity_inflow_1,3,3,Tstart5,Tend8,CommoditypayloadVarType_2
End
