\ Model Model_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x411023e05f33e9da
Minimize
  100 Classic_commodity_outflow_0,1,0,0,0
   + Classic_commodity_outflow_0,1,0,0,1
   + Classic_commodity_outflow_0,1,0,0,2
   + Classic_commodity_outflow_0,1,0,0,3
   + Classic_commodity_outflow_0,1,0,0,4
   + 100 Classic_commodity_outflow_0,1,1,0,0
   + Classic_commodity_outflow_0,1,1,0,1
   + Classic_commodity_outflow_0,1,1,0,2
   + Classic_commodity_outflow_0,1,1,0,3
   + Classic_commodity_outflow_0,1,1,0,4
   + 100 Classic_commodity_outflow_0,1,2,0,0
   + Classic_commodity_outflow_0,1,2,0,1
   + Classic_commodity_outflow_0,1,2,0,2
   + Classic_commodity_outflow_0,1,2,0,3
   + Classic_commodity_outflow_0,1,2,0,4
   + 100 Classic_commodity_outflow_1,1,0,0,0
   + Classic_commodity_outflow_1,1,0,0,1
   + Classic_commodity_outflow_1,1,0,0,2
   + Classic_commodity_outflow_1,1,0,0,3
   + Classic_commodity_outflow_1,1,0,0,4
   + 100 Classic_commodity_outflow_1,1,1,0,0
   + Classic_commodity_outflow_1,1,1,0,1
   + Classic_commodity_outflow_1,1,1,0,2
   + Classic_commodity_outflow_1,1,1,0,3
   + Classic_commodity_outflow_1,1,1,0,4
   + 100 Classic_commodity_outflow_1,1,2,0,0
   + Classic_commodity_outflow_1,1,2,0,1
   + Classic_commodity_outflow_1,1,2,0,2
   + Classic_commodity_outflow_1,1,2,0,3
   + Classic_commodity_outflow_1,1,2,0,4
   + 2500 sc_commodity_outflow_0,1,0,0 + 2500 sc_commodity_outflow_0,1,1,0
   + 2500 sc_commodity_outflow_0,1,2,0 + 30000 sc_commodity_outflow_1,1,0,0
   + 30000 sc_commodity_outflow_1,1,1,0
   + 30000 sc_commodity_outflow_1,1,2,0
Subject To
 mass_balance_x_node0_time0_comm0: Classic_commodity_outflow_0,0,0,0,0
   + Classic_commodity_outflow_0,0,1,0,0
   + Classic_commodity_outflow_1,0,0,0,0
   + Classic_commodity_outflow_1,0,1,0,0 <= 0
 mass_balance_x_node0_time0_comm1: Classic_commodity_outflow_0,0,0,0,1
   + Classic_commodity_outflow_0,0,1,0,1
   + Classic_commodity_outflow_1,0,0,0,1
   + Classic_commodity_outflow_1,0,1,0,1 <= 0
 mass_balance_x_node0_time0_comm2: Classic_commodity_outflow_0,0,0,0,2
   + Classic_commodity_outflow_0,0,1,0,2
   + Classic_commodity_outflow_1,0,0,0,2
   + Classic_commodity_outflow_1,0,1,0,2 <= 0
 mass_balance_x_node0_time0_comm3: Classic_commodity_outflow_0,0,0,0,3
   + Classic_commodity_outflow_0,0,1,0,3
   + Classic_commodity_outflow_1,0,0,0,3
   + Classic_commodity_outflow_1,0,1,0,3 <= 0
 mass_balance_x_node0_time0_comm4: Classic_commodity_outflow_0,0,0,0,4
   + Classic_commodity_outflow_0,0,1,0,4
   + Classic_commodity_outflow_1,0,0,0,4
   + Classic_commodity_outflow_1,0,1,0,4 <= 0
 SC_lossless_mass_balance_x_node0_time0_vehicle0:
   sc_commodity_outflow_0,0,0,0 + sc_commodity_outflow_0,0,1,0 = 0
 SC_lossless_mass_balance_x_node0_time0_vehicle1:
   sc_commodity_outflow_1,0,0,0 + sc_commodity_outflow_1,0,1,0 = 0
 mass_balance_x_node0_time1_comm0: Classic_commodity_outflow_0,0,0,1,0
   + Classic_commodity_outflow_0,0,1,1,0
   + Classic_commodity_outflow_1,0,0,1,0
   + Classic_commodity_outflow_1,0,1,1,0
   - Classic_commodity_inflow_0,0,0,0,0
   - Classic_commodity_inflow_0,1,0,0,0
   - Classic_commodity_inflow_1,0,0,0,0
   - Classic_commodity_inflow_1,1,0,0,0 <= 0
 mass_balance_x_node0_time1_comm1: Classic_commodity_outflow_0,0,0,1,1
   + Classic_commodity_outflow_0,0,1,1,1
   + Classic_commodity_outflow_1,0,0,1,1
   + Classic_commodity_outflow_1,0,1,1,1
   - Classic_commodity_inflow_0,0,0,0,1
   - Classic_commodity_inflow_0,1,0,0,1
   - Classic_commodity_inflow_1,0,0,0,1
   - Classic_commodity_inflow_1,1,0,0,1 <= 0
 mass_balance_x_node0_time1_comm2: Classic_commodity_outflow_0,0,0,1,2
   + Classic_commodity_outflow_0,0,1,1,2
   + Classic_commodity_outflow_1,0,0,1,2
   + Classic_commodity_outflow_1,0,1,1,2
   - Classic_commodity_inflow_0,0,0,0,2
   - Classic_commodity_inflow_0,1,0,0,2
   - Classic_commodity_inflow_1,0,0,0,2
   - Classic_commodity_inflow_1,1,0,0,2 <= 0
 mass_balance_x_node0_time1_comm3: Classic_commodity_outflow_0,0,0,1,3
   + Classic_commodity_outflow_0,0,1,1,3
   + Classic_commodity_outflow_1,0,0,1,3
   + Classic_commodity_outflow_1,0,1,1,3
   - Classic_commodity_inflow_0,0,0,0,3
   - Classic_commodity_inflow_0,1,0,0,3
   - Classic_commodity_inflow_1,0,0,0,3
   - Classic_commodity_inflow_1,1,0,0,3 <= 0
 mass_balance_x_node0_time1_comm4: Classic_commodity_outflow_0,0,0,1,4
   + Classic_commodity_outflow_0,0,1,1,4
   + Classic_commodity_outflow_1,0,0,1,4
   + Classic_commodity_outflow_1,0,1,1,4
   - Classic_commodity_inflow_0,0,0,0,4
   - Classic_commodity_inflow_0,1,0,0,4
   - Classic_commodity_inflow_1,0,0,0,4
   - Classic_commodity_inflow_1,1,0,0,4 <= 0
 SC_lossless_mass_balance_x_node0_time1_vehicle0:
   sc_commodity_outflow_0,0,0,1 + sc_commodity_outflow_0,0,1,1
   - sc_commodity_inflow_0,0,0,0 - sc_commodity_inflow_0,1,0,0 = 0
 SC_lossless_mass_balance_x_node0_time1_vehicle1:
   sc_commodity_outflow_1,0,0,1 + sc_commodity_outflow_1,0,1,1
   - sc_commodity_inflow_1,0,0,0 - sc_commodity_inflow_1,1,0,0 = 0
 mass_balance_x_node0_time2_comm0: Classic_commodity_outflow_0,0,0,2,0
   + Classic_commodity_outflow_0,0,1,2,0
   + Classic_commodity_outflow_1,0,0,2,0
   + Classic_commodity_outflow_1,0,1,2,0
   - Classic_commodity_inflow_0,0,0,1,0
   - Classic_commodity_inflow_0,1,0,1,0
   - Classic_commodity_inflow_1,0,0,1,0
   - Classic_commodity_inflow_1,1,0,1,0 <= 0
 mass_balance_x_node0_time2_comm1: Classic_commodity_outflow_0,0,0,2,1
   + Classic_commodity_outflow_0,0,1,2,1
   + Classic_commodity_outflow_1,0,0,2,1
   + Classic_commodity_outflow_1,0,1,2,1
   - Classic_commodity_inflow_0,0,0,1,1
   - Classic_commodity_inflow_0,1,0,1,1
   - Classic_commodity_inflow_1,0,0,1,1
   - Classic_commodity_inflow_1,1,0,1,1 <= 0
 mass_balance_x_node0_time2_comm2: Classic_commodity_outflow_0,0,0,2,2
   + Classic_commodity_outflow_0,0,1,2,2
   + Classic_commodity_outflow_1,0,0,2,2
   + Classic_commodity_outflow_1,0,1,2,2
   - Classic_commodity_inflow_0,0,0,1,2
   - Classic_commodity_inflow_0,1,0,1,2
   - Classic_commodity_inflow_1,0,0,1,2
   - Classic_commodity_inflow_1,1,0,1,2 <= 0
 mass_balance_x_node0_time2_comm3: Classic_commodity_outflow_0,0,0,2,3
   + Classic_commodity_outflow_0,0,1,2,3
   + Classic_commodity_outflow_1,0,0,2,3
   + Classic_commodity_outflow_1,0,1,2,3
   - Classic_commodity_inflow_0,0,0,1,3
   - Classic_commodity_inflow_0,1,0,1,3
   - Classic_commodity_inflow_1,0,0,1,3
   - Classic_commodity_inflow_1,1,0,1,3 <= 0
 mass_balance_x_node0_time2_comm4: Classic_commodity_outflow_0,0,0,2,4
   + Classic_commodity_outflow_0,0,1,2,4
   + Classic_commodity_outflow_1,0,0,2,4
   + Classic_commodity_outflow_1,0,1,2,4
   - Classic_commodity_inflow_0,0,0,1,4
   - Classic_commodity_inflow_0,1,0,1,4
   - Classic_commodity_inflow_1,0,0,1,4
   - Classic_commodity_inflow_1,1,0,1,4 <= 0
 SC_lossless_mass_balance_x_node0_time2_vehicle0:
   sc_commodity_outflow_0,0,0,2 + sc_commodity_outflow_0,0,1,2
   - sc_commodity_inflow_0,0,0,1 - sc_commodity_inflow_0,1,0,1 = 0
 SC_lossless_mass_balance_x_node0_time2_vehicle1:
   sc_commodity_outflow_1,0,0,2 + sc_commodity_outflow_1,0,1,2
   - sc_commodity_inflow_1,0,0,1 - sc_commodity_inflow_1,1,0,1 = 0
 mass_balance_x_node0_time3_comm0: Classic_commodity_outflow_0,0,0,3,0
   + Classic_commodity_outflow_0,0,1,3,0
   + Classic_commodity_outflow_1,0,0,3,0
   + Classic_commodity_outflow_1,0,1,3,0
   - Classic_commodity_inflow_0,0,0,2,0
   - Classic_commodity_inflow_0,1,0,2,0
   - Classic_commodity_inflow_1,0,0,2,0
   - Classic_commodity_inflow_1,1,0,2,0 <= 0
 mass_balance_x_node0_time3_comm1: Classic_commodity_outflow_0,0,0,3,1
   + Classic_commodity_outflow_0,0,1,3,1
   + Classic_commodity_outflow_1,0,0,3,1
   + Classic_commodity_outflow_1,0,1,3,1
   - Classic_commodity_inflow_0,0,0,2,1
   - Classic_commodity_inflow_0,1,0,2,1
   - Classic_commodity_inflow_1,0,0,2,1
   - Classic_commodity_inflow_1,1,0,2,1 <= 0
 mass_balance_x_node0_time3_comm2: Classic_commodity_outflow_0,0,0,3,2
   + Classic_commodity_outflow_0,0,1,3,2
   + Classic_commodity_outflow_1,0,0,3,2
   + Classic_commodity_outflow_1,0,1,3,2
   - Classic_commodity_inflow_0,0,0,2,2
   - Classic_commodity_inflow_0,1,0,2,2
   - Classic_commodity_inflow_1,0,0,2,2
   - Classic_commodity_inflow_1,1,0,2,2 <= 0
 mass_balance_x_node0_time3_comm3: Classic_commodity_outflow_0,0,0,3,3
   + Classic_commodity_outflow_0,0,1,3,3
   + Classic_commodity_outflow_1,0,0,3,3
   + Classic_commodity_outflow_1,0,1,3,3
   - Classic_commodity_inflow_0,0,0,2,3
   - Classic_commodity_inflow_0,1,0,2,3
   - Classic_commodity_inflow_1,0,0,2,3
   - Classic_commodity_inflow_1,1,0,2,3 <= 0
 mass_balance_x_node0_time3_comm4: Classic_commodity_outflow_0,0,0,3,4
   + Classic_commodity_outflow_0,0,1,3,4
   + Classic_commodity_outflow_1,0,0,3,4
   + Classic_commodity_outflow_1,0,1,3,4
   - Classic_commodity_inflow_0,0,0,2,4
   - Classic_commodity_inflow_0,1,0,2,4
   - Classic_commodity_inflow_1,0,0,2,4
   - Classic_commodity_inflow_1,1,0,2,4 <= 0
 SC_lossless_mass_balance_x_node0_time3_vehicle0:
   sc_commodity_outflow_0,0,0,3 + sc_commodity_outflow_0,0,1,3
   - sc_commodity_inflow_0,0,0,2 - sc_commodity_inflow_0,1,0,2 = 0
 SC_lossless_mass_balance_x_node0_time3_vehicle1:
   sc_commodity_outflow_1,0,0,3 + sc_commodity_outflow_1,0,1,3
   - sc_commodity_inflow_1,0,0,2 - sc_commodity_inflow_1,1,0,2 = 0
 mass_balance_x_node0_time4_comm0: Classic_commodity_outflow_0,0,0,4,0
   + Classic_commodity_outflow_0,0,1,4,0
   + Classic_commodity_outflow_1,0,0,4,0
   + Classic_commodity_outflow_1,0,1,4,0
   - Classic_commodity_inflow_0,0,0,3,0
   - Classic_commodity_inflow_0,1,0,3,0
   - Classic_commodity_inflow_1,0,0,3,0
   - Classic_commodity_inflow_1,1,0,3,0 <= 0
 mass_balance_x_node0_time4_comm1: Classic_commodity_outflow_0,0,0,4,1
   + Classic_commodity_outflow_0,0,1,4,1
   + Classic_commodity_outflow_1,0,0,4,1
   + Classic_commodity_outflow_1,0,1,4,1
   - Classic_commodity_inflow_0,0,0,3,1
   - Classic_commodity_inflow_0,1,0,3,1
   - Classic_commodity_inflow_1,0,0,3,1
   - Classic_commodity_inflow_1,1,0,3,1 <= 0
 mass_balance_x_node0_time4_comm2: Classic_commodity_outflow_0,0,0,4,2
   + Classic_commodity_outflow_0,0,1,4,2
   + Classic_commodity_outflow_1,0,0,4,2
   + Classic_commodity_outflow_1,0,1,4,2
   - Classic_commodity_inflow_0,0,0,3,2
   - Classic_commodity_inflow_0,1,0,3,2
   - Classic_commodity_inflow_1,0,0,3,2
   - Classic_commodity_inflow_1,1,0,3,2 <= 0
 mass_balance_x_node0_time4_comm3: Classic_commodity_outflow_0,0,0,4,3
   + Classic_commodity_outflow_0,0,1,4,3
   + Classic_commodity_outflow_1,0,0,4,3
   + Classic_commodity_outflow_1,0,1,4,3
   - Classic_commodity_inflow_0,0,0,3,3
   - Classic_commodity_inflow_0,1,0,3,3
   - Classic_commodity_inflow_1,0,0,3,3
   - Classic_commodity_inflow_1,1,0,3,3 <= 0
 mass_balance_x_node0_time4_comm4: Classic_commodity_outflow_0,0,0,4,4
   + Classic_commodity_outflow_0,0,1,4,4
   + Classic_commodity_outflow_1,0,0,4,4
   + Classic_commodity_outflow_1,0,1,4,4
   - Classic_commodity_inflow_0,0,0,3,4
   - Classic_commodity_inflow_0,1,0,3,4
   - Classic_commodity_inflow_1,0,0,3,4
   - Classic_commodity_inflow_1,1,0,3,4 <= 0
 SC_lossless_mass_balance_x_node0_time4_vehicle0:
   sc_commodity_outflow_0,0,0,4 + sc_commodity_outflow_0,0,1,4
   - sc_commodity_inflow_0,0,0,3 - sc_commodity_inflow_0,1,0,3 = 0
 SC_lossless_mass_balance_x_node0_time4_vehicle1:
   sc_commodity_outflow_1,0,0,4 + sc_commodity_outflow_1,0,1,4
   - sc_commodity_inflow_1,0,0,3 - sc_commodity_inflow_1,1,0,3 = 0
 mass_balance_x_node0_time5_comm0: Classic_commodity_outflow_0,0,0,5,0
   + Classic_commodity_outflow_0,0,1,5,0
   + Classic_commodity_outflow_1,0,0,5,0
   + Classic_commodity_outflow_1,0,1,5,0
   - Classic_commodity_inflow_0,0,0,4,0
   - Classic_commodity_inflow_0,1,0,4,0
   - Classic_commodity_inflow_1,0,0,4,0
   - Classic_commodity_inflow_1,1,0,4,0 <= 0
 mass_balance_x_node0_time5_comm1: Classic_commodity_outflow_0,0,0,5,1
   + Classic_commodity_outflow_0,0,1,5,1
   + Classic_commodity_outflow_1,0,0,5,1
   + Classic_commodity_outflow_1,0,1,5,1
   - Classic_commodity_inflow_0,0,0,4,1
   - Classic_commodity_inflow_0,1,0,4,1
   - Classic_commodity_inflow_1,0,0,4,1
   - Classic_commodity_inflow_1,1,0,4,1 <= 0
 mass_balance_x_node0_time5_comm2: Classic_commodity_outflow_0,0,0,5,2
   + Classic_commodity_outflow_0,0,1,5,2
   + Classic_commodity_outflow_1,0,0,5,2
   + Classic_commodity_outflow_1,0,1,5,2
   - Classic_commodity_inflow_0,0,0,4,2
   - Classic_commodity_inflow_0,1,0,4,2
   - Classic_commodity_inflow_1,0,0,4,2
   - Classic_commodity_inflow_1,1,0,4,2 <= 0
 mass_balance_x_node0_time5_comm3: Classic_commodity_outflow_0,0,0,5,3
   + Classic_commodity_outflow_0,0,1,5,3
   + Classic_commodity_outflow_1,0,0,5,3
   + Classic_commodity_outflow_1,0,1,5,3
   - Classic_commodity_inflow_0,0,0,4,3
   - Classic_commodity_inflow_0,1,0,4,3
   - Classic_commodity_inflow_1,0,0,4,3
   - Classic_commodity_inflow_1,1,0,4,3 <= 0
 mass_balance_x_node0_time5_comm4: Classic_commodity_outflow_0,0,0,5,4
   + Classic_commodity_outflow_0,0,1,5,4
   + Classic_commodity_outflow_1,0,0,5,4
   + Classic_commodity_outflow_1,0,1,5,4
   - Classic_commodity_inflow_0,0,0,4,4
   - Classic_commodity_inflow_0,1,0,4,4
   - Classic_commodity_inflow_1,0,0,4,4
   - Classic_commodity_inflow_1,1,0,4,4 <= 0
 SC_lossless_mass_balance_x_node0_time5_vehicle0:
   sc_commodity_outflow_0,0,0,5 + sc_commodity_outflow_0,0,1,5
   - sc_commodity_inflow_0,0,0,4 - sc_commodity_inflow_0,1,0,4 = 0
 SC_lossless_mass_balance_x_node0_time5_vehicle1:
   sc_commodity_outflow_1,0,0,5 + sc_commodity_outflow_1,0,1,5
   - sc_commodity_inflow_1,0,0,4 - sc_commodity_inflow_1,1,0,4 = 0
 mass_balance_x_node0_time6_comm0: Classic_commodity_outflow_0,0,0,6,0
   + Classic_commodity_outflow_0,0,1,6,0
   + Classic_commodity_outflow_1,0,0,6,0
   + Classic_commodity_outflow_1,0,1,6,0
   - Classic_commodity_inflow_0,0,0,5,0
   - Classic_commodity_inflow_0,1,0,5,0
   - Classic_commodity_inflow_1,0,0,5,0
   - Classic_commodity_inflow_1,1,0,5,0 <= 0
 mass_balance_x_node0_time6_comm1: Classic_commodity_outflow_0,0,0,6,1
   + Classic_commodity_outflow_0,0,1,6,1
   + Classic_commodity_outflow_1,0,0,6,1
   + Classic_commodity_outflow_1,0,1,6,1
   - Classic_commodity_inflow_0,0,0,5,1
   - Classic_commodity_inflow_0,1,0,5,1
   - Classic_commodity_inflow_1,0,0,5,1
   - Classic_commodity_inflow_1,1,0,5,1 <= 0
 mass_balance_x_node0_time6_comm2: Classic_commodity_outflow_0,0,0,6,2
   + Classic_commodity_outflow_0,0,1,6,2
   + Classic_commodity_outflow_1,0,0,6,2
   + Classic_commodity_outflow_1,0,1,6,2
   - Classic_commodity_inflow_0,0,0,5,2
   - Classic_commodity_inflow_0,1,0,5,2
   - Classic_commodity_inflow_1,0,0,5,2
   - Classic_commodity_inflow_1,1,0,5,2 <= 0
 mass_balance_x_node0_time6_comm3: Classic_commodity_outflow_0,0,0,6,3
   + Classic_commodity_outflow_0,0,1,6,3
   + Classic_commodity_outflow_1,0,0,6,3
   + Classic_commodity_outflow_1,0,1,6,3
   - Classic_commodity_inflow_0,0,0,5,3
   - Classic_commodity_inflow_0,1,0,5,3
   - Classic_commodity_inflow_1,0,0,5,3
   - Classic_commodity_inflow_1,1,0,5,3 <= 0
 mass_balance_x_node0_time6_comm4: Classic_commodity_outflow_0,0,0,6,4
   + Classic_commodity_outflow_0,0,1,6,4
   + Classic_commodity_outflow_1,0,0,6,4
   + Classic_commodity_outflow_1,0,1,6,4
   - Classic_commodity_inflow_0,0,0,5,4
   - Classic_commodity_inflow_0,1,0,5,4
   - Classic_commodity_inflow_1,0,0,5,4
   - Classic_commodity_inflow_1,1,0,5,4 <= 0
 SC_lossless_mass_balance_x_node0_time6_vehicle0:
   sc_commodity_outflow_0,0,0,6 + sc_commodity_outflow_0,0,1,6
   - sc_commodity_inflow_0,0,0,5 - sc_commodity_inflow_0,1,0,5 = 0
 SC_lossless_mass_balance_x_node0_time6_vehicle1:
   sc_commodity_outflow_1,0,0,6 + sc_commodity_outflow_1,0,1,6
   - sc_commodity_inflow_1,0,0,5 - sc_commodity_inflow_1,1,0,5 = 0
 mass_balance_x_node0_time7_comm0: Classic_commodity_outflow_0,0,0,7,0
   + Classic_commodity_outflow_0,0,1,7,0
   + Classic_commodity_outflow_1,0,0,7,0
   + Classic_commodity_outflow_1,0,1,7,0
   - Classic_commodity_inflow_0,0,0,6,0
   - Classic_commodity_inflow_0,1,0,6,0
   - Classic_commodity_inflow_1,0,0,6,0
   - Classic_commodity_inflow_1,1,0,6,0 <= 0
 mass_balance_x_node0_time7_comm1: Classic_commodity_outflow_0,0,0,7,1
   + Classic_commodity_outflow_0,0,1,7,1
   + Classic_commodity_outflow_1,0,0,7,1
   + Classic_commodity_outflow_1,0,1,7,1
   - Classic_commodity_inflow_0,0,0,6,1
   - Classic_commodity_inflow_0,1,0,6,1
   - Classic_commodity_inflow_1,0,0,6,1
   - Classic_commodity_inflow_1,1,0,6,1 <= 0
 mass_balance_x_node0_time7_comm2: Classic_commodity_outflow_0,0,0,7,2
   + Classic_commodity_outflow_0,0,1,7,2
   + Classic_commodity_outflow_1,0,0,7,2
   + Classic_commodity_outflow_1,0,1,7,2
   - Classic_commodity_inflow_0,0,0,6,2
   - Classic_commodity_inflow_0,1,0,6,2
   - Classic_commodity_inflow_1,0,0,6,2
   - Classic_commodity_inflow_1,1,0,6,2 <= 0
 mass_balance_x_node0_time7_comm3: Classic_commodity_outflow_0,0,0,7,3
   + Classic_commodity_outflow_0,0,1,7,3
   + Classic_commodity_outflow_1,0,0,7,3
   + Classic_commodity_outflow_1,0,1,7,3
   - Classic_commodity_inflow_0,0,0,6,3
   - Classic_commodity_inflow_0,1,0,6,3
   - Classic_commodity_inflow_1,0,0,6,3
   - Classic_commodity_inflow_1,1,0,6,3 <= 0
 mass_balance_x_node0_time7_comm4: Classic_commodity_outflow_0,0,0,7,4
   + Classic_commodity_outflow_0,0,1,7,4
   + Classic_commodity_outflow_1,0,0,7,4
   + Classic_commodity_outflow_1,0,1,7,4
   - Classic_commodity_inflow_0,0,0,6,4
   - Classic_commodity_inflow_0,1,0,6,4
   - Classic_commodity_inflow_1,0,0,6,4
   - Classic_commodity_inflow_1,1,0,6,4 <= 0
 SC_lossless_mass_balance_x_node0_time7_vehicle0:
   sc_commodity_outflow_0,0,0,7 + sc_commodity_outflow_0,0,1,7
   - sc_commodity_inflow_0,0,0,6 - sc_commodity_inflow_0,1,0,6 = 0
 SC_lossless_mass_balance_x_node0_time7_vehicle1:
   sc_commodity_outflow_1,0,0,7 + sc_commodity_outflow_1,0,1,7
   - sc_commodity_inflow_1,0,0,6 - sc_commodity_inflow_1,1,0,6 = 0
 mass_balance_x_node0_time8_comm0: Classic_commodity_outflow_0,0,0,8,0
   + Classic_commodity_outflow_0,0,1,8,0
   + Classic_commodity_outflow_1,0,0,8,0
   + Classic_commodity_outflow_1,0,1,8,0
   - Classic_commodity_inflow_0,0,0,7,0
   - Classic_commodity_inflow_0,1,0,7,0
   - Classic_commodity_inflow_1,0,0,7,0
   - Classic_commodity_inflow_1,1,0,7,0 <= 0
 mass_balance_x_node0_time8_comm1: Classic_commodity_outflow_0,0,0,8,1
   + Classic_commodity_outflow_0,0,1,8,1
   + Classic_commodity_outflow_1,0,0,8,1
   + Classic_commodity_outflow_1,0,1,8,1
   - Classic_commodity_inflow_0,0,0,7,1
   - Classic_commodity_inflow_0,1,0,7,1
   - Classic_commodity_inflow_1,0,0,7,1
   - Classic_commodity_inflow_1,1,0,7,1 <= 0
 mass_balance_x_node0_time8_comm2: Classic_commodity_outflow_0,0,0,8,2
   + Classic_commodity_outflow_0,0,1,8,2
   + Classic_commodity_outflow_1,0,0,8,2
   + Classic_commodity_outflow_1,0,1,8,2
   - Classic_commodity_inflow_0,0,0,7,2
   - Classic_commodity_inflow_0,1,0,7,2
   - Classic_commodity_inflow_1,0,0,7,2
   - Classic_commodity_inflow_1,1,0,7,2 <= 0
 mass_balance_x_node0_time8_comm3: Classic_commodity_outflow_0,0,0,8,3
   + Classic_commodity_outflow_0,0,1,8,3
   + Classic_commodity_outflow_1,0,0,8,3
   + Classic_commodity_outflow_1,0,1,8,3
   - Classic_commodity_inflow_0,0,0,7,3
   - Classic_commodity_inflow_0,1,0,7,3
   - Classic_commodity_inflow_1,0,0,7,3
   - Classic_commodity_inflow_1,1,0,7,3 <= 0
 mass_balance_x_node0_time8_comm4: Classic_commodity_outflow_0,0,0,8,4
   + Classic_commodity_outflow_0,0,1,8,4
   + Classic_commodity_outflow_1,0,0,8,4
   + Classic_commodity_outflow_1,0,1,8,4
   - Classic_commodity_inflow_0,0,0,7,4
   - Classic_commodity_inflow_0,1,0,7,4
   - Classic_commodity_inflow_1,0,0,7,4
   - Classic_commodity_inflow_1,1,0,7,4 <= 0
 SC_lossless_mass_balance_x_node0_time8_vehicle0:
   sc_commodity_outflow_0,0,0,8 + sc_commodity_outflow_0,0,1,8
   - sc_commodity_inflow_0,0,0,7 - sc_commodity_inflow_0,1,0,7 = 0
 SC_lossless_mass_balance_x_node0_time8_vehicle1:
   sc_commodity_outflow_1,0,0,8 + sc_commodity_outflow_1,0,1,8
   - sc_commodity_inflow_1,0,0,7 - sc_commodity_inflow_1,1,0,7 = 0
 mass_balance_x_node0_time9_comm0: Classic_commodity_outflow_0,0,0,9,0
   + Classic_commodity_outflow_0,0,1,9,0
   + Classic_commodity_outflow_1,0,0,9,0
   + Classic_commodity_outflow_1,0,1,9,0
   - Classic_commodity_inflow_0,0,0,8,0
   - Classic_commodity_inflow_0,1,0,8,0
   - Classic_commodity_inflow_1,0,0,8,0
   - Classic_commodity_inflow_1,1,0,8,0 <= 0
 mass_balance_x_node0_time9_comm1: Classic_commodity_outflow_0,0,0,9,1
   + Classic_commodity_outflow_0,0,1,9,1
   + Classic_commodity_outflow_1,0,0,9,1
   + Classic_commodity_outflow_1,0,1,9,1
   - Classic_commodity_inflow_0,0,0,8,1
   - Classic_commodity_inflow_0,1,0,8,1
   - Classic_commodity_inflow_1,0,0,8,1
   - Classic_commodity_inflow_1,1,0,8,1 <= 0
 mass_balance_x_node0_time9_comm2: Classic_commodity_outflow_0,0,0,9,2
   + Classic_commodity_outflow_0,0,1,9,2
   + Classic_commodity_outflow_1,0,0,9,2
   + Classic_commodity_outflow_1,0,1,9,2
   - Classic_commodity_inflow_0,0,0,8,2
   - Classic_commodity_inflow_0,1,0,8,2
   - Classic_commodity_inflow_1,0,0,8,2
   - Classic_commodity_inflow_1,1,0,8,2 <= 0
 mass_balance_x_node0_time9_comm3: Classic_commodity_outflow_0,0,0,9,3
   + Classic_commodity_outflow_0,0,1,9,3
   + Classic_commodity_outflow_1,0,0,9,3
   + Classic_commodity_outflow_1,0,1,9,3
   - Classic_commodity_inflow_0,0,0,8,3
   - Classic_commodity_inflow_0,1,0,8,3
   - Classic_commodity_inflow_1,0,0,8,3
   - Classic_commodity_inflow_1,1,0,8,3 <= 0
 mass_balance_x_node0_time9_comm4: Classic_commodity_outflow_0,0,0,9,4
   + Classic_commodity_outflow_0,0,1,9,4
   + Classic_commodity_outflow_1,0,0,9,4
   + Classic_commodity_outflow_1,0,1,9,4
   - Classic_commodity_inflow_0,0,0,8,4
   - Classic_commodity_inflow_0,1,0,8,4
   - Classic_commodity_inflow_1,0,0,8,4
   - Classic_commodity_inflow_1,1,0,8,4 <= 0
 SC_lossless_mass_balance_x_node0_time9_vehicle0:
   sc_commodity_outflow_0,0,0,9 + sc_commodity_outflow_0,0,1,9
   - sc_commodity_inflow_0,0,0,8 - sc_commodity_inflow_0,1,0,8 = 0
 SC_lossless_mass_balance_x_node0_time9_vehicle1:
   sc_commodity_outflow_1,0,0,9 + sc_commodity_outflow_1,0,1,9
   - sc_commodity_inflow_1,0,0,8 - sc_commodity_inflow_1,1,0,8 = 0
 mass_balance_x_node0_time10_comm0: Classic_commodity_outflow_0,0,0,10,0
   + Classic_commodity_outflow_0,0,1,10,0
   + Classic_commodity_outflow_1,0,0,10,0
   + Classic_commodity_outflow_1,0,1,10,0
   - Classic_commodity_inflow_0,0,0,9,0
   - Classic_commodity_inflow_0,1,0,9,0
   - Classic_commodity_inflow_1,0,0,9,0
   - Classic_commodity_inflow_1,1,0,9,0 <= 0
 mass_balance_x_node0_time10_comm1: Classic_commodity_outflow_0,0,0,10,1
   + Classic_commodity_outflow_0,0,1,10,1
   + Classic_commodity_outflow_1,0,0,10,1
   + Classic_commodity_outflow_1,0,1,10,1
   - Classic_commodity_inflow_0,0,0,9,1
   - Classic_commodity_inflow_0,1,0,9,1
   - Classic_commodity_inflow_1,0,0,9,1
   - Classic_commodity_inflow_1,1,0,9,1 <= 0
 mass_balance_x_node0_time10_comm2: Classic_commodity_outflow_0,0,0,10,2
   + Classic_commodity_outflow_0,0,1,10,2
   + Classic_commodity_outflow_1,0,0,10,2
   + Classic_commodity_outflow_1,0,1,10,2
   - Classic_commodity_inflow_0,0,0,9,2
   - Classic_commodity_inflow_0,1,0,9,2
   - Classic_commodity_inflow_1,0,0,9,2
   - Classic_commodity_inflow_1,1,0,9,2 <= 0
 mass_balance_x_node0_time10_comm3: Classic_commodity_outflow_0,0,0,10,3
   + Classic_commodity_outflow_0,0,1,10,3
   + Classic_commodity_outflow_1,0,0,10,3
   + Classic_commodity_outflow_1,0,1,10,3
   - Classic_commodity_inflow_0,0,0,9,3
   - Classic_commodity_inflow_0,1,0,9,3
   - Classic_commodity_inflow_1,0,0,9,3
   - Classic_commodity_inflow_1,1,0,9,3 <= 0
 mass_balance_x_node0_time10_comm4: Classic_commodity_outflow_0,0,0,10,4
   + Classic_commodity_outflow_0,0,1,10,4
   + Classic_commodity_outflow_1,0,0,10,4
   + Classic_commodity_outflow_1,0,1,10,4
   - Classic_commodity_inflow_0,0,0,9,4
   - Classic_commodity_inflow_0,1,0,9,4
   - Classic_commodity_inflow_1,0,0,9,4
   - Classic_commodity_inflow_1,1,0,9,4 <= 0
 SC_lossless_mass_balance_x_node0_time10_vehicle0:
   sc_commodity_outflow_0,0,0,10 + sc_commodity_outflow_0,0,1,10
   - sc_commodity_inflow_0,0,0,9 - sc_commodity_inflow_0,1,0,9 = 0
 SC_lossless_mass_balance_x_node0_time10_vehicle1:
   sc_commodity_outflow_1,0,0,10 + sc_commodity_outflow_1,0,1,10
   - sc_commodity_inflow_1,0,0,9 - sc_commodity_inflow_1,1,0,9 = 0
 mass_balance_x_node0_time11_comm0: - Classic_commodity_inflow_0,0,0,10,0
   - Classic_commodity_inflow_0,1,0,10,0
   - Classic_commodity_inflow_1,0,0,10,0
   - Classic_commodity_inflow_1,1,0,10,0 <= -3
 mass_balance_x_node0_time11_comm1: - Classic_commodity_inflow_0,0,0,10,1
   - Classic_commodity_inflow_0,1,0,10,1
   - Classic_commodity_inflow_1,0,0,10,1
   - Classic_commodity_inflow_1,1,0,10,1 <= 0
 mass_balance_x_node0_time11_comm2: - Classic_commodity_inflow_0,0,0,10,2
   - Classic_commodity_inflow_0,1,0,10,2
   - Classic_commodity_inflow_1,0,0,10,2
   - Classic_commodity_inflow_1,1,0,10,2 <= 0
 mass_balance_x_node0_time11_comm3: - Classic_commodity_inflow_0,0,0,10,3
   - Classic_commodity_inflow_0,1,0,10,3
   - Classic_commodity_inflow_1,0,0,10,3
   - Classic_commodity_inflow_1,1,0,10,3 <= -110
 mass_balance_x_node0_time11_comm4: - Classic_commodity_inflow_0,0,0,10,4
   - Classic_commodity_inflow_0,1,0,10,4
   - Classic_commodity_inflow_1,0,0,10,4
   - Classic_commodity_inflow_1,1,0,10,4 <= 0
 SC_mass_balance_x_node0_time11_vehicle0: - sc_commodity_inflow_0,0,0,10
   - sc_commodity_inflow_0,1,0,10 <= 0
 SC_mass_balance_x_node0_time11_vehicle1: - sc_commodity_inflow_1,0,0,10
   - sc_commodity_inflow_1,1,0,10 <= 0
 mass_balance_x_node1_time0_comm0: Classic_commodity_outflow_0,1,0,0,0
   + Classic_commodity_outflow_0,1,1,0,0
   + Classic_commodity_outflow_0,1,2,0,0
   + Classic_commodity_outflow_1,1,0,0,0
   + Classic_commodity_outflow_1,1,1,0,0
   + Classic_commodity_outflow_1,1,2,0,0 <= 3
 mass_balance_x_node1_time0_comm1: Classic_commodity_outflow_0,1,0,0,1
   + Classic_commodity_outflow_0,1,1,0,1
   + Classic_commodity_outflow_0,1,2,0,1
   + Classic_commodity_outflow_1,1,0,0,1
   + Classic_commodity_outflow_1,1,1,0,1
   + Classic_commodity_outflow_1,1,2,0,1 <= 99999
 mass_balance_x_node1_time0_comm2: Classic_commodity_outflow_0,1,0,0,2
   + Classic_commodity_outflow_0,1,1,0,2
   + Classic_commodity_outflow_0,1,2,0,2
   + Classic_commodity_outflow_1,1,0,0,2
   + Classic_commodity_outflow_1,1,1,0,2
   + Classic_commodity_outflow_1,1,2,0,2 <= 99999
 mass_balance_x_node1_time0_comm3: Classic_commodity_outflow_0,1,0,0,3
   + Classic_commodity_outflow_0,1,1,0,3
   + Classic_commodity_outflow_0,1,2,0,3
   + Classic_commodity_outflow_1,1,0,0,3
   + Classic_commodity_outflow_1,1,1,0,3
   + Classic_commodity_outflow_1,1,2,0,3 <= 0
 mass_balance_x_node1_time0_comm4: Classic_commodity_outflow_0,1,0,0,4
   + Classic_commodity_outflow_0,1,1,0,4
   + Classic_commodity_outflow_0,1,2,0,4
   + Classic_commodity_outflow_1,1,0,0,4
   + Classic_commodity_outflow_1,1,1,0,4
   + Classic_commodity_outflow_1,1,2,0,4 <= 9.9999999999e+10
 SC_lossless_mass_balance_x_node1_time0_vehicle0:
   sc_commodity_outflow_0,1,0,0 + sc_commodity_outflow_0,1,1,0
   + sc_commodity_outflow_0,1,2,0 = 1
 SC_lossless_mass_balance_x_node1_time0_vehicle1:
   sc_commodity_outflow_1,1,0,0 + sc_commodity_outflow_1,1,1,0
   + sc_commodity_outflow_1,1,2,0 = 1
 mass_balance_x_node1_time1_comm0: Classic_commodity_outflow_0,1,0,1,0
   + Classic_commodity_outflow_0,1,1,1,0
   + Classic_commodity_outflow_0,1,2,1,0
   + Classic_commodity_outflow_1,1,0,1,0
   + Classic_commodity_outflow_1,1,1,1,0
   + Classic_commodity_outflow_1,1,2,1,0
   - Classic_commodity_inflow_0,0,1,0,0
   - Classic_commodity_inflow_0,1,1,0,0
   - Classic_commodity_inflow_1,0,1,0,0
   - Classic_commodity_inflow_1,1,1,0,0 <= 0
 mass_balance_x_node1_time1_comm1: Classic_commodity_outflow_0,1,0,1,1
   + Classic_commodity_outflow_0,1,1,1,1
   + Classic_commodity_outflow_0,1,2,1,1
   + Classic_commodity_outflow_1,1,0,1,1
   + Classic_commodity_outflow_1,1,1,1,1
   + Classic_commodity_outflow_1,1,2,1,1
   - Classic_commodity_inflow_0,0,1,0,1
   - Classic_commodity_inflow_0,1,1,0,1
   - Classic_commodity_inflow_1,0,1,0,1
   - Classic_commodity_inflow_1,1,1,0,1 <= 0
 mass_balance_x_node1_time1_comm2: Classic_commodity_outflow_0,1,0,1,2
   + Classic_commodity_outflow_0,1,1,1,2
   + Classic_commodity_outflow_0,1,2,1,2
   + Classic_commodity_outflow_1,1,0,1,2
   + Classic_commodity_outflow_1,1,1,1,2
   + Classic_commodity_outflow_1,1,2,1,2
   - Classic_commodity_inflow_0,0,1,0,2
   - Classic_commodity_inflow_0,1,1,0,2
   - Classic_commodity_inflow_1,0,1,0,2
   - Classic_commodity_inflow_1,1,1,0,2 <= 0
 mass_balance_x_node1_time1_comm3: Classic_commodity_outflow_0,1,0,1,3
   + Classic_commodity_outflow_0,1,1,1,3
   + Classic_commodity_outflow_0,1,2,1,3
   + Classic_commodity_outflow_1,1,0,1,3
   + Classic_commodity_outflow_1,1,1,1,3
   + Classic_commodity_outflow_1,1,2,1,3
   - Classic_commodity_inflow_0,0,1,0,3
   - Classic_commodity_inflow_0,1,1,0,3
   - Classic_commodity_inflow_1,0,1,0,3
   - Classic_commodity_inflow_1,1,1,0,3 <= 0
 mass_balance_x_node1_time1_comm4: Classic_commodity_outflow_0,1,0,1,4
   + Classic_commodity_outflow_0,1,1,1,4
   + Classic_commodity_outflow_0,1,2,1,4
   + Classic_commodity_outflow_1,1,0,1,4
   + Classic_commodity_outflow_1,1,1,1,4
   + Classic_commodity_outflow_1,1,2,1,4
   - Classic_commodity_inflow_0,0,1,0,4
   - Classic_commodity_inflow_0,1,1,0,4
   - Classic_commodity_inflow_1,0,1,0,4
   - Classic_commodity_inflow_1,1,1,0,4 <= 0
 SC_lossless_mass_balance_x_node1_time1_vehicle0:
   sc_commodity_outflow_0,1,0,1 + sc_commodity_outflow_0,1,1,1
   + sc_commodity_outflow_0,1,2,1 - sc_commodity_inflow_0,0,1,0
   - sc_commodity_inflow_0,1,1,0 = 0
 SC_lossless_mass_balance_x_node1_time1_vehicle1:
   sc_commodity_outflow_1,1,0,1 + sc_commodity_outflow_1,1,1,1
   + sc_commodity_outflow_1,1,2,1 - sc_commodity_inflow_1,0,1,0
   - sc_commodity_inflow_1,1,1,0 = 0
 mass_balance_x_node1_time2_comm0: Classic_commodity_outflow_0,1,0,2,0
   + Classic_commodity_outflow_0,1,1,2,0
   + Classic_commodity_outflow_0,1,2,2,0
   + Classic_commodity_outflow_1,1,0,2,0
   + Classic_commodity_outflow_1,1,1,2,0
   + Classic_commodity_outflow_1,1,2,2,0
   - Classic_commodity_inflow_0,0,1,1,0
   - Classic_commodity_inflow_0,1,1,1,0
   - Classic_commodity_inflow_1,0,1,1,0
   - Classic_commodity_inflow_1,1,1,1,0 <= 0
 mass_balance_x_node1_time2_comm1: Classic_commodity_outflow_0,1,0,2,1
   + Classic_commodity_outflow_0,1,1,2,1
   + Classic_commodity_outflow_0,1,2,2,1
   + Classic_commodity_outflow_1,1,0,2,1
   + Classic_commodity_outflow_1,1,1,2,1
   + Classic_commodity_outflow_1,1,2,2,1
   - Classic_commodity_inflow_0,0,1,1,1
   - Classic_commodity_inflow_0,1,1,1,1
   - Classic_commodity_inflow_1,0,1,1,1
   - Classic_commodity_inflow_1,1,1,1,1 <= 0
 mass_balance_x_node1_time2_comm2: Classic_commodity_outflow_0,1,0,2,2
   + Classic_commodity_outflow_0,1,1,2,2
   + Classic_commodity_outflow_0,1,2,2,2
   + Classic_commodity_outflow_1,1,0,2,2
   + Classic_commodity_outflow_1,1,1,2,2
   + Classic_commodity_outflow_1,1,2,2,2
   - Classic_commodity_inflow_0,0,1,1,2
   - Classic_commodity_inflow_0,1,1,1,2
   - Classic_commodity_inflow_1,0,1,1,2
   - Classic_commodity_inflow_1,1,1,1,2 <= 0
 mass_balance_x_node1_time2_comm3: Classic_commodity_outflow_0,1,0,2,3
   + Classic_commodity_outflow_0,1,1,2,3
   + Classic_commodity_outflow_0,1,2,2,3
   + Classic_commodity_outflow_1,1,0,2,3
   + Classic_commodity_outflow_1,1,1,2,3
   + Classic_commodity_outflow_1,1,2,2,3
   - Classic_commodity_inflow_0,0,1,1,3
   - Classic_commodity_inflow_0,1,1,1,3
   - Classic_commodity_inflow_1,0,1,1,3
   - Classic_commodity_inflow_1,1,1,1,3 <= 0
 mass_balance_x_node1_time2_comm4: Classic_commodity_outflow_0,1,0,2,4
   + Classic_commodity_outflow_0,1,1,2,4
   + Classic_commodity_outflow_0,1,2,2,4
   + Classic_commodity_outflow_1,1,0,2,4
   + Classic_commodity_outflow_1,1,1,2,4
   + Classic_commodity_outflow_1,1,2,2,4
   - Classic_commodity_inflow_0,0,1,1,4
   - Classic_commodity_inflow_0,1,1,1,4
   - Classic_commodity_inflow_1,0,1,1,4
   - Classic_commodity_inflow_1,1,1,1,4 <= 0
 SC_lossless_mass_balance_x_node1_time2_vehicle0:
   sc_commodity_outflow_0,1,0,2 + sc_commodity_outflow_0,1,1,2
   + sc_commodity_outflow_0,1,2,2 - sc_commodity_inflow_0,0,1,1
   - sc_commodity_inflow_0,1,1,1 = 0
 SC_lossless_mass_balance_x_node1_time2_vehicle1:
   sc_commodity_outflow_1,1,0,2 + sc_commodity_outflow_1,1,1,2
   + sc_commodity_outflow_1,1,2,2 - sc_commodity_inflow_1,0,1,1
   - sc_commodity_inflow_1,1,1,1 = 0
 mass_balance_x_node1_time3_comm0: Classic_commodity_outflow_0,1,0,3,0
   + Classic_commodity_outflow_0,1,1,3,0
   + Classic_commodity_outflow_0,1,2,3,0
   + Classic_commodity_outflow_1,1,0,3,0
   + Classic_commodity_outflow_1,1,1,3,0
   + Classic_commodity_outflow_1,1,2,3,0
   - Classic_commodity_inflow_0,0,1,2,0
   - Classic_commodity_inflow_0,1,1,2,0
   - Classic_commodity_inflow_0,2,1,0,0
   - Classic_commodity_inflow_1,0,1,2,0
   - Classic_commodity_inflow_1,1,1,2,0
   - Classic_commodity_inflow_1,2,1,0,0 <= 0
 mass_balance_x_node1_time3_comm1: Classic_commodity_outflow_0,1,0,3,1
   + Classic_commodity_outflow_0,1,1,3,1
   + Classic_commodity_outflow_0,1,2,3,1
   + Classic_commodity_outflow_1,1,0,3,1
   + Classic_commodity_outflow_1,1,1,3,1
   + Classic_commodity_outflow_1,1,2,3,1
   - Classic_commodity_inflow_0,0,1,2,1
   - Classic_commodity_inflow_0,1,1,2,1
   - Classic_commodity_inflow_0,2,1,0,1
   - Classic_commodity_inflow_1,0,1,2,1
   - Classic_commodity_inflow_1,1,1,2,1
   - Classic_commodity_inflow_1,2,1,0,1 <= 0
 mass_balance_x_node1_time3_comm2: Classic_commodity_outflow_0,1,0,3,2
   + Classic_commodity_outflow_0,1,1,3,2
   + Classic_commodity_outflow_0,1,2,3,2
   + Classic_commodity_outflow_1,1,0,3,2
   + Classic_commodity_outflow_1,1,1,3,2
   + Classic_commodity_outflow_1,1,2,3,2
   - Classic_commodity_inflow_0,0,1,2,2
   - Classic_commodity_inflow_0,1,1,2,2
   - Classic_commodity_inflow_0,2,1,0,2
   - Classic_commodity_inflow_1,0,1,2,2
   - Classic_commodity_inflow_1,1,1,2,2
   - Classic_commodity_inflow_1,2,1,0,2 <= 0
 mass_balance_x_node1_time3_comm3: Classic_commodity_outflow_0,1,0,3,3
   + Classic_commodity_outflow_0,1,1,3,3
   + Classic_commodity_outflow_0,1,2,3,3
   + Classic_commodity_outflow_1,1,0,3,3
   + Classic_commodity_outflow_1,1,1,3,3
   + Classic_commodity_outflow_1,1,2,3,3
   - Classic_commodity_inflow_0,0,1,2,3
   - Classic_commodity_inflow_0,1,1,2,3
   - Classic_commodity_inflow_0,2,1,0,3
   - Classic_commodity_inflow_1,0,1,2,3
   - Classic_commodity_inflow_1,1,1,2,3
   - Classic_commodity_inflow_1,2,1,0,3 <= 0
 mass_balance_x_node1_time3_comm4: Classic_commodity_outflow_0,1,0,3,4
   + Classic_commodity_outflow_0,1,1,3,4
   + Classic_commodity_outflow_0,1,2,3,4
   + Classic_commodity_outflow_1,1,0,3,4
   + Classic_commodity_outflow_1,1,1,3,4
   + Classic_commodity_outflow_1,1,2,3,4
   - Classic_commodity_inflow_0,0,1,2,4
   - Classic_commodity_inflow_0,1,1,2,4
   - Classic_commodity_inflow_0,2,1,0,4
   - Classic_commodity_inflow_1,0,1,2,4
   - Classic_commodity_inflow_1,1,1,2,4
   - Classic_commodity_inflow_1,2,1,0,4 <= 0
 SC_lossless_mass_balance_x_node1_time3_vehicle0:
   sc_commodity_outflow_0,1,0,3 + sc_commodity_outflow_0,1,1,3
   + sc_commodity_outflow_0,1,2,3 - sc_commodity_inflow_0,0,1,2
   - sc_commodity_inflow_0,1,1,2 - sc_commodity_inflow_0,2,1,0 = 0
 SC_lossless_mass_balance_x_node1_time3_vehicle1:
   sc_commodity_outflow_1,1,0,3 + sc_commodity_outflow_1,1,1,3
   + sc_commodity_outflow_1,1,2,3 - sc_commodity_inflow_1,0,1,2
   - sc_commodity_inflow_1,1,1,2 - sc_commodity_inflow_1,2,1,0 = 0
 mass_balance_x_node1_time4_comm0: Classic_commodity_outflow_0,1,0,4,0
   + Classic_commodity_outflow_0,1,1,4,0
   + Classic_commodity_outflow_0,1,2,4,0
   + Classic_commodity_outflow_1,1,0,4,0
   + Classic_commodity_outflow_1,1,1,4,0
   + Classic_commodity_outflow_1,1,2,4,0
   - Classic_commodity_inflow_0,0,1,3,0
   - Classic_commodity_inflow_0,1,1,3,0
   - Classic_commodity_inflow_0,2,1,1,0
   - Classic_commodity_inflow_1,0,1,3,0
   - Classic_commodity_inflow_1,1,1,3,0
   - Classic_commodity_inflow_1,2,1,1,0 <= 0
 mass_balance_x_node1_time4_comm1: Classic_commodity_outflow_0,1,0,4,1
   + Classic_commodity_outflow_0,1,1,4,1
   + Classic_commodity_outflow_0,1,2,4,1
   + Classic_commodity_outflow_1,1,0,4,1
   + Classic_commodity_outflow_1,1,1,4,1
   + Classic_commodity_outflow_1,1,2,4,1
   - Classic_commodity_inflow_0,0,1,3,1
   - Classic_commodity_inflow_0,1,1,3,1
   - Classic_commodity_inflow_0,2,1,1,1
   - Classic_commodity_inflow_1,0,1,3,1
   - Classic_commodity_inflow_1,1,1,3,1
   - Classic_commodity_inflow_1,2,1,1,1 <= 0
 mass_balance_x_node1_time4_comm2: Classic_commodity_outflow_0,1,0,4,2
   + Classic_commodity_outflow_0,1,1,4,2
   + Classic_commodity_outflow_0,1,2,4,2
   + Classic_commodity_outflow_1,1,0,4,2
   + Classic_commodity_outflow_1,1,1,4,2
   + Classic_commodity_outflow_1,1,2,4,2
   - Classic_commodity_inflow_0,0,1,3,2
   - Classic_commodity_inflow_0,1,1,3,2
   - Classic_commodity_inflow_0,2,1,1,2
   - Classic_commodity_inflow_1,0,1,3,2
   - Classic_commodity_inflow_1,1,1,3,2
   - Classic_commodity_inflow_1,2,1,1,2 <= 0
 mass_balance_x_node1_time4_comm3: Classic_commodity_outflow_0,1,0,4,3
   + Classic_commodity_outflow_0,1,1,4,3
   + Classic_commodity_outflow_0,1,2,4,3
   + Classic_commodity_outflow_1,1,0,4,3
   + Classic_commodity_outflow_1,1,1,4,3
   + Classic_commodity_outflow_1,1,2,4,3
   - Classic_commodity_inflow_0,0,1,3,3
   - Classic_commodity_inflow_0,1,1,3,3
   - Classic_commodity_inflow_0,2,1,1,3
   - Classic_commodity_inflow_1,0,1,3,3
   - Classic_commodity_inflow_1,1,1,3,3
   - Classic_commodity_inflow_1,2,1,1,3 <= 0
 mass_balance_x_node1_time4_comm4: Classic_commodity_outflow_0,1,0,4,4
   + Classic_commodity_outflow_0,1,1,4,4
   + Classic_commodity_outflow_0,1,2,4,4
   + Classic_commodity_outflow_1,1,0,4,4
   + Classic_commodity_outflow_1,1,1,4,4
   + Classic_commodity_outflow_1,1,2,4,4
   - Classic_commodity_inflow_0,0,1,3,4
   - Classic_commodity_inflow_0,1,1,3,4
   - Classic_commodity_inflow_0,2,1,1,4
   - Classic_commodity_inflow_1,0,1,3,4
   - Classic_commodity_inflow_1,1,1,3,4
   - Classic_commodity_inflow_1,2,1,1,4 <= 0
 SC_lossless_mass_balance_x_node1_time4_vehicle0:
   sc_commodity_outflow_0,1,0,4 + sc_commodity_outflow_0,1,1,4
   + sc_commodity_outflow_0,1,2,4 - sc_commodity_inflow_0,0,1,3
   - sc_commodity_inflow_0,1,1,3 - sc_commodity_inflow_0,2,1,1 = 0
 SC_lossless_mass_balance_x_node1_time4_vehicle1:
   sc_commodity_outflow_1,1,0,4 + sc_commodity_outflow_1,1,1,4
   + sc_commodity_outflow_1,1,2,4 - sc_commodity_inflow_1,0,1,3
   - sc_commodity_inflow_1,1,1,3 - sc_commodity_inflow_1,2,1,1 = 0
 mass_balance_x_node1_time5_comm0: Classic_commodity_outflow_0,1,0,5,0
   + Classic_commodity_outflow_0,1,1,5,0
   + Classic_commodity_outflow_0,1,2,5,0
   + Classic_commodity_outflow_1,1,0,5,0
   + Classic_commodity_outflow_1,1,1,5,0
   + Classic_commodity_outflow_1,1,2,5,0
   - Classic_commodity_inflow_0,0,1,4,0
   - Classic_commodity_inflow_0,1,1,4,0
   - Classic_commodity_inflow_0,2,1,2,0
   - Classic_commodity_inflow_1,0,1,4,0
   - Classic_commodity_inflow_1,1,1,4,0
   - Classic_commodity_inflow_1,2,1,2,0 <= 0
 mass_balance_x_node1_time5_comm1: Classic_commodity_outflow_0,1,0,5,1
   + Classic_commodity_outflow_0,1,1,5,1
   + Classic_commodity_outflow_0,1,2,5,1
   + Classic_commodity_outflow_1,1,0,5,1
   + Classic_commodity_outflow_1,1,1,5,1
   + Classic_commodity_outflow_1,1,2,5,1
   - Classic_commodity_inflow_0,0,1,4,1
   - Classic_commodity_inflow_0,1,1,4,1
   - Classic_commodity_inflow_0,2,1,2,1
   - Classic_commodity_inflow_1,0,1,4,1
   - Classic_commodity_inflow_1,1,1,4,1
   - Classic_commodity_inflow_1,2,1,2,1 <= 0
 mass_balance_x_node1_time5_comm2: Classic_commodity_outflow_0,1,0,5,2
   + Classic_commodity_outflow_0,1,1,5,2
   + Classic_commodity_outflow_0,1,2,5,2
   + Classic_commodity_outflow_1,1,0,5,2
   + Classic_commodity_outflow_1,1,1,5,2
   + Classic_commodity_outflow_1,1,2,5,2
   - Classic_commodity_inflow_0,0,1,4,2
   - Classic_commodity_inflow_0,1,1,4,2
   - Classic_commodity_inflow_0,2,1,2,2
   - Classic_commodity_inflow_1,0,1,4,2
   - Classic_commodity_inflow_1,1,1,4,2
   - Classic_commodity_inflow_1,2,1,2,2 <= 0
 mass_balance_x_node1_time5_comm3: Classic_commodity_outflow_0,1,0,5,3
   + Classic_commodity_outflow_0,1,1,5,3
   + Classic_commodity_outflow_0,1,2,5,3
   + Classic_commodity_outflow_1,1,0,5,3
   + Classic_commodity_outflow_1,1,1,5,3
   + Classic_commodity_outflow_1,1,2,5,3
   - Classic_commodity_inflow_0,0,1,4,3
   - Classic_commodity_inflow_0,1,1,4,3
   - Classic_commodity_inflow_0,2,1,2,3
   - Classic_commodity_inflow_1,0,1,4,3
   - Classic_commodity_inflow_1,1,1,4,3
   - Classic_commodity_inflow_1,2,1,2,3 <= 0
 mass_balance_x_node1_time5_comm4: Classic_commodity_outflow_0,1,0,5,4
   + Classic_commodity_outflow_0,1,1,5,4
   + Classic_commodity_outflow_0,1,2,5,4
   + Classic_commodity_outflow_1,1,0,5,4
   + Classic_commodity_outflow_1,1,1,5,4
   + Classic_commodity_outflow_1,1,2,5,4
   - Classic_commodity_inflow_0,0,1,4,4
   - Classic_commodity_inflow_0,1,1,4,4
   - Classic_commodity_inflow_0,2,1,2,4
   - Classic_commodity_inflow_1,0,1,4,4
   - Classic_commodity_inflow_1,1,1,4,4
   - Classic_commodity_inflow_1,2,1,2,4 <= 0
 SC_lossless_mass_balance_x_node1_time5_vehicle0:
   sc_commodity_outflow_0,1,0,5 + sc_commodity_outflow_0,1,1,5
   + sc_commodity_outflow_0,1,2,5 - sc_commodity_inflow_0,0,1,4
   - sc_commodity_inflow_0,1,1,4 - sc_commodity_inflow_0,2,1,2 = 0
 SC_lossless_mass_balance_x_node1_time5_vehicle1:
   sc_commodity_outflow_1,1,0,5 + sc_commodity_outflow_1,1,1,5
   + sc_commodity_outflow_1,1,2,5 - sc_commodity_inflow_1,0,1,4
   - sc_commodity_inflow_1,1,1,4 - sc_commodity_inflow_1,2,1,2 = 0
 mass_balance_x_node1_time6_comm0: Classic_commodity_outflow_0,1,0,6,0
   + Classic_commodity_outflow_0,1,1,6,0
   + Classic_commodity_outflow_0,1,2,6,0
   + Classic_commodity_outflow_1,1,0,6,0
   + Classic_commodity_outflow_1,1,1,6,0
   + Classic_commodity_outflow_1,1,2,6,0
   - Classic_commodity_inflow_0,0,1,5,0
   - Classic_commodity_inflow_0,1,1,5,0
   - Classic_commodity_inflow_0,2,1,3,0
   - Classic_commodity_inflow_1,0,1,5,0
   - Classic_commodity_inflow_1,1,1,5,0
   - Classic_commodity_inflow_1,2,1,3,0 <= 0
 mass_balance_x_node1_time6_comm1: Classic_commodity_outflow_0,1,0,6,1
   + Classic_commodity_outflow_0,1,1,6,1
   + Classic_commodity_outflow_0,1,2,6,1
   + Classic_commodity_outflow_1,1,0,6,1
   + Classic_commodity_outflow_1,1,1,6,1
   + Classic_commodity_outflow_1,1,2,6,1
   - Classic_commodity_inflow_0,0,1,5,1
   - Classic_commodity_inflow_0,1,1,5,1
   - Classic_commodity_inflow_0,2,1,3,1
   - Classic_commodity_inflow_1,0,1,5,1
   - Classic_commodity_inflow_1,1,1,5,1
   - Classic_commodity_inflow_1,2,1,3,1 <= 0
 mass_balance_x_node1_time6_comm2: Classic_commodity_outflow_0,1,0,6,2
   + Classic_commodity_outflow_0,1,1,6,2
   + Classic_commodity_outflow_0,1,2,6,2
   + Classic_commodity_outflow_1,1,0,6,2
   + Classic_commodity_outflow_1,1,1,6,2
   + Classic_commodity_outflow_1,1,2,6,2
   - Classic_commodity_inflow_0,0,1,5,2
   - Classic_commodity_inflow_0,1,1,5,2
   - Classic_commodity_inflow_0,2,1,3,2
   - Classic_commodity_inflow_1,0,1,5,2
   - Classic_commodity_inflow_1,1,1,5,2
   - Classic_commodity_inflow_1,2,1,3,2 <= 0
 mass_balance_x_node1_time6_comm3: Classic_commodity_outflow_0,1,0,6,3
   + Classic_commodity_outflow_0,1,1,6,3
   + Classic_commodity_outflow_0,1,2,6,3
   + Classic_commodity_outflow_1,1,0,6,3
   + Classic_commodity_outflow_1,1,1,6,3
   + Classic_commodity_outflow_1,1,2,6,3
   - Classic_commodity_inflow_0,0,1,5,3
   - Classic_commodity_inflow_0,1,1,5,3
   - Classic_commodity_inflow_0,2,1,3,3
   - Classic_commodity_inflow_1,0,1,5,3
   - Classic_commodity_inflow_1,1,1,5,3
   - Classic_commodity_inflow_1,2,1,3,3 <= 0
 mass_balance_x_node1_time6_comm4: Classic_commodity_outflow_0,1,0,6,4
   + Classic_commodity_outflow_0,1,1,6,4
   + Classic_commodity_outflow_0,1,2,6,4
   + Classic_commodity_outflow_1,1,0,6,4
   + Classic_commodity_outflow_1,1,1,6,4
   + Classic_commodity_outflow_1,1,2,6,4
   - Classic_commodity_inflow_0,0,1,5,4
   - Classic_commodity_inflow_0,1,1,5,4
   - Classic_commodity_inflow_0,2,1,3,4
   - Classic_commodity_inflow_1,0,1,5,4
   - Classic_commodity_inflow_1,1,1,5,4
   - Classic_commodity_inflow_1,2,1,3,4 <= 0
 SC_lossless_mass_balance_x_node1_time6_vehicle0:
   sc_commodity_outflow_0,1,0,6 + sc_commodity_outflow_0,1,1,6
   + sc_commodity_outflow_0,1,2,6 - sc_commodity_inflow_0,0,1,5
   - sc_commodity_inflow_0,1,1,5 - sc_commodity_inflow_0,2,1,3 = 0
 SC_lossless_mass_balance_x_node1_time6_vehicle1:
   sc_commodity_outflow_1,1,0,6 + sc_commodity_outflow_1,1,1,6
   + sc_commodity_outflow_1,1,2,6 - sc_commodity_inflow_1,0,1,5
   - sc_commodity_inflow_1,1,1,5 - sc_commodity_inflow_1,2,1,3 = 0
 mass_balance_x_node1_time7_comm0: Classic_commodity_outflow_0,1,0,7,0
   + Classic_commodity_outflow_0,1,1,7,0
   + Classic_commodity_outflow_0,1,2,7,0
   + Classic_commodity_outflow_1,1,0,7,0
   + Classic_commodity_outflow_1,1,1,7,0
   + Classic_commodity_outflow_1,1,2,7,0
   - Classic_commodity_inflow_0,0,1,6,0
   - Classic_commodity_inflow_0,1,1,6,0
   - Classic_commodity_inflow_0,2,1,4,0
   - Classic_commodity_inflow_1,0,1,6,0
   - Classic_commodity_inflow_1,1,1,6,0
   - Classic_commodity_inflow_1,2,1,4,0 <= 0
 mass_balance_x_node1_time7_comm1: Classic_commodity_outflow_0,1,0,7,1
   + Classic_commodity_outflow_0,1,1,7,1
   + Classic_commodity_outflow_0,1,2,7,1
   + Classic_commodity_outflow_1,1,0,7,1
   + Classic_commodity_outflow_1,1,1,7,1
   + Classic_commodity_outflow_1,1,2,7,1
   - Classic_commodity_inflow_0,0,1,6,1
   - Classic_commodity_inflow_0,1,1,6,1
   - Classic_commodity_inflow_0,2,1,4,1
   - Classic_commodity_inflow_1,0,1,6,1
   - Classic_commodity_inflow_1,1,1,6,1
   - Classic_commodity_inflow_1,2,1,4,1 <= 0
 mass_balance_x_node1_time7_comm2: Classic_commodity_outflow_0,1,0,7,2
   + Classic_commodity_outflow_0,1,1,7,2
   + Classic_commodity_outflow_0,1,2,7,2
   + Classic_commodity_outflow_1,1,0,7,2
   + Classic_commodity_outflow_1,1,1,7,2
   + Classic_commodity_outflow_1,1,2,7,2
   - Classic_commodity_inflow_0,0,1,6,2
   - Classic_commodity_inflow_0,1,1,6,2
   - Classic_commodity_inflow_0,2,1,4,2
   - Classic_commodity_inflow_1,0,1,6,2
   - Classic_commodity_inflow_1,1,1,6,2
   - Classic_commodity_inflow_1,2,1,4,2 <= 0
 mass_balance_x_node1_time7_comm3: Classic_commodity_outflow_0,1,0,7,3
   + Classic_commodity_outflow_0,1,1,7,3
   + Classic_commodity_outflow_0,1,2,7,3
   + Classic_commodity_outflow_1,1,0,7,3
   + Classic_commodity_outflow_1,1,1,7,3
   + Classic_commodity_outflow_1,1,2,7,3
   - Classic_commodity_inflow_0,0,1,6,3
   - Classic_commodity_inflow_0,1,1,6,3
   - Classic_commodity_inflow_0,2,1,4,3
   - Classic_commodity_inflow_1,0,1,6,3
   - Classic_commodity_inflow_1,1,1,6,3
   - Classic_commodity_inflow_1,2,1,4,3 <= 0
 mass_balance_x_node1_time7_comm4: Classic_commodity_outflow_0,1,0,7,4
   + Classic_commodity_outflow_0,1,1,7,4
   + Classic_commodity_outflow_0,1,2,7,4
   + Classic_commodity_outflow_1,1,0,7,4
   + Classic_commodity_outflow_1,1,1,7,4
   + Classic_commodity_outflow_1,1,2,7,4
   - Classic_commodity_inflow_0,0,1,6,4
   - Classic_commodity_inflow_0,1,1,6,4
   - Classic_commodity_inflow_0,2,1,4,4
   - Classic_commodity_inflow_1,0,1,6,4
   - Classic_commodity_inflow_1,1,1,6,4
   - Classic_commodity_inflow_1,2,1,4,4 <= 0
 SC_lossless_mass_balance_x_node1_time7_vehicle0:
   sc_commodity_outflow_0,1,0,7 + sc_commodity_outflow_0,1,1,7
   + sc_commodity_outflow_0,1,2,7 - sc_commodity_inflow_0,0,1,6
   - sc_commodity_inflow_0,1,1,6 - sc_commodity_inflow_0,2,1,4 = 0
 SC_lossless_mass_balance_x_node1_time7_vehicle1:
   sc_commodity_outflow_1,1,0,7 + sc_commodity_outflow_1,1,1,7
   + sc_commodity_outflow_1,1,2,7 - sc_commodity_inflow_1,0,1,6
   - sc_commodity_inflow_1,1,1,6 - sc_commodity_inflow_1,2,1,4 = 0
 mass_balance_x_node1_time8_comm0: Classic_commodity_outflow_0,1,0,8,0
   + Classic_commodity_outflow_0,1,1,8,0
   + Classic_commodity_outflow_0,1,2,8,0
   + Classic_commodity_outflow_1,1,0,8,0
   + Classic_commodity_outflow_1,1,1,8,0
   + Classic_commodity_outflow_1,1,2,8,0
   - Classic_commodity_inflow_0,0,1,7,0
   - Classic_commodity_inflow_0,1,1,7,0
   - Classic_commodity_inflow_0,2,1,5,0
   - Classic_commodity_inflow_1,0,1,7,0
   - Classic_commodity_inflow_1,1,1,7,0
   - Classic_commodity_inflow_1,2,1,5,0 <= 0
 mass_balance_x_node1_time8_comm1: Classic_commodity_outflow_0,1,0,8,1
   + Classic_commodity_outflow_0,1,1,8,1
   + Classic_commodity_outflow_0,1,2,8,1
   + Classic_commodity_outflow_1,1,0,8,1
   + Classic_commodity_outflow_1,1,1,8,1
   + Classic_commodity_outflow_1,1,2,8,1
   - Classic_commodity_inflow_0,0,1,7,1
   - Classic_commodity_inflow_0,1,1,7,1
   - Classic_commodity_inflow_0,2,1,5,1
   - Classic_commodity_inflow_1,0,1,7,1
   - Classic_commodity_inflow_1,1,1,7,1
   - Classic_commodity_inflow_1,2,1,5,1 <= 0
 mass_balance_x_node1_time8_comm2: Classic_commodity_outflow_0,1,0,8,2
   + Classic_commodity_outflow_0,1,1,8,2
   + Classic_commodity_outflow_0,1,2,8,2
   + Classic_commodity_outflow_1,1,0,8,2
   + Classic_commodity_outflow_1,1,1,8,2
   + Classic_commodity_outflow_1,1,2,8,2
   - Classic_commodity_inflow_0,0,1,7,2
   - Classic_commodity_inflow_0,1,1,7,2
   - Classic_commodity_inflow_0,2,1,5,2
   - Classic_commodity_inflow_1,0,1,7,2
   - Classic_commodity_inflow_1,1,1,7,2
   - Classic_commodity_inflow_1,2,1,5,2 <= 0
 mass_balance_x_node1_time8_comm3: Classic_commodity_outflow_0,1,0,8,3
   + Classic_commodity_outflow_0,1,1,8,3
   + Classic_commodity_outflow_0,1,2,8,3
   + Classic_commodity_outflow_1,1,0,8,3
   + Classic_commodity_outflow_1,1,1,8,3
   + Classic_commodity_outflow_1,1,2,8,3
   - Classic_commodity_inflow_0,0,1,7,3
   - Classic_commodity_inflow_0,1,1,7,3
   - Classic_commodity_inflow_0,2,1,5,3
   - Classic_commodity_inflow_1,0,1,7,3
   - Classic_commodity_inflow_1,1,1,7,3
   - Classic_commodity_inflow_1,2,1,5,3 <= 0
 mass_balance_x_node1_time8_comm4: Classic_commodity_outflow_0,1,0,8,4
   + Classic_commodity_outflow_0,1,1,8,4
   + Classic_commodity_outflow_0,1,2,8,4
   + Classic_commodity_outflow_1,1,0,8,4
   + Classic_commodity_outflow_1,1,1,8,4
   + Classic_commodity_outflow_1,1,2,8,4
   - Classic_commodity_inflow_0,0,1,7,4
   - Classic_commodity_inflow_0,1,1,7,4
   - Classic_commodity_inflow_0,2,1,5,4
   - Classic_commodity_inflow_1,0,1,7,4
   - Classic_commodity_inflow_1,1,1,7,4
   - Classic_commodity_inflow_1,2,1,5,4 <= 0
 SC_lossless_mass_balance_x_node1_time8_vehicle0:
   sc_commodity_outflow_0,1,0,8 + sc_commodity_outflow_0,1,1,8
   + sc_commodity_outflow_0,1,2,8 - sc_commodity_inflow_0,0,1,7
   - sc_commodity_inflow_0,1,1,7 - sc_commodity_inflow_0,2,1,5 = 0
 SC_lossless_mass_balance_x_node1_time8_vehicle1:
   sc_commodity_outflow_1,1,0,8 + sc_commodity_outflow_1,1,1,8
   + sc_commodity_outflow_1,1,2,8 - sc_commodity_inflow_1,0,1,7
   - sc_commodity_inflow_1,1,1,7 - sc_commodity_inflow_1,2,1,5 = 0
 mass_balance_x_node1_time9_comm0: Classic_commodity_outflow_0,1,0,9,0
   + Classic_commodity_outflow_0,1,1,9,0
   + Classic_commodity_outflow_1,1,0,9,0
   + Classic_commodity_outflow_1,1,1,9,0
   - Classic_commodity_inflow_0,0,1,8,0
   - Classic_commodity_inflow_0,1,1,8,0
   - Classic_commodity_inflow_0,2,1,6,0
   - Classic_commodity_inflow_1,0,1,8,0
   - Classic_commodity_inflow_1,1,1,8,0
   - Classic_commodity_inflow_1,2,1,6,0 <= 0
 mass_balance_x_node1_time9_comm1: Classic_commodity_outflow_0,1,0,9,1
   + Classic_commodity_outflow_0,1,1,9,1
   + Classic_commodity_outflow_1,1,0,9,1
   + Classic_commodity_outflow_1,1,1,9,1
   - Classic_commodity_inflow_0,0,1,8,1
   - Classic_commodity_inflow_0,1,1,8,1
   - Classic_commodity_inflow_0,2,1,6,1
   - Classic_commodity_inflow_1,0,1,8,1
   - Classic_commodity_inflow_1,1,1,8,1
   - Classic_commodity_inflow_1,2,1,6,1 <= 0
 mass_balance_x_node1_time9_comm2: Classic_commodity_outflow_0,1,0,9,2
   + Classic_commodity_outflow_0,1,1,9,2
   + Classic_commodity_outflow_1,1,0,9,2
   + Classic_commodity_outflow_1,1,1,9,2
   - Classic_commodity_inflow_0,0,1,8,2
   - Classic_commodity_inflow_0,1,1,8,2
   - Classic_commodity_inflow_0,2,1,6,2
   - Classic_commodity_inflow_1,0,1,8,2
   - Classic_commodity_inflow_1,1,1,8,2
   - Classic_commodity_inflow_1,2,1,6,2 <= 0
 mass_balance_x_node1_time9_comm3: Classic_commodity_outflow_0,1,0,9,3
   + Classic_commodity_outflow_0,1,1,9,3
   + Classic_commodity_outflow_1,1,0,9,3
   + Classic_commodity_outflow_1,1,1,9,3
   - Classic_commodity_inflow_0,0,1,8,3
   - Classic_commodity_inflow_0,1,1,8,3
   - Classic_commodity_inflow_0,2,1,6,3
   - Classic_commodity_inflow_1,0,1,8,3
   - Classic_commodity_inflow_1,1,1,8,3
   - Classic_commodity_inflow_1,2,1,6,3 <= 0
 mass_balance_x_node1_time9_comm4: Classic_commodity_outflow_0,1,0,9,4
   + Classic_commodity_outflow_0,1,1,9,4
   + Classic_commodity_outflow_1,1,0,9,4
   + Classic_commodity_outflow_1,1,1,9,4
   - Classic_commodity_inflow_0,0,1,8,4
   - Classic_commodity_inflow_0,1,1,8,4
   - Classic_commodity_inflow_0,2,1,6,4
   - Classic_commodity_inflow_1,0,1,8,4
   - Classic_commodity_inflow_1,1,1,8,4
   - Classic_commodity_inflow_1,2,1,6,4 <= 0
 SC_lossless_mass_balance_x_node1_time9_vehicle0:
   sc_commodity_outflow_0,1,0,9 + sc_commodity_outflow_0,1,1,9
   - sc_commodity_inflow_0,0,1,8 - sc_commodity_inflow_0,1,1,8
   - sc_commodity_inflow_0,2,1,6 = 0
 SC_lossless_mass_balance_x_node1_time9_vehicle1:
   sc_commodity_outflow_1,1,0,9 + sc_commodity_outflow_1,1,1,9
   - sc_commodity_inflow_1,0,1,8 - sc_commodity_inflow_1,1,1,8
   - sc_commodity_inflow_1,2,1,6 = 0
 mass_balance_x_node1_time10_comm0: Classic_commodity_outflow_0,1,0,10,0
   + Classic_commodity_outflow_0,1,1,10,0
   + Classic_commodity_outflow_1,1,0,10,0
   + Classic_commodity_outflow_1,1,1,10,0
   - Classic_commodity_inflow_0,0,1,9,0
   - Classic_commodity_inflow_0,1,1,9,0
   - Classic_commodity_inflow_0,2,1,7,0
   - Classic_commodity_inflow_1,0,1,9,0
   - Classic_commodity_inflow_1,1,1,9,0
   - Classic_commodity_inflow_1,2,1,7,0 <= 0
 mass_balance_x_node1_time10_comm1: Classic_commodity_outflow_0,1,0,10,1
   + Classic_commodity_outflow_0,1,1,10,1
   + Classic_commodity_outflow_1,1,0,10,1
   + Classic_commodity_outflow_1,1,1,10,1
   - Classic_commodity_inflow_0,0,1,9,1
   - Classic_commodity_inflow_0,1,1,9,1
   - Classic_commodity_inflow_0,2,1,7,1
   - Classic_commodity_inflow_1,0,1,9,1
   - Classic_commodity_inflow_1,1,1,9,1
   - Classic_commodity_inflow_1,2,1,7,1 <= 0
 mass_balance_x_node1_time10_comm2: Classic_commodity_outflow_0,1,0,10,2
   + Classic_commodity_outflow_0,1,1,10,2
   + Classic_commodity_outflow_1,1,0,10,2
   + Classic_commodity_outflow_1,1,1,10,2
   - Classic_commodity_inflow_0,0,1,9,2
   - Classic_commodity_inflow_0,1,1,9,2
   - Classic_commodity_inflow_0,2,1,7,2
   - Classic_commodity_inflow_1,0,1,9,2
   - Classic_commodity_inflow_1,1,1,9,2
   - Classic_commodity_inflow_1,2,1,7,2 <= 0
 mass_balance_x_node1_time10_comm3: Classic_commodity_outflow_0,1,0,10,3
   + Classic_commodity_outflow_0,1,1,10,3
   + Classic_commodity_outflow_1,1,0,10,3
   + Classic_commodity_outflow_1,1,1,10,3
   - Classic_commodity_inflow_0,0,1,9,3
   - Classic_commodity_inflow_0,1,1,9,3
   - Classic_commodity_inflow_0,2,1,7,3
   - Classic_commodity_inflow_1,0,1,9,3
   - Classic_commodity_inflow_1,1,1,9,3
   - Classic_commodity_inflow_1,2,1,7,3 <= 0
 mass_balance_x_node1_time10_comm4: Classic_commodity_outflow_0,1,0,10,4
   + Classic_commodity_outflow_0,1,1,10,4
   + Classic_commodity_outflow_1,1,0,10,4
   + Classic_commodity_outflow_1,1,1,10,4
   - Classic_commodity_inflow_0,0,1,9,4
   - Classic_commodity_inflow_0,1,1,9,4
   - Classic_commodity_inflow_0,2,1,7,4
   - Classic_commodity_inflow_1,0,1,9,4
   - Classic_commodity_inflow_1,1,1,9,4
   - Classic_commodity_inflow_1,2,1,7,4 <= 0
 SC_lossless_mass_balance_x_node1_time10_vehicle0:
   sc_commodity_outflow_0,1,0,10 + sc_commodity_outflow_0,1,1,10
   - sc_commodity_inflow_0,0,1,9 - sc_commodity_inflow_0,1,1,9
   - sc_commodity_inflow_0,2,1,7 = 0
 SC_lossless_mass_balance_x_node1_time10_vehicle1:
   sc_commodity_outflow_1,1,0,10 + sc_commodity_outflow_1,1,1,10
   - sc_commodity_inflow_1,0,1,9 - sc_commodity_inflow_1,1,1,9
   - sc_commodity_inflow_1,2,1,7 = 0
 mass_balance_x_node1_time11_comm0: - Classic_commodity_inflow_0,0,1,10,0
   - Classic_commodity_inflow_0,1,1,10,0
   - Classic_commodity_inflow_0,2,1,8,0
   - Classic_commodity_inflow_1,0,1,10,0
   - Classic_commodity_inflow_1,1,1,10,0
   - Classic_commodity_inflow_1,2,1,8,0 <= 0
 mass_balance_x_node1_time11_comm1: - Classic_commodity_inflow_0,0,1,10,1
   - Classic_commodity_inflow_0,1,1,10,1
   - Classic_commodity_inflow_0,2,1,8,1
   - Classic_commodity_inflow_1,0,1,10,1
   - Classic_commodity_inflow_1,1,1,10,1
   - Classic_commodity_inflow_1,2,1,8,1 <= 0
 mass_balance_x_node1_time11_comm2: - Classic_commodity_inflow_0,0,1,10,2
   - Classic_commodity_inflow_0,1,1,10,2
   - Classic_commodity_inflow_0,2,1,8,2
   - Classic_commodity_inflow_1,0,1,10,2
   - Classic_commodity_inflow_1,1,1,10,2
   - Classic_commodity_inflow_1,2,1,8,2 <= 0
 mass_balance_x_node1_time11_comm3: - Classic_commodity_inflow_0,0,1,10,3
   - Classic_commodity_inflow_0,1,1,10,3
   - Classic_commodity_inflow_0,2,1,8,3
   - Classic_commodity_inflow_1,0,1,10,3
   - Classic_commodity_inflow_1,1,1,10,3
   - Classic_commodity_inflow_1,2,1,8,3 <= 0
 mass_balance_x_node1_time11_comm4: - Classic_commodity_inflow_0,0,1,10,4
   - Classic_commodity_inflow_0,1,1,10,4
   - Classic_commodity_inflow_0,2,1,8,4
   - Classic_commodity_inflow_1,0,1,10,4
   - Classic_commodity_inflow_1,1,1,10,4
   - Classic_commodity_inflow_1,2,1,8,4 <= 0
 SC_mass_balance_x_node1_time11_vehicle0: - sc_commodity_inflow_0,0,1,10
   - sc_commodity_inflow_0,1,1,10 - sc_commodity_inflow_0,2,1,8 <= 0
 SC_mass_balance_x_node1_time11_vehicle1: - sc_commodity_inflow_1,0,1,10
   - sc_commodity_inflow_1,1,1,10 - sc_commodity_inflow_1,2,1,8 <= 0
 mass_balance_x_node2_time0_comm0: Classic_commodity_outflow_0,2,1,0,0
   + Classic_commodity_outflow_0,2,2,0,0
   + Classic_commodity_outflow_0,2,3,0,0
   + Classic_commodity_outflow_1,2,1,0,0
   + Classic_commodity_outflow_1,2,2,0,0
   + Classic_commodity_outflow_1,2,3,0,0 <= 0
 mass_balance_x_node2_time0_comm1: Classic_commodity_outflow_0,2,1,0,1
   + Classic_commodity_outflow_0,2,2,0,1
   + Classic_commodity_outflow_0,2,3,0,1
   + Classic_commodity_outflow_1,2,1,0,1
   + Classic_commodity_outflow_1,2,2,0,1
   + Classic_commodity_outflow_1,2,3,0,1 <= 0
 mass_balance_x_node2_time0_comm2: Classic_commodity_outflow_0,2,1,0,2
   + Classic_commodity_outflow_0,2,2,0,2
   + Classic_commodity_outflow_0,2,3,0,2
   + Classic_commodity_outflow_1,2,1,0,2
   + Classic_commodity_outflow_1,2,2,0,2
   + Classic_commodity_outflow_1,2,3,0,2 <= 0
 mass_balance_x_node2_time0_comm3: Classic_commodity_outflow_0,2,1,0,3
   + Classic_commodity_outflow_0,2,2,0,3
   + Classic_commodity_outflow_0,2,3,0,3
   + Classic_commodity_outflow_1,2,1,0,3
   + Classic_commodity_outflow_1,2,2,0,3
   + Classic_commodity_outflow_1,2,3,0,3 <= 0
 mass_balance_x_node2_time0_comm4: Classic_commodity_outflow_0,2,1,0,4
   + Classic_commodity_outflow_0,2,2,0,4
   + Classic_commodity_outflow_0,2,3,0,4
   + Classic_commodity_outflow_1,2,1,0,4
   + Classic_commodity_outflow_1,2,2,0,4
   + Classic_commodity_outflow_1,2,3,0,4 <= 0
 SC_lossless_mass_balance_x_node2_time0_vehicle0:
   sc_commodity_outflow_0,2,1,0 + sc_commodity_outflow_0,2,2,0
   + sc_commodity_outflow_0,2,3,0 = 0
 SC_lossless_mass_balance_x_node2_time0_vehicle1:
   sc_commodity_outflow_1,2,1,0 + sc_commodity_outflow_1,2,2,0
   + sc_commodity_outflow_1,2,3,0 = 0
 mass_balance_x_node2_time1_comm0: Classic_commodity_outflow_0,2,1,1,0
   + Classic_commodity_outflow_0,2,2,1,0
   + Classic_commodity_outflow_0,2,3,1,0
   + Classic_commodity_outflow_1,2,1,1,0
   + Classic_commodity_outflow_1,2,2,1,0
   + Classic_commodity_outflow_1,2,3,1,0
   - Classic_commodity_inflow_0,2,2,0,0
   - Classic_commodity_inflow_0,3,2,0,0
   - Classic_commodity_inflow_1,2,2,0,0
   - Classic_commodity_inflow_1,3,2,0,0 <= 0
 mass_balance_x_node2_time1_comm1: Classic_commodity_outflow_0,2,1,1,1
   + Classic_commodity_outflow_0,2,2,1,1
   + Classic_commodity_outflow_0,2,3,1,1
   + Classic_commodity_outflow_1,2,1,1,1
   + Classic_commodity_outflow_1,2,2,1,1
   + Classic_commodity_outflow_1,2,3,1,1
   - Classic_commodity_inflow_0,2,2,0,1
   - Classic_commodity_inflow_0,3,2,0,1
   - Classic_commodity_inflow_1,2,2,0,1
   - Classic_commodity_inflow_1,3,2,0,1 <= 0
 mass_balance_x_node2_time1_comm2: Classic_commodity_outflow_0,2,1,1,2
   + Classic_commodity_outflow_0,2,2,1,2
   + Classic_commodity_outflow_0,2,3,1,2
   + Classic_commodity_outflow_1,2,1,1,2
   + Classic_commodity_outflow_1,2,2,1,2
   + Classic_commodity_outflow_1,2,3,1,2
   - Classic_commodity_inflow_0,2,2,0,2
   - Classic_commodity_inflow_0,3,2,0,2
   - Classic_commodity_inflow_1,2,2,0,2
   - Classic_commodity_inflow_1,3,2,0,2 <= 0
 mass_balance_x_node2_time1_comm3: Classic_commodity_outflow_0,2,1,1,3
   + Classic_commodity_outflow_0,2,2,1,3
   + Classic_commodity_outflow_0,2,3,1,3
   + Classic_commodity_outflow_1,2,1,1,3
   + Classic_commodity_outflow_1,2,2,1,3
   + Classic_commodity_outflow_1,2,3,1,3
   - Classic_commodity_inflow_0,2,2,0,3
   - Classic_commodity_inflow_0,3,2,0,3
   - Classic_commodity_inflow_1,2,2,0,3
   - Classic_commodity_inflow_1,3,2,0,3 <= 0
 mass_balance_x_node2_time1_comm4: Classic_commodity_outflow_0,2,1,1,4
   + Classic_commodity_outflow_0,2,2,1,4
   + Classic_commodity_outflow_0,2,3,1,4
   + Classic_commodity_outflow_1,2,1,1,4
   + Classic_commodity_outflow_1,2,2,1,4
   + Classic_commodity_outflow_1,2,3,1,4
   - Classic_commodity_inflow_0,2,2,0,4
   - Classic_commodity_inflow_0,3,2,0,4
   - Classic_commodity_inflow_1,2,2,0,4
   - Classic_commodity_inflow_1,3,2,0,4 <= 0
 SC_lossless_mass_balance_x_node2_time1_vehicle0:
   sc_commodity_outflow_0,2,1,1 + sc_commodity_outflow_0,2,2,1
   + sc_commodity_outflow_0,2,3,1 - sc_commodity_inflow_0,2,2,0
   - sc_commodity_inflow_0,3,2,0 = 0
 SC_lossless_mass_balance_x_node2_time1_vehicle1:
   sc_commodity_outflow_1,2,1,1 + sc_commodity_outflow_1,2,2,1
   + sc_commodity_outflow_1,2,3,1 - sc_commodity_inflow_1,2,2,0
   - sc_commodity_inflow_1,3,2,0 = 0
 mass_balance_x_node2_time2_comm0: Classic_commodity_outflow_0,2,1,2,0
   + Classic_commodity_outflow_0,2,2,2,0
   + Classic_commodity_outflow_0,2,3,2,0
   + Classic_commodity_outflow_1,2,1,2,0
   + Classic_commodity_outflow_1,2,2,2,0
   + Classic_commodity_outflow_1,2,3,2,0
   - Classic_commodity_inflow_0,2,2,1,0
   - Classic_commodity_inflow_0,3,2,1,0
   - Classic_commodity_inflow_1,2,2,1,0
   - Classic_commodity_inflow_1,3,2,1,0 <= 0
 mass_balance_x_node2_time2_comm1: Classic_commodity_outflow_0,2,1,2,1
   + Classic_commodity_outflow_0,2,2,2,1
   + Classic_commodity_outflow_0,2,3,2,1
   + Classic_commodity_outflow_1,2,1,2,1
   + Classic_commodity_outflow_1,2,2,2,1
   + Classic_commodity_outflow_1,2,3,2,1
   - Classic_commodity_inflow_0,2,2,1,1
   - Classic_commodity_inflow_0,3,2,1,1
   - Classic_commodity_inflow_1,2,2,1,1
   - Classic_commodity_inflow_1,3,2,1,1 <= 0
 mass_balance_x_node2_time2_comm2: Classic_commodity_outflow_0,2,1,2,2
   + Classic_commodity_outflow_0,2,2,2,2
   + Classic_commodity_outflow_0,2,3,2,2
   + Classic_commodity_outflow_1,2,1,2,2
   + Classic_commodity_outflow_1,2,2,2,2
   + Classic_commodity_outflow_1,2,3,2,2
   - Classic_commodity_inflow_0,2,2,1,2
   - Classic_commodity_inflow_0,3,2,1,2
   - Classic_commodity_inflow_1,2,2,1,2
   - Classic_commodity_inflow_1,3,2,1,2 <= 0
 mass_balance_x_node2_time2_comm3: Classic_commodity_outflow_0,2,1,2,3
   + Classic_commodity_outflow_0,2,2,2,3
   + Classic_commodity_outflow_0,2,3,2,3
   + Classic_commodity_outflow_1,2,1,2,3
   + Classic_commodity_outflow_1,2,2,2,3
   + Classic_commodity_outflow_1,2,3,2,3
   - Classic_commodity_inflow_0,2,2,1,3
   - Classic_commodity_inflow_0,3,2,1,3
   - Classic_commodity_inflow_1,2,2,1,3
   - Classic_commodity_inflow_1,3,2,1,3 <= 0
 mass_balance_x_node2_time2_comm4: Classic_commodity_outflow_0,2,1,2,4
   + Classic_commodity_outflow_0,2,2,2,4
   + Classic_commodity_outflow_0,2,3,2,4
   + Classic_commodity_outflow_1,2,1,2,4
   + Classic_commodity_outflow_1,2,2,2,4
   + Classic_commodity_outflow_1,2,3,2,4
   - Classic_commodity_inflow_0,2,2,1,4
   - Classic_commodity_inflow_0,3,2,1,4
   - Classic_commodity_inflow_1,2,2,1,4
   - Classic_commodity_inflow_1,3,2,1,4 <= 0
 SC_lossless_mass_balance_x_node2_time2_vehicle0:
   sc_commodity_outflow_0,2,1,2 + sc_commodity_outflow_0,2,2,2
   + sc_commodity_outflow_0,2,3,2 - sc_commodity_inflow_0,2,2,1
   - sc_commodity_inflow_0,3,2,1 = 0
 SC_lossless_mass_balance_x_node2_time2_vehicle1:
   sc_commodity_outflow_1,2,1,2 + sc_commodity_outflow_1,2,2,2
   + sc_commodity_outflow_1,2,3,2 - sc_commodity_inflow_1,2,2,1
   - sc_commodity_inflow_1,3,2,1 = 0
 mass_balance_x_node2_time3_comm0: Classic_commodity_outflow_0,2,1,3,0
   + Classic_commodity_outflow_0,2,2,3,0
   + Classic_commodity_outflow_0,2,3,3,0
   + Classic_commodity_outflow_1,2,1,3,0
   + Classic_commodity_outflow_1,2,2,3,0
   + Classic_commodity_outflow_1,2,3,3,0
   - Classic_commodity_inflow_0,1,2,0,0
   - Classic_commodity_inflow_0,2,2,2,0
   - Classic_commodity_inflow_0,3,2,2,0
   - Classic_commodity_inflow_1,1,2,0,0
   - Classic_commodity_inflow_1,2,2,2,0
   - Classic_commodity_inflow_1,3,2,2,0 <= -1
 mass_balance_x_node2_time3_comm1: Classic_commodity_outflow_0,2,1,3,1
   + Classic_commodity_outflow_0,2,2,3,1
   + Classic_commodity_outflow_0,2,3,3,1
   + Classic_commodity_outflow_1,2,1,3,1
   + Classic_commodity_outflow_1,2,2,3,1
   + Classic_commodity_outflow_1,2,3,3,1
   - Classic_commodity_inflow_0,1,2,0,1
   - Classic_commodity_inflow_0,2,2,2,1
   - Classic_commodity_inflow_0,3,2,2,1
   - Classic_commodity_inflow_1,1,2,0,1
   - Classic_commodity_inflow_1,2,2,2,1
   - Classic_commodity_inflow_1,3,2,2,1 <= 0
 mass_balance_x_node2_time3_comm2: Classic_commodity_outflow_0,2,1,3,2
   + Classic_commodity_outflow_0,2,2,3,2
   + Classic_commodity_outflow_0,2,3,3,2
   + Classic_commodity_outflow_1,2,1,3,2
   + Classic_commodity_outflow_1,2,2,3,2
   + Classic_commodity_outflow_1,2,3,3,2
   - Classic_commodity_inflow_0,1,2,0,2
   - Classic_commodity_inflow_0,2,2,2,2
   - Classic_commodity_inflow_0,3,2,2,2
   - Classic_commodity_inflow_1,1,2,0,2
   - Classic_commodity_inflow_1,2,2,2,2
   - Classic_commodity_inflow_1,3,2,2,2 <= 0
 mass_balance_x_node2_time3_comm3: Classic_commodity_outflow_0,2,1,3,3
   + Classic_commodity_outflow_0,2,2,3,3
   + Classic_commodity_outflow_0,2,3,3,3
   + Classic_commodity_outflow_1,2,1,3,3
   + Classic_commodity_outflow_1,2,2,3,3
   + Classic_commodity_outflow_1,2,3,3,3
   - Classic_commodity_inflow_0,1,2,0,3
   - Classic_commodity_inflow_0,2,2,2,3
   - Classic_commodity_inflow_0,3,2,2,3
   - Classic_commodity_inflow_1,1,2,0,3
   - Classic_commodity_inflow_1,2,2,2,3
   - Classic_commodity_inflow_1,3,2,2,3 <= 0
 mass_balance_x_node2_time3_comm4: Classic_commodity_outflow_0,2,1,3,4
   + Classic_commodity_outflow_0,2,2,3,4
   + Classic_commodity_outflow_0,2,3,3,4
   + Classic_commodity_outflow_1,2,1,3,4
   + Classic_commodity_outflow_1,2,2,3,4
   + Classic_commodity_outflow_1,2,3,3,4
   - Classic_commodity_inflow_0,1,2,0,4
   - Classic_commodity_inflow_0,2,2,2,4
   - Classic_commodity_inflow_0,3,2,2,4
   - Classic_commodity_inflow_1,1,2,0,4
   - Classic_commodity_inflow_1,2,2,2,4
   - Classic_commodity_inflow_1,3,2,2,4 <= 0
 SC_lossless_mass_balance_x_node2_time3_vehicle0:
   sc_commodity_outflow_0,2,1,3 + sc_commodity_outflow_0,2,2,3
   + sc_commodity_outflow_0,2,3,3 - sc_commodity_inflow_0,1,2,0
   - sc_commodity_inflow_0,2,2,2 - sc_commodity_inflow_0,3,2,2 = 0
 SC_lossless_mass_balance_x_node2_time3_vehicle1:
   sc_commodity_outflow_1,2,1,3 + sc_commodity_outflow_1,2,2,3
   + sc_commodity_outflow_1,2,3,3 - sc_commodity_inflow_1,1,2,0
   - sc_commodity_inflow_1,2,2,2 - sc_commodity_inflow_1,3,2,2 = 0
 mass_balance_x_node2_time4_comm0: Classic_commodity_outflow_0,2,1,4,0
   + Classic_commodity_outflow_0,2,2,4,0
   + Classic_commodity_outflow_0,2,3,4,0
   + Classic_commodity_outflow_1,2,1,4,0
   + Classic_commodity_outflow_1,2,2,4,0
   + Classic_commodity_outflow_1,2,3,4,0
   - Classic_commodity_inflow_0,1,2,1,0
   - Classic_commodity_inflow_0,2,2,3,0
   - Classic_commodity_inflow_0,3,2,3,0
   - Classic_commodity_inflow_1,1,2,1,0
   - Classic_commodity_inflow_1,2,2,3,0
   - Classic_commodity_inflow_1,3,2,3,0 <= 0
 mass_balance_x_node2_time4_comm1: Classic_commodity_outflow_0,2,1,4,1
   + Classic_commodity_outflow_0,2,2,4,1
   + Classic_commodity_outflow_0,2,3,4,1
   + Classic_commodity_outflow_1,2,1,4,1
   + Classic_commodity_outflow_1,2,2,4,1
   + Classic_commodity_outflow_1,2,3,4,1
   - Classic_commodity_inflow_0,1,2,1,1
   - Classic_commodity_inflow_0,2,2,3,1
   - Classic_commodity_inflow_0,3,2,3,1
   - Classic_commodity_inflow_1,1,2,1,1
   - Classic_commodity_inflow_1,2,2,3,1
   - Classic_commodity_inflow_1,3,2,3,1 <= 0
 mass_balance_x_node2_time4_comm2: Classic_commodity_outflow_0,2,1,4,2
   + Classic_commodity_outflow_0,2,2,4,2
   + Classic_commodity_outflow_0,2,3,4,2
   + Classic_commodity_outflow_1,2,1,4,2
   + Classic_commodity_outflow_1,2,2,4,2
   + Classic_commodity_outflow_1,2,3,4,2
   - Classic_commodity_inflow_0,1,2,1,2
   - Classic_commodity_inflow_0,2,2,3,2
   - Classic_commodity_inflow_0,3,2,3,2
   - Classic_commodity_inflow_1,1,2,1,2
   - Classic_commodity_inflow_1,2,2,3,2
   - Classic_commodity_inflow_1,3,2,3,2 <= 0
 mass_balance_x_node2_time4_comm3: Classic_commodity_outflow_0,2,1,4,3
   + Classic_commodity_outflow_0,2,2,4,3
   + Classic_commodity_outflow_0,2,3,4,3
   + Classic_commodity_outflow_1,2,1,4,3
   + Classic_commodity_outflow_1,2,2,4,3
   + Classic_commodity_outflow_1,2,3,4,3
   - Classic_commodity_inflow_0,1,2,1,3
   - Classic_commodity_inflow_0,2,2,3,3
   - Classic_commodity_inflow_0,3,2,3,3
   - Classic_commodity_inflow_1,1,2,1,3
   - Classic_commodity_inflow_1,2,2,3,3
   - Classic_commodity_inflow_1,3,2,3,3 <= 0
 mass_balance_x_node2_time4_comm4: Classic_commodity_outflow_0,2,1,4,4
   + Classic_commodity_outflow_0,2,2,4,4
   + Classic_commodity_outflow_0,2,3,4,4
   + Classic_commodity_outflow_1,2,1,4,4
   + Classic_commodity_outflow_1,2,2,4,4
   + Classic_commodity_outflow_1,2,3,4,4
   - Classic_commodity_inflow_0,1,2,1,4
   - Classic_commodity_inflow_0,2,2,3,4
   - Classic_commodity_inflow_0,3,2,3,4
   - Classic_commodity_inflow_1,1,2,1,4
   - Classic_commodity_inflow_1,2,2,3,4
   - Classic_commodity_inflow_1,3,2,3,4 <= 0
 SC_lossless_mass_balance_x_node2_time4_vehicle0:
   sc_commodity_outflow_0,2,1,4 + sc_commodity_outflow_0,2,2,4
   + sc_commodity_outflow_0,2,3,4 - sc_commodity_inflow_0,1,2,1
   - sc_commodity_inflow_0,2,2,3 - sc_commodity_inflow_0,3,2,3 = 0
 SC_lossless_mass_balance_x_node2_time4_vehicle1:
   sc_commodity_outflow_1,2,1,4 + sc_commodity_outflow_1,2,2,4
   + sc_commodity_outflow_1,2,3,4 - sc_commodity_inflow_1,1,2,1
   - sc_commodity_inflow_1,2,2,3 - sc_commodity_inflow_1,3,2,3 = 0
 mass_balance_x_node2_time5_comm0: Classic_commodity_outflow_0,2,1,5,0
   + Classic_commodity_outflow_0,2,2,5,0
   + Classic_commodity_outflow_0,2,3,5,0
   + Classic_commodity_outflow_1,2,1,5,0
   + Classic_commodity_outflow_1,2,2,5,0
   + Classic_commodity_outflow_1,2,3,5,0
   - Classic_commodity_inflow_0,1,2,2,0
   - Classic_commodity_inflow_0,2,2,4,0
   - Classic_commodity_inflow_0,3,2,4,0
   - Classic_commodity_inflow_1,1,2,2,0
   - Classic_commodity_inflow_1,2,2,4,0
   - Classic_commodity_inflow_1,3,2,4,0 <= 0
 mass_balance_x_node2_time5_comm1: Classic_commodity_outflow_0,2,1,5,1
   + Classic_commodity_outflow_0,2,2,5,1
   + Classic_commodity_outflow_0,2,3,5,1
   + Classic_commodity_outflow_1,2,1,5,1
   + Classic_commodity_outflow_1,2,2,5,1
   + Classic_commodity_outflow_1,2,3,5,1
   - Classic_commodity_inflow_0,1,2,2,1
   - Classic_commodity_inflow_0,2,2,4,1
   - Classic_commodity_inflow_0,3,2,4,1
   - Classic_commodity_inflow_1,1,2,2,1
   - Classic_commodity_inflow_1,2,2,4,1
   - Classic_commodity_inflow_1,3,2,4,1 <= 0
 mass_balance_x_node2_time5_comm2: Classic_commodity_outflow_0,2,1,5,2
   + Classic_commodity_outflow_0,2,2,5,2
   + Classic_commodity_outflow_0,2,3,5,2
   + Classic_commodity_outflow_1,2,1,5,2
   + Classic_commodity_outflow_1,2,2,5,2
   + Classic_commodity_outflow_1,2,3,5,2
   - Classic_commodity_inflow_0,1,2,2,2
   - Classic_commodity_inflow_0,2,2,4,2
   - Classic_commodity_inflow_0,3,2,4,2
   - Classic_commodity_inflow_1,1,2,2,2
   - Classic_commodity_inflow_1,2,2,4,2
   - Classic_commodity_inflow_1,3,2,4,2 <= 0
 mass_balance_x_node2_time5_comm3: Classic_commodity_outflow_0,2,1,5,3
   + Classic_commodity_outflow_0,2,2,5,3
   + Classic_commodity_outflow_0,2,3,5,3
   + Classic_commodity_outflow_1,2,1,5,3
   + Classic_commodity_outflow_1,2,2,5,3
   + Classic_commodity_outflow_1,2,3,5,3
   - Classic_commodity_inflow_0,1,2,2,3
   - Classic_commodity_inflow_0,2,2,4,3
   - Classic_commodity_inflow_0,3,2,4,3
   - Classic_commodity_inflow_1,1,2,2,3
   - Classic_commodity_inflow_1,2,2,4,3
   - Classic_commodity_inflow_1,3,2,4,3 <= 0
 mass_balance_x_node2_time5_comm4: Classic_commodity_outflow_0,2,1,5,4
   + Classic_commodity_outflow_0,2,2,5,4
   + Classic_commodity_outflow_0,2,3,5,4
   + Classic_commodity_outflow_1,2,1,5,4
   + Classic_commodity_outflow_1,2,2,5,4
   + Classic_commodity_outflow_1,2,3,5,4
   - Classic_commodity_inflow_0,1,2,2,4
   - Classic_commodity_inflow_0,2,2,4,4
   - Classic_commodity_inflow_0,3,2,4,4
   - Classic_commodity_inflow_1,1,2,2,4
   - Classic_commodity_inflow_1,2,2,4,4
   - Classic_commodity_inflow_1,3,2,4,4 <= 0
 SC_lossless_mass_balance_x_node2_time5_vehicle0:
   sc_commodity_outflow_0,2,1,5 + sc_commodity_outflow_0,2,2,5
   + sc_commodity_outflow_0,2,3,5 - sc_commodity_inflow_0,1,2,2
   - sc_commodity_inflow_0,2,2,4 - sc_commodity_inflow_0,3,2,4 = 0
 SC_lossless_mass_balance_x_node2_time5_vehicle1:
   sc_commodity_outflow_1,2,1,5 + sc_commodity_outflow_1,2,2,5
   + sc_commodity_outflow_1,2,3,5 - sc_commodity_inflow_1,1,2,2
   - sc_commodity_inflow_1,2,2,4 - sc_commodity_inflow_1,3,2,4 = 0
 mass_balance_x_node2_time6_comm0: Classic_commodity_outflow_0,2,1,6,0
   + Classic_commodity_outflow_0,2,2,6,0
   + Classic_commodity_outflow_0,2,3,6,0
   + Classic_commodity_outflow_1,2,1,6,0
   + Classic_commodity_outflow_1,2,2,6,0
   + Classic_commodity_outflow_1,2,3,6,0
   - Classic_commodity_inflow_0,1,2,3,0
   - Classic_commodity_inflow_0,2,2,5,0
   - Classic_commodity_inflow_0,3,2,5,0
   - Classic_commodity_inflow_1,1,2,3,0
   - Classic_commodity_inflow_1,2,2,5,0
   - Classic_commodity_inflow_1,3,2,5,0 <= 1
 mass_balance_x_node2_time6_comm1: Classic_commodity_outflow_0,2,1,6,1
   + Classic_commodity_outflow_0,2,2,6,1
   + Classic_commodity_outflow_0,2,3,6,1
   + Classic_commodity_outflow_1,2,1,6,1
   + Classic_commodity_outflow_1,2,2,6,1
   + Classic_commodity_outflow_1,2,3,6,1
   - Classic_commodity_inflow_0,1,2,3,1
   - Classic_commodity_inflow_0,2,2,5,1
   - Classic_commodity_inflow_0,3,2,5,1
   - Classic_commodity_inflow_1,1,2,3,1
   - Classic_commodity_inflow_1,2,2,5,1
   - Classic_commodity_inflow_1,3,2,5,1 <= 0
 mass_balance_x_node2_time6_comm2: Classic_commodity_outflow_0,2,1,6,2
   + Classic_commodity_outflow_0,2,2,6,2
   + Classic_commodity_outflow_0,2,3,6,2
   + Classic_commodity_outflow_1,2,1,6,2
   + Classic_commodity_outflow_1,2,2,6,2
   + Classic_commodity_outflow_1,2,3,6,2
   - Classic_commodity_inflow_0,1,2,3,2
   - Classic_commodity_inflow_0,2,2,5,2
   - Classic_commodity_inflow_0,3,2,5,2
   - Classic_commodity_inflow_1,1,2,3,2
   - Classic_commodity_inflow_1,2,2,5,2
   - Classic_commodity_inflow_1,3,2,5,2 <= 0
 mass_balance_x_node2_time6_comm3: Classic_commodity_outflow_0,2,1,6,3
   + Classic_commodity_outflow_0,2,2,6,3
   + Classic_commodity_outflow_0,2,3,6,3
   + Classic_commodity_outflow_1,2,1,6,3
   + Classic_commodity_outflow_1,2,2,6,3
   + Classic_commodity_outflow_1,2,3,6,3
   - Classic_commodity_inflow_0,1,2,3,3
   - Classic_commodity_inflow_0,2,2,5,3
   - Classic_commodity_inflow_0,3,2,5,3
   - Classic_commodity_inflow_1,1,2,3,3
   - Classic_commodity_inflow_1,2,2,5,3
   - Classic_commodity_inflow_1,3,2,5,3 <= 0
 mass_balance_x_node2_time6_comm4: Classic_commodity_outflow_0,2,1,6,4
   + Classic_commodity_outflow_0,2,2,6,4
   + Classic_commodity_outflow_0,2,3,6,4
   + Classic_commodity_outflow_1,2,1,6,4
   + Classic_commodity_outflow_1,2,2,6,4
   + Classic_commodity_outflow_1,2,3,6,4
   - Classic_commodity_inflow_0,1,2,3,4
   - Classic_commodity_inflow_0,2,2,5,4
   - Classic_commodity_inflow_0,3,2,5,4
   - Classic_commodity_inflow_1,1,2,3,4
   - Classic_commodity_inflow_1,2,2,5,4
   - Classic_commodity_inflow_1,3,2,5,4 <= 0
 SC_lossless_mass_balance_x_node2_time6_vehicle0:
   sc_commodity_outflow_0,2,1,6 + sc_commodity_outflow_0,2,2,6
   + sc_commodity_outflow_0,2,3,6 - sc_commodity_inflow_0,1,2,3
   - sc_commodity_inflow_0,2,2,5 - sc_commodity_inflow_0,3,2,5 = 0
 SC_lossless_mass_balance_x_node2_time6_vehicle1:
   sc_commodity_outflow_1,2,1,6 + sc_commodity_outflow_1,2,2,6
   + sc_commodity_outflow_1,2,3,6 - sc_commodity_inflow_1,1,2,3
   - sc_commodity_inflow_1,2,2,5 - sc_commodity_inflow_1,3,2,5 = 0
 mass_balance_x_node2_time7_comm0: Classic_commodity_outflow_0,2,1,7,0
   + Classic_commodity_outflow_0,2,2,7,0
   + Classic_commodity_outflow_0,2,3,7,0
   + Classic_commodity_outflow_1,2,1,7,0
   + Classic_commodity_outflow_1,2,2,7,0
   + Classic_commodity_outflow_1,2,3,7,0
   - Classic_commodity_inflow_0,1,2,4,0
   - Classic_commodity_inflow_0,2,2,6,0
   - Classic_commodity_inflow_0,3,2,6,0
   - Classic_commodity_inflow_1,1,2,4,0
   - Classic_commodity_inflow_1,2,2,6,0
   - Classic_commodity_inflow_1,3,2,6,0 <= 0
 mass_balance_x_node2_time7_comm1: Classic_commodity_outflow_0,2,1,7,1
   + Classic_commodity_outflow_0,2,2,7,1
   + Classic_commodity_outflow_0,2,3,7,1
   + Classic_commodity_outflow_1,2,1,7,1
   + Classic_commodity_outflow_1,2,2,7,1
   + Classic_commodity_outflow_1,2,3,7,1
   - Classic_commodity_inflow_0,1,2,4,1
   - Classic_commodity_inflow_0,2,2,6,1
   - Classic_commodity_inflow_0,3,2,6,1
   - Classic_commodity_inflow_1,1,2,4,1
   - Classic_commodity_inflow_1,2,2,6,1
   - Classic_commodity_inflow_1,3,2,6,1 <= 0
 mass_balance_x_node2_time7_comm2: Classic_commodity_outflow_0,2,1,7,2
   + Classic_commodity_outflow_0,2,2,7,2
   + Classic_commodity_outflow_0,2,3,7,2
   + Classic_commodity_outflow_1,2,1,7,2
   + Classic_commodity_outflow_1,2,2,7,2
   + Classic_commodity_outflow_1,2,3,7,2
   - Classic_commodity_inflow_0,1,2,4,2
   - Classic_commodity_inflow_0,2,2,6,2
   - Classic_commodity_inflow_0,3,2,6,2
   - Classic_commodity_inflow_1,1,2,4,2
   - Classic_commodity_inflow_1,2,2,6,2
   - Classic_commodity_inflow_1,3,2,6,2 <= 0
 mass_balance_x_node2_time7_comm3: Classic_commodity_outflow_0,2,1,7,3
   + Classic_commodity_outflow_0,2,2,7,3
   + Classic_commodity_outflow_0,2,3,7,3
   + Classic_commodity_outflow_1,2,1,7,3
   + Classic_commodity_outflow_1,2,2,7,3
   + Classic_commodity_outflow_1,2,3,7,3
   - Classic_commodity_inflow_0,1,2,4,3
   - Classic_commodity_inflow_0,2,2,6,3
   - Classic_commodity_inflow_0,3,2,6,3
   - Classic_commodity_inflow_1,1,2,4,3
   - Classic_commodity_inflow_1,2,2,6,3
   - Classic_commodity_inflow_1,3,2,6,3 <= 0
 mass_balance_x_node2_time7_comm4: Classic_commodity_outflow_0,2,1,7,4
   + Classic_commodity_outflow_0,2,2,7,4
   + Classic_commodity_outflow_0,2,3,7,4
   + Classic_commodity_outflow_1,2,1,7,4
   + Classic_commodity_outflow_1,2,2,7,4
   + Classic_commodity_outflow_1,2,3,7,4
   - Classic_commodity_inflow_0,1,2,4,4
   - Classic_commodity_inflow_0,2,2,6,4
   - Classic_commodity_inflow_0,3,2,6,4
   - Classic_commodity_inflow_1,1,2,4,4
   - Classic_commodity_inflow_1,2,2,6,4
   - Classic_commodity_inflow_1,3,2,6,4 <= 0
 SC_lossless_mass_balance_x_node2_time7_vehicle0:
   sc_commodity_outflow_0,2,1,7 + sc_commodity_outflow_0,2,2,7
   + sc_commodity_outflow_0,2,3,7 - sc_commodity_inflow_0,1,2,4
   - sc_commodity_inflow_0,2,2,6 - sc_commodity_inflow_0,3,2,6 = 0
 SC_lossless_mass_balance_x_node2_time7_vehicle1:
   sc_commodity_outflow_1,2,1,7 + sc_commodity_outflow_1,2,2,7
   + sc_commodity_outflow_1,2,3,7 - sc_commodity_inflow_1,1,2,4
   - sc_commodity_inflow_1,2,2,6 - sc_commodity_inflow_1,3,2,6 = 0
 mass_balance_x_node2_time8_comm0: Classic_commodity_outflow_0,2,1,8,0
   + Classic_commodity_outflow_0,2,2,8,0
   + Classic_commodity_outflow_0,2,3,8,0
   + Classic_commodity_outflow_1,2,1,8,0
   + Classic_commodity_outflow_1,2,2,8,0
   + Classic_commodity_outflow_1,2,3,8,0
   - Classic_commodity_inflow_0,1,2,5,0
   - Classic_commodity_inflow_0,2,2,7,0
   - Classic_commodity_inflow_0,3,2,7,0
   - Classic_commodity_inflow_1,1,2,5,0
   - Classic_commodity_inflow_1,2,2,7,0
   - Classic_commodity_inflow_1,3,2,7,0 <= 0
 mass_balance_x_node2_time8_comm1: Classic_commodity_outflow_0,2,1,8,1
   + Classic_commodity_outflow_0,2,2,8,1
   + Classic_commodity_outflow_0,2,3,8,1
   + Classic_commodity_outflow_1,2,1,8,1
   + Classic_commodity_outflow_1,2,2,8,1
   + Classic_commodity_outflow_1,2,3,8,1
   - Classic_commodity_inflow_0,1,2,5,1
   - Classic_commodity_inflow_0,2,2,7,1
   - Classic_commodity_inflow_0,3,2,7,1
   - Classic_commodity_inflow_1,1,2,5,1
   - Classic_commodity_inflow_1,2,2,7,1
   - Classic_commodity_inflow_1,3,2,7,1 <= 0
 mass_balance_x_node2_time8_comm2: Classic_commodity_outflow_0,2,1,8,2
   + Classic_commodity_outflow_0,2,2,8,2
   + Classic_commodity_outflow_0,2,3,8,2
   + Classic_commodity_outflow_1,2,1,8,2
   + Classic_commodity_outflow_1,2,2,8,2
   + Classic_commodity_outflow_1,2,3,8,2
   - Classic_commodity_inflow_0,1,2,5,2
   - Classic_commodity_inflow_0,2,2,7,2
   - Classic_commodity_inflow_0,3,2,7,2
   - Classic_commodity_inflow_1,1,2,5,2
   - Classic_commodity_inflow_1,2,2,7,2
   - Classic_commodity_inflow_1,3,2,7,2 <= 0
 mass_balance_x_node2_time8_comm3: Classic_commodity_outflow_0,2,1,8,3
   + Classic_commodity_outflow_0,2,2,8,3
   + Classic_commodity_outflow_0,2,3,8,3
   + Classic_commodity_outflow_1,2,1,8,3
   + Classic_commodity_outflow_1,2,2,8,3
   + Classic_commodity_outflow_1,2,3,8,3
   - Classic_commodity_inflow_0,1,2,5,3
   - Classic_commodity_inflow_0,2,2,7,3
   - Classic_commodity_inflow_0,3,2,7,3
   - Classic_commodity_inflow_1,1,2,5,3
   - Classic_commodity_inflow_1,2,2,7,3
   - Classic_commodity_inflow_1,3,2,7,3 <= 0
 mass_balance_x_node2_time8_comm4: Classic_commodity_outflow_0,2,1,8,4
   + Classic_commodity_outflow_0,2,2,8,4
   + Classic_commodity_outflow_0,2,3,8,4
   + Classic_commodity_outflow_1,2,1,8,4
   + Classic_commodity_outflow_1,2,2,8,4
   + Classic_commodity_outflow_1,2,3,8,4
   - Classic_commodity_inflow_0,1,2,5,4
   - Classic_commodity_inflow_0,2,2,7,4
   - Classic_commodity_inflow_0,3,2,7,4
   - Classic_commodity_inflow_1,1,2,5,4
   - Classic_commodity_inflow_1,2,2,7,4
   - Classic_commodity_inflow_1,3,2,7,4 <= 0
 SC_lossless_mass_balance_x_node2_time8_vehicle0:
   sc_commodity_outflow_0,2,1,8 + sc_commodity_outflow_0,2,2,8
   + sc_commodity_outflow_0,2,3,8 - sc_commodity_inflow_0,1,2,5
   - sc_commodity_inflow_0,2,2,7 - sc_commodity_inflow_0,3,2,7 = 0
 SC_lossless_mass_balance_x_node2_time8_vehicle1:
   sc_commodity_outflow_1,2,1,8 + sc_commodity_outflow_1,2,2,8
   + sc_commodity_outflow_1,2,3,8 - sc_commodity_inflow_1,1,2,5
   - sc_commodity_inflow_1,2,2,7 - sc_commodity_inflow_1,3,2,7 = 0
 mass_balance_x_node2_time9_comm0: Classic_commodity_outflow_0,2,2,9,0
   + Classic_commodity_outflow_0,2,3,9,0
   + Classic_commodity_outflow_1,2,2,9,0
   + Classic_commodity_outflow_1,2,3,9,0
   - Classic_commodity_inflow_0,1,2,6,0
   - Classic_commodity_inflow_0,2,2,8,0
   - Classic_commodity_inflow_0,3,2,8,0
   - Classic_commodity_inflow_1,1,2,6,0
   - Classic_commodity_inflow_1,2,2,8,0
   - Classic_commodity_inflow_1,3,2,8,0 <= 0
 mass_balance_x_node2_time9_comm1: Classic_commodity_outflow_0,2,2,9,1
   + Classic_commodity_outflow_0,2,3,9,1
   + Classic_commodity_outflow_1,2,2,9,1
   + Classic_commodity_outflow_1,2,3,9,1
   - Classic_commodity_inflow_0,1,2,6,1
   - Classic_commodity_inflow_0,2,2,8,1
   - Classic_commodity_inflow_0,3,2,8,1
   - Classic_commodity_inflow_1,1,2,6,1
   - Classic_commodity_inflow_1,2,2,8,1
   - Classic_commodity_inflow_1,3,2,8,1 <= 0
 mass_balance_x_node2_time9_comm2: Classic_commodity_outflow_0,2,2,9,2
   + Classic_commodity_outflow_0,2,3,9,2
   + Classic_commodity_outflow_1,2,2,9,2
   + Classic_commodity_outflow_1,2,3,9,2
   - Classic_commodity_inflow_0,1,2,6,2
   - Classic_commodity_inflow_0,2,2,8,2
   - Classic_commodity_inflow_0,3,2,8,2
   - Classic_commodity_inflow_1,1,2,6,2
   - Classic_commodity_inflow_1,2,2,8,2
   - Classic_commodity_inflow_1,3,2,8,2 <= 0
 mass_balance_x_node2_time9_comm3: Classic_commodity_outflow_0,2,2,9,3
   + Classic_commodity_outflow_0,2,3,9,3
   + Classic_commodity_outflow_1,2,2,9,3
   + Classic_commodity_outflow_1,2,3,9,3
   - Classic_commodity_inflow_0,1,2,6,3
   - Classic_commodity_inflow_0,2,2,8,3
   - Classic_commodity_inflow_0,3,2,8,3
   - Classic_commodity_inflow_1,1,2,6,3
   - Classic_commodity_inflow_1,2,2,8,3
   - Classic_commodity_inflow_1,3,2,8,3 <= 0
 mass_balance_x_node2_time9_comm4: Classic_commodity_outflow_0,2,2,9,4
   + Classic_commodity_outflow_0,2,3,9,4
   + Classic_commodity_outflow_1,2,2,9,4
   + Classic_commodity_outflow_1,2,3,9,4
   - Classic_commodity_inflow_0,1,2,6,4
   - Classic_commodity_inflow_0,2,2,8,4
   - Classic_commodity_inflow_0,3,2,8,4
   - Classic_commodity_inflow_1,1,2,6,4
   - Classic_commodity_inflow_1,2,2,8,4
   - Classic_commodity_inflow_1,3,2,8,4 <= 0
 SC_lossless_mass_balance_x_node2_time9_vehicle0:
   sc_commodity_outflow_0,2,2,9 + sc_commodity_outflow_0,2,3,9
   - sc_commodity_inflow_0,1,2,6 - sc_commodity_inflow_0,2,2,8
   - sc_commodity_inflow_0,3,2,8 = 0
 SC_lossless_mass_balance_x_node2_time9_vehicle1:
   sc_commodity_outflow_1,2,2,9 + sc_commodity_outflow_1,2,3,9
   - sc_commodity_inflow_1,1,2,6 - sc_commodity_inflow_1,2,2,8
   - sc_commodity_inflow_1,3,2,8 = 0
 mass_balance_x_node2_time10_comm0: Classic_commodity_outflow_0,2,2,10,0
   + Classic_commodity_outflow_0,2,3,10,0
   + Classic_commodity_outflow_1,2,2,10,0
   + Classic_commodity_outflow_1,2,3,10,0
   - Classic_commodity_inflow_0,1,2,7,0
   - Classic_commodity_inflow_0,2,2,9,0
   - Classic_commodity_inflow_0,3,2,9,0
   - Classic_commodity_inflow_1,1,2,7,0
   - Classic_commodity_inflow_1,2,2,9,0
   - Classic_commodity_inflow_1,3,2,9,0 <= 0
 mass_balance_x_node2_time10_comm1: Classic_commodity_outflow_0,2,2,10,1
   + Classic_commodity_outflow_0,2,3,10,1
   + Classic_commodity_outflow_1,2,2,10,1
   + Classic_commodity_outflow_1,2,3,10,1
   - Classic_commodity_inflow_0,1,2,7,1
   - Classic_commodity_inflow_0,2,2,9,1
   - Classic_commodity_inflow_0,3,2,9,1
   - Classic_commodity_inflow_1,1,2,7,1
   - Classic_commodity_inflow_1,2,2,9,1
   - Classic_commodity_inflow_1,3,2,9,1 <= 0
 mass_balance_x_node2_time10_comm2: Classic_commodity_outflow_0,2,2,10,2
   + Classic_commodity_outflow_0,2,3,10,2
   + Classic_commodity_outflow_1,2,2,10,2
   + Classic_commodity_outflow_1,2,3,10,2
   - Classic_commodity_inflow_0,1,2,7,2
   - Classic_commodity_inflow_0,2,2,9,2
   - Classic_commodity_inflow_0,3,2,9,2
   - Classic_commodity_inflow_1,1,2,7,2
   - Classic_commodity_inflow_1,2,2,9,2
   - Classic_commodity_inflow_1,3,2,9,2 <= 0
 mass_balance_x_node2_time10_comm3: Classic_commodity_outflow_0,2,2,10,3
   + Classic_commodity_outflow_0,2,3,10,3
   + Classic_commodity_outflow_1,2,2,10,3
   + Classic_commodity_outflow_1,2,3,10,3
   - Classic_commodity_inflow_0,1,2,7,3
   - Classic_commodity_inflow_0,2,2,9,3
   - Classic_commodity_inflow_0,3,2,9,3
   - Classic_commodity_inflow_1,1,2,7,3
   - Classic_commodity_inflow_1,2,2,9,3
   - Classic_commodity_inflow_1,3,2,9,3 <= 0
 mass_balance_x_node2_time10_comm4: Classic_commodity_outflow_0,2,2,10,4
   + Classic_commodity_outflow_0,2,3,10,4
   + Classic_commodity_outflow_1,2,2,10,4
   + Classic_commodity_outflow_1,2,3,10,4
   - Classic_commodity_inflow_0,1,2,7,4
   - Classic_commodity_inflow_0,2,2,9,4
   - Classic_commodity_inflow_0,3,2,9,4
   - Classic_commodity_inflow_1,1,2,7,4
   - Classic_commodity_inflow_1,2,2,9,4
   - Classic_commodity_inflow_1,3,2,9,4 <= 0
 SC_lossless_mass_balance_x_node2_time10_vehicle0:
   sc_commodity_outflow_0,2,2,10 + sc_commodity_outflow_0,2,3,10
   - sc_commodity_inflow_0,1,2,7 - sc_commodity_inflow_0,2,2,9
   - sc_commodity_inflow_0,3,2,9 = 0
 SC_lossless_mass_balance_x_node2_time10_vehicle1:
   sc_commodity_outflow_1,2,2,10 + sc_commodity_outflow_1,2,3,10
   - sc_commodity_inflow_1,1,2,7 - sc_commodity_inflow_1,2,2,9
   - sc_commodity_inflow_1,3,2,9 = 0
 mass_balance_x_node2_time11_comm0: - Classic_commodity_inflow_0,1,2,8,0
   - Classic_commodity_inflow_0,2,2,10,0
   - Classic_commodity_inflow_0,3,2,10,0
   - Classic_commodity_inflow_1,1,2,8,0
   - Classic_commodity_inflow_1,2,2,10,0
   - Classic_commodity_inflow_1,3,2,10,0 <= 0
 mass_balance_x_node2_time11_comm1: - Classic_commodity_inflow_0,1,2,8,1
   - Classic_commodity_inflow_0,2,2,10,1
   - Classic_commodity_inflow_0,3,2,10,1
   - Classic_commodity_inflow_1,1,2,8,1
   - Classic_commodity_inflow_1,2,2,10,1
   - Classic_commodity_inflow_1,3,2,10,1 <= 0
 mass_balance_x_node2_time11_comm2: - Classic_commodity_inflow_0,1,2,8,2
   - Classic_commodity_inflow_0,2,2,10,2
   - Classic_commodity_inflow_0,3,2,10,2
   - Classic_commodity_inflow_1,1,2,8,2
   - Classic_commodity_inflow_1,2,2,10,2
   - Classic_commodity_inflow_1,3,2,10,2 <= 0
 mass_balance_x_node2_time11_comm3: - Classic_commodity_inflow_0,1,2,8,3
   - Classic_commodity_inflow_0,2,2,10,3
   - Classic_commodity_inflow_0,3,2,10,3
   - Classic_commodity_inflow_1,1,2,8,3
   - Classic_commodity_inflow_1,2,2,10,3
   - Classic_commodity_inflow_1,3,2,10,3 <= 0
 mass_balance_x_node2_time11_comm4: - Classic_commodity_inflow_0,1,2,8,4
   - Classic_commodity_inflow_0,2,2,10,4
   - Classic_commodity_inflow_0,3,2,10,4
   - Classic_commodity_inflow_1,1,2,8,4
   - Classic_commodity_inflow_1,2,2,10,4
   - Classic_commodity_inflow_1,3,2,10,4 <= 0
 SC_mass_balance_x_node2_time11_vehicle0: - sc_commodity_inflow_0,1,2,8
   - sc_commodity_inflow_0,2,2,10 - sc_commodity_inflow_0,3,2,10 <= 0
 SC_mass_balance_x_node2_time11_vehicle1: - sc_commodity_inflow_1,1,2,8
   - sc_commodity_inflow_1,2,2,10 - sc_commodity_inflow_1,3,2,10 <= 0
 mass_balance_x_node3_time0_comm0: Classic_commodity_outflow_0,3,2,0,0
   + Classic_commodity_outflow_0,3,3,0,0
   + Classic_commodity_outflow_1,3,2,0,0
   + Classic_commodity_outflow_1,3,3,0,0 <= 0
 mass_balance_x_node3_time0_comm1: Classic_commodity_outflow_0,3,2,0,1
   + Classic_commodity_outflow_0,3,3,0,1
   + Classic_commodity_outflow_1,3,2,0,1
   + Classic_commodity_outflow_1,3,3,0,1 <= 0
 mass_balance_x_node3_time0_comm2: Classic_commodity_outflow_0,3,2,0,2
   + Classic_commodity_outflow_0,3,3,0,2
   + Classic_commodity_outflow_1,3,2,0,2
   + Classic_commodity_outflow_1,3,3,0,2 <= 0
 mass_balance_x_node3_time0_comm3: Classic_commodity_outflow_0,3,2,0,3
   + Classic_commodity_outflow_0,3,3,0,3
   + Classic_commodity_outflow_1,3,2,0,3
   + Classic_commodity_outflow_1,3,3,0,3 <= 999999
 mass_balance_x_node3_time0_comm4: Classic_commodity_outflow_0,3,2,0,4
   + Classic_commodity_outflow_0,3,3,0,4
   + Classic_commodity_outflow_1,3,2,0,4
   + Classic_commodity_outflow_1,3,3,0,4 <= 0
 SC_lossless_mass_balance_x_node3_time0_vehicle0:
   sc_commodity_outflow_0,3,2,0 + sc_commodity_outflow_0,3,3,0 = 0
 SC_lossless_mass_balance_x_node3_time0_vehicle1:
   sc_commodity_outflow_1,3,2,0 + sc_commodity_outflow_1,3,3,0 = 0
 mass_balance_x_node3_time1_comm0: Classic_commodity_outflow_0,3,2,1,0
   + Classic_commodity_outflow_0,3,3,1,0
   + Classic_commodity_outflow_1,3,2,1,0
   + Classic_commodity_outflow_1,3,3,1,0
   - Classic_commodity_inflow_0,2,3,0,0
   - Classic_commodity_inflow_0,3,3,0,0
   - Classic_commodity_inflow_1,2,3,0,0
   - Classic_commodity_inflow_1,3,3,0,0 <= 0
 mass_balance_x_node3_time1_comm1: Classic_commodity_outflow_0,3,2,1,1
   + Classic_commodity_outflow_0,3,3,1,1
   + Classic_commodity_outflow_1,3,2,1,1
   + Classic_commodity_outflow_1,3,3,1,1
   - Classic_commodity_inflow_0,2,3,0,1
   - Classic_commodity_inflow_0,3,3,0,1
   - Classic_commodity_inflow_1,2,3,0,1
   - Classic_commodity_inflow_1,3,3,0,1 <= 0
 mass_balance_x_node3_time1_comm2: Classic_commodity_outflow_0,3,2,1,2
   + Classic_commodity_outflow_0,3,3,1,2
   + Classic_commodity_outflow_1,3,2,1,2
   + Classic_commodity_outflow_1,3,3,1,2
   - Classic_commodity_inflow_0,2,3,0,2
   - Classic_commodity_inflow_0,3,3,0,2
   - Classic_commodity_inflow_1,2,3,0,2
   - Classic_commodity_inflow_1,3,3,0,2 <= 0
 mass_balance_x_node3_time1_comm3: Classic_commodity_outflow_0,3,2,1,3
   + Classic_commodity_outflow_0,3,3,1,3
   + Classic_commodity_outflow_1,3,2,1,3
   + Classic_commodity_outflow_1,3,3,1,3
   - Classic_commodity_inflow_0,2,3,0,3
   - Classic_commodity_inflow_0,3,3,0,3
   - Classic_commodity_inflow_1,2,3,0,3
   - Classic_commodity_inflow_1,3,3,0,3 <= 999999
 mass_balance_x_node3_time1_comm4: Classic_commodity_outflow_0,3,2,1,4
   + Classic_commodity_outflow_0,3,3,1,4
   + Classic_commodity_outflow_1,3,2,1,4
   + Classic_commodity_outflow_1,3,3,1,4
   - Classic_commodity_inflow_0,2,3,0,4
   - Classic_commodity_inflow_0,3,3,0,4
   - Classic_commodity_inflow_1,2,3,0,4
   - Classic_commodity_inflow_1,3,3,0,4 <= 0
 SC_lossless_mass_balance_x_node3_time1_vehicle0:
   sc_commodity_outflow_0,3,2,1 + sc_commodity_outflow_0,3,3,1
   - sc_commodity_inflow_0,2,3,0 - sc_commodity_inflow_0,3,3,0 = 0
 SC_lossless_mass_balance_x_node3_time1_vehicle1:
   sc_commodity_outflow_1,3,2,1 + sc_commodity_outflow_1,3,3,1
   - sc_commodity_inflow_1,2,3,0 - sc_commodity_inflow_1,3,3,0 = 0
 mass_balance_x_node3_time2_comm0: Classic_commodity_outflow_0,3,2,2,0
   + Classic_commodity_outflow_0,3,3,2,0
   + Classic_commodity_outflow_1,3,2,2,0
   + Classic_commodity_outflow_1,3,3,2,0
   - Classic_commodity_inflow_0,2,3,1,0
   - Classic_commodity_inflow_0,3,3,1,0
   - Classic_commodity_inflow_1,2,3,1,0
   - Classic_commodity_inflow_1,3,3,1,0 <= 0
 mass_balance_x_node3_time2_comm1: Classic_commodity_outflow_0,3,2,2,1
   + Classic_commodity_outflow_0,3,3,2,1
   + Classic_commodity_outflow_1,3,2,2,1
   + Classic_commodity_outflow_1,3,3,2,1
   - Classic_commodity_inflow_0,2,3,1,1
   - Classic_commodity_inflow_0,3,3,1,1
   - Classic_commodity_inflow_1,2,3,1,1
   - Classic_commodity_inflow_1,3,3,1,1 <= 0
 mass_balance_x_node3_time2_comm2: Classic_commodity_outflow_0,3,2,2,2
   + Classic_commodity_outflow_0,3,3,2,2
   + Classic_commodity_outflow_1,3,2,2,2
   + Classic_commodity_outflow_1,3,3,2,2
   - Classic_commodity_inflow_0,2,3,1,2
   - Classic_commodity_inflow_0,3,3,1,2
   - Classic_commodity_inflow_1,2,3,1,2
   - Classic_commodity_inflow_1,3,3,1,2 <= 0
 mass_balance_x_node3_time2_comm3: Classic_commodity_outflow_0,3,2,2,3
   + Classic_commodity_outflow_0,3,3,2,3
   + Classic_commodity_outflow_1,3,2,2,3
   + Classic_commodity_outflow_1,3,3,2,3
   - Classic_commodity_inflow_0,2,3,1,3
   - Classic_commodity_inflow_0,3,3,1,3
   - Classic_commodity_inflow_1,2,3,1,3
   - Classic_commodity_inflow_1,3,3,1,3 <= 999999
 mass_balance_x_node3_time2_comm4: Classic_commodity_outflow_0,3,2,2,4
   + Classic_commodity_outflow_0,3,3,2,4
   + Classic_commodity_outflow_1,3,2,2,4
   + Classic_commodity_outflow_1,3,3,2,4
   - Classic_commodity_inflow_0,2,3,1,4
   - Classic_commodity_inflow_0,3,3,1,4
   - Classic_commodity_inflow_1,2,3,1,4
   - Classic_commodity_inflow_1,3,3,1,4 <= 0
 SC_lossless_mass_balance_x_node3_time2_vehicle0:
   sc_commodity_outflow_0,3,2,2 + sc_commodity_outflow_0,3,3,2
   - sc_commodity_inflow_0,2,3,1 - sc_commodity_inflow_0,3,3,1 = 0
 SC_lossless_mass_balance_x_node3_time2_vehicle1:
   sc_commodity_outflow_1,3,2,2 + sc_commodity_outflow_1,3,3,2
   - sc_commodity_inflow_1,2,3,1 - sc_commodity_inflow_1,3,3,1 = 0
 mass_balance_x_node3_time3_comm0: Classic_commodity_outflow_0,3,2,3,0
   + Classic_commodity_outflow_0,3,3,3,0
   + Classic_commodity_outflow_1,3,2,3,0
   + Classic_commodity_outflow_1,3,3,3,0
   - Classic_commodity_inflow_0,2,3,2,0
   - Classic_commodity_inflow_0,3,3,2,0
   - Classic_commodity_inflow_1,2,3,2,0
   - Classic_commodity_inflow_1,3,3,2,0 <= 0
 mass_balance_x_node3_time3_comm1: Classic_commodity_outflow_0,3,2,3,1
   + Classic_commodity_outflow_0,3,3,3,1
   + Classic_commodity_outflow_1,3,2,3,1
   + Classic_commodity_outflow_1,3,3,3,1
   - Classic_commodity_inflow_0,2,3,2,1
   - Classic_commodity_inflow_0,3,3,2,1
   - Classic_commodity_inflow_1,2,3,2,1
   - Classic_commodity_inflow_1,3,3,2,1 <= 0
 mass_balance_x_node3_time3_comm2: Classic_commodity_outflow_0,3,2,3,2
   + Classic_commodity_outflow_0,3,3,3,2
   + Classic_commodity_outflow_1,3,2,3,2
   + Classic_commodity_outflow_1,3,3,3,2
   - Classic_commodity_inflow_0,2,3,2,2
   - Classic_commodity_inflow_0,3,3,2,2
   - Classic_commodity_inflow_1,2,3,2,2
   - Classic_commodity_inflow_1,3,3,2,2 <= 0
 mass_balance_x_node3_time3_comm3: Classic_commodity_outflow_0,3,2,3,3
   + Classic_commodity_outflow_0,3,3,3,3
   + Classic_commodity_outflow_1,3,2,3,3
   + Classic_commodity_outflow_1,3,3,3,3
   - Classic_commodity_inflow_0,2,3,2,3
   - Classic_commodity_inflow_0,3,3,2,3
   - Classic_commodity_inflow_1,2,3,2,3
   - Classic_commodity_inflow_1,3,3,2,3 <= 999999
 mass_balance_x_node3_time3_comm4: Classic_commodity_outflow_0,3,2,3,4
   + Classic_commodity_outflow_0,3,3,3,4
   + Classic_commodity_outflow_1,3,2,3,4
   + Classic_commodity_outflow_1,3,3,3,4
   - Classic_commodity_inflow_0,2,3,2,4
   - Classic_commodity_inflow_0,3,3,2,4
   - Classic_commodity_inflow_1,2,3,2,4
   - Classic_commodity_inflow_1,3,3,2,4 <= 0
 SC_lossless_mass_balance_x_node3_time3_vehicle0:
   sc_commodity_outflow_0,3,2,3 + sc_commodity_outflow_0,3,3,3
   - sc_commodity_inflow_0,2,3,2 - sc_commodity_inflow_0,3,3,2 = 0
 SC_lossless_mass_balance_x_node3_time3_vehicle1:
   sc_commodity_outflow_1,3,2,3 + sc_commodity_outflow_1,3,3,3
   - sc_commodity_inflow_1,2,3,2 - sc_commodity_inflow_1,3,3,2 = 0
 mass_balance_x_node3_time4_comm0: Classic_commodity_outflow_0,3,2,4,0
   + Classic_commodity_outflow_0,3,3,4,0
   + Classic_commodity_outflow_1,3,2,4,0
   + Classic_commodity_outflow_1,3,3,4,0
   - Classic_commodity_inflow_0,2,3,3,0
   - Classic_commodity_inflow_0,3,3,3,0
   - Classic_commodity_inflow_1,2,3,3,0
   - Classic_commodity_inflow_1,3,3,3,0 <= -2
 mass_balance_x_node3_time4_comm1: Classic_commodity_outflow_0,3,2,4,1
   + Classic_commodity_outflow_0,3,3,4,1
   + Classic_commodity_outflow_1,3,2,4,1
   + Classic_commodity_outflow_1,3,3,4,1
   - Classic_commodity_inflow_0,2,3,3,1
   - Classic_commodity_inflow_0,3,3,3,1
   - Classic_commodity_inflow_1,2,3,3,1
   - Classic_commodity_inflow_1,3,3,3,1 <= 0
 mass_balance_x_node3_time4_comm2: Classic_commodity_outflow_0,3,2,4,2
   + Classic_commodity_outflow_0,3,3,4,2
   + Classic_commodity_outflow_1,3,2,4,2
   + Classic_commodity_outflow_1,3,3,4,2
   - Classic_commodity_inflow_0,2,3,3,2
   - Classic_commodity_inflow_0,3,3,3,2
   - Classic_commodity_inflow_1,2,3,3,2
   - Classic_commodity_inflow_1,3,3,3,2 <= -420
 mass_balance_x_node3_time4_comm3: Classic_commodity_outflow_0,3,2,4,3
   + Classic_commodity_outflow_0,3,3,4,3
   + Classic_commodity_outflow_1,3,2,4,3
   + Classic_commodity_outflow_1,3,3,4,3
   - Classic_commodity_inflow_0,2,3,3,3
   - Classic_commodity_inflow_0,3,3,3,3
   - Classic_commodity_inflow_1,2,3,3,3
   - Classic_commodity_inflow_1,3,3,3,3 <= 999999
 mass_balance_x_node3_time4_comm4: Classic_commodity_outflow_0,3,2,4,4
   + Classic_commodity_outflow_0,3,3,4,4
   + Classic_commodity_outflow_1,3,2,4,4
   + Classic_commodity_outflow_1,3,3,4,4
   - Classic_commodity_inflow_0,2,3,3,4
   - Classic_commodity_inflow_0,3,3,3,4
   - Classic_commodity_inflow_1,2,3,3,4
   - Classic_commodity_inflow_1,3,3,3,4 <= 0
 SC_lossless_mass_balance_x_node3_time4_vehicle0:
   sc_commodity_outflow_0,3,2,4 + sc_commodity_outflow_0,3,3,4
   - sc_commodity_inflow_0,2,3,3 - sc_commodity_inflow_0,3,3,3 = 0
 SC_lossless_mass_balance_x_node3_time4_vehicle1:
   sc_commodity_outflow_1,3,2,4 + sc_commodity_outflow_1,3,3,4
   - sc_commodity_inflow_1,2,3,3 - sc_commodity_inflow_1,3,3,3 = 0
 mass_balance_x_node3_time5_comm0: Classic_commodity_outflow_0,3,2,5,0
   + Classic_commodity_outflow_0,3,3,5,0
   + Classic_commodity_outflow_1,3,2,5,0
   + Classic_commodity_outflow_1,3,3,5,0
   - Classic_commodity_inflow_0,2,3,4,0
   - Classic_commodity_inflow_0,3,3,4,0
   - Classic_commodity_inflow_1,2,3,4,0
   - Classic_commodity_inflow_1,3,3,4,0 <= 2
 mass_balance_x_node3_time5_comm1: Classic_commodity_outflow_0,3,2,5,1
   + Classic_commodity_outflow_0,3,3,5,1
   + Classic_commodity_outflow_1,3,2,5,1
   + Classic_commodity_outflow_1,3,3,5,1
   - Classic_commodity_inflow_0,2,3,4,1
   - Classic_commodity_inflow_0,3,3,4,1
   - Classic_commodity_inflow_1,2,3,4,1
   - Classic_commodity_inflow_1,3,3,4,1 <= 0
 mass_balance_x_node3_time5_comm2: Classic_commodity_outflow_0,3,2,5,2
   + Classic_commodity_outflow_0,3,3,5,2
   + Classic_commodity_outflow_1,3,2,5,2
   + Classic_commodity_outflow_1,3,3,5,2
   - Classic_commodity_inflow_0,2,3,4,2
   - Classic_commodity_inflow_0,3,3,4,2
   - Classic_commodity_inflow_1,2,3,4,2
   - Classic_commodity_inflow_1,3,3,4,2 <= 0
 mass_balance_x_node3_time5_comm3: Classic_commodity_outflow_0,3,2,5,3
   + Classic_commodity_outflow_0,3,3,5,3
   + Classic_commodity_outflow_1,3,2,5,3
   + Classic_commodity_outflow_1,3,3,5,3
   - Classic_commodity_inflow_0,2,3,4,3
   - Classic_commodity_inflow_0,3,3,4,3
   - Classic_commodity_inflow_1,2,3,4,3
   - Classic_commodity_inflow_1,3,3,4,3 <= 999999
 mass_balance_x_node3_time5_comm4: Classic_commodity_outflow_0,3,2,5,4
   + Classic_commodity_outflow_0,3,3,5,4
   + Classic_commodity_outflow_1,3,2,5,4
   + Classic_commodity_outflow_1,3,3,5,4
   - Classic_commodity_inflow_0,2,3,4,4
   - Classic_commodity_inflow_0,3,3,4,4
   - Classic_commodity_inflow_1,2,3,4,4
   - Classic_commodity_inflow_1,3,3,4,4 <= 0
 SC_lossless_mass_balance_x_node3_time5_vehicle0:
   sc_commodity_outflow_0,3,2,5 + sc_commodity_outflow_0,3,3,5
   - sc_commodity_inflow_0,2,3,4 - sc_commodity_inflow_0,3,3,4 = 0
 SC_lossless_mass_balance_x_node3_time5_vehicle1:
   sc_commodity_outflow_1,3,2,5 + sc_commodity_outflow_1,3,3,5
   - sc_commodity_inflow_1,2,3,4 - sc_commodity_inflow_1,3,3,4 = 0
 mass_balance_x_node3_time6_comm0: Classic_commodity_outflow_0,3,2,6,0
   + Classic_commodity_outflow_0,3,3,6,0
   + Classic_commodity_outflow_1,3,2,6,0
   + Classic_commodity_outflow_1,3,3,6,0
   - Classic_commodity_inflow_0,2,3,5,0
   - Classic_commodity_inflow_0,3,3,5,0
   - Classic_commodity_inflow_1,2,3,5,0
   - Classic_commodity_inflow_1,3,3,5,0 <= 0
 mass_balance_x_node3_time6_comm1: Classic_commodity_outflow_0,3,2,6,1
   + Classic_commodity_outflow_0,3,3,6,1
   + Classic_commodity_outflow_1,3,2,6,1
   + Classic_commodity_outflow_1,3,3,6,1
   - Classic_commodity_inflow_0,2,3,5,1
   - Classic_commodity_inflow_0,3,3,5,1
   - Classic_commodity_inflow_1,2,3,5,1
   - Classic_commodity_inflow_1,3,3,5,1 <= 0
 mass_balance_x_node3_time6_comm2: Classic_commodity_outflow_0,3,2,6,2
   + Classic_commodity_outflow_0,3,3,6,2
   + Classic_commodity_outflow_1,3,2,6,2
   + Classic_commodity_outflow_1,3,3,6,2
   - Classic_commodity_inflow_0,2,3,5,2
   - Classic_commodity_inflow_0,3,3,5,2
   - Classic_commodity_inflow_1,2,3,5,2
   - Classic_commodity_inflow_1,3,3,5,2 <= 0
 mass_balance_x_node3_time6_comm3: Classic_commodity_outflow_0,3,2,6,3
   + Classic_commodity_outflow_0,3,3,6,3
   + Classic_commodity_outflow_1,3,2,6,3
   + Classic_commodity_outflow_1,3,3,6,3
   - Classic_commodity_inflow_0,2,3,5,3
   - Classic_commodity_inflow_0,3,3,5,3
   - Classic_commodity_inflow_1,2,3,5,3
   - Classic_commodity_inflow_1,3,3,5,3 <= 999999
 mass_balance_x_node3_time6_comm4: Classic_commodity_outflow_0,3,2,6,4
   + Classic_commodity_outflow_0,3,3,6,4
   + Classic_commodity_outflow_1,3,2,6,4
   + Classic_commodity_outflow_1,3,3,6,4
   - Classic_commodity_inflow_0,2,3,5,4
   - Classic_commodity_inflow_0,3,3,5,4
   - Classic_commodity_inflow_1,2,3,5,4
   - Classic_commodity_inflow_1,3,3,5,4 <= 0
 SC_lossless_mass_balance_x_node3_time6_vehicle0:
   sc_commodity_outflow_0,3,2,6 + sc_commodity_outflow_0,3,3,6
   - sc_commodity_inflow_0,2,3,5 - sc_commodity_inflow_0,3,3,5 = 0
 SC_lossless_mass_balance_x_node3_time6_vehicle1:
   sc_commodity_outflow_1,3,2,6 + sc_commodity_outflow_1,3,3,6
   - sc_commodity_inflow_1,2,3,5 - sc_commodity_inflow_1,3,3,5 = 0
 mass_balance_x_node3_time7_comm0: Classic_commodity_outflow_0,3,2,7,0
   + Classic_commodity_outflow_0,3,3,7,0
   + Classic_commodity_outflow_1,3,2,7,0
   + Classic_commodity_outflow_1,3,3,7,0
   - Classic_commodity_inflow_0,2,3,6,0
   - Classic_commodity_inflow_0,3,3,6,0
   - Classic_commodity_inflow_1,2,3,6,0
   - Classic_commodity_inflow_1,3,3,6,0 <= 0
 mass_balance_x_node3_time7_comm1: Classic_commodity_outflow_0,3,2,7,1
   + Classic_commodity_outflow_0,3,3,7,1
   + Classic_commodity_outflow_1,3,2,7,1
   + Classic_commodity_outflow_1,3,3,7,1
   - Classic_commodity_inflow_0,2,3,6,1
   - Classic_commodity_inflow_0,3,3,6,1
   - Classic_commodity_inflow_1,2,3,6,1
   - Classic_commodity_inflow_1,3,3,6,1 <= 0
 mass_balance_x_node3_time7_comm2: Classic_commodity_outflow_0,3,2,7,2
   + Classic_commodity_outflow_0,3,3,7,2
   + Classic_commodity_outflow_1,3,2,7,2
   + Classic_commodity_outflow_1,3,3,7,2
   - Classic_commodity_inflow_0,2,3,6,2
   - Classic_commodity_inflow_0,3,3,6,2
   - Classic_commodity_inflow_1,2,3,6,2
   - Classic_commodity_inflow_1,3,3,6,2 <= 0
 mass_balance_x_node3_time7_comm3: Classic_commodity_outflow_0,3,2,7,3
   + Classic_commodity_outflow_0,3,3,7,3
   + Classic_commodity_outflow_1,3,2,7,3
   + Classic_commodity_outflow_1,3,3,7,3
   - Classic_commodity_inflow_0,2,3,6,3
   - Classic_commodity_inflow_0,3,3,6,3
   - Classic_commodity_inflow_1,2,3,6,3
   - Classic_commodity_inflow_1,3,3,6,3 <= 999999
 mass_balance_x_node3_time7_comm4: Classic_commodity_outflow_0,3,2,7,4
   + Classic_commodity_outflow_0,3,3,7,4
   + Classic_commodity_outflow_1,3,2,7,4
   + Classic_commodity_outflow_1,3,3,7,4
   - Classic_commodity_inflow_0,2,3,6,4
   - Classic_commodity_inflow_0,3,3,6,4
   - Classic_commodity_inflow_1,2,3,6,4
   - Classic_commodity_inflow_1,3,3,6,4 <= 0
 SC_lossless_mass_balance_x_node3_time7_vehicle0:
   sc_commodity_outflow_0,3,2,7 + sc_commodity_outflow_0,3,3,7
   - sc_commodity_inflow_0,2,3,6 - sc_commodity_inflow_0,3,3,6 = 0
 SC_lossless_mass_balance_x_node3_time7_vehicle1:
   sc_commodity_outflow_1,3,2,7 + sc_commodity_outflow_1,3,3,7
   - sc_commodity_inflow_1,2,3,6 - sc_commodity_inflow_1,3,3,6 = 0
 mass_balance_x_node3_time8_comm0: Classic_commodity_outflow_0,3,2,8,0
   + Classic_commodity_outflow_0,3,3,8,0
   + Classic_commodity_outflow_1,3,2,8,0
   + Classic_commodity_outflow_1,3,3,8,0
   - Classic_commodity_inflow_0,2,3,7,0
   - Classic_commodity_inflow_0,3,3,7,0
   - Classic_commodity_inflow_1,2,3,7,0
   - Classic_commodity_inflow_1,3,3,7,0 <= 0
 mass_balance_x_node3_time8_comm1: Classic_commodity_outflow_0,3,2,8,1
   + Classic_commodity_outflow_0,3,3,8,1
   + Classic_commodity_outflow_1,3,2,8,1
   + Classic_commodity_outflow_1,3,3,8,1
   - Classic_commodity_inflow_0,2,3,7,1
   - Classic_commodity_inflow_0,3,3,7,1
   - Classic_commodity_inflow_1,2,3,7,1
   - Classic_commodity_inflow_1,3,3,7,1 <= 0
 mass_balance_x_node3_time8_comm2: Classic_commodity_outflow_0,3,2,8,2
   + Classic_commodity_outflow_0,3,3,8,2
   + Classic_commodity_outflow_1,3,2,8,2
   + Classic_commodity_outflow_1,3,3,8,2
   - Classic_commodity_inflow_0,2,3,7,2
   - Classic_commodity_inflow_0,3,3,7,2
   - Classic_commodity_inflow_1,2,3,7,2
   - Classic_commodity_inflow_1,3,3,7,2 <= 0
 mass_balance_x_node3_time8_comm3: Classic_commodity_outflow_0,3,2,8,3
   + Classic_commodity_outflow_0,3,3,8,3
   + Classic_commodity_outflow_1,3,2,8,3
   + Classic_commodity_outflow_1,3,3,8,3
   - Classic_commodity_inflow_0,2,3,7,3
   - Classic_commodity_inflow_0,3,3,7,3
   - Classic_commodity_inflow_1,2,3,7,3
   - Classic_commodity_inflow_1,3,3,7,3 <= 999999
 mass_balance_x_node3_time8_comm4: Classic_commodity_outflow_0,3,2,8,4
   + Classic_commodity_outflow_0,3,3,8,4
   + Classic_commodity_outflow_1,3,2,8,4
   + Classic_commodity_outflow_1,3,3,8,4
   - Classic_commodity_inflow_0,2,3,7,4
   - Classic_commodity_inflow_0,3,3,7,4
   - Classic_commodity_inflow_1,2,3,7,4
   - Classic_commodity_inflow_1,3,3,7,4 <= 0
 SC_lossless_mass_balance_x_node3_time8_vehicle0:
   sc_commodity_outflow_0,3,2,8 + sc_commodity_outflow_0,3,3,8
   - sc_commodity_inflow_0,2,3,7 - sc_commodity_inflow_0,3,3,7 = 0
 SC_lossless_mass_balance_x_node3_time8_vehicle1:
   sc_commodity_outflow_1,3,2,8 + sc_commodity_outflow_1,3,3,8
   - sc_commodity_inflow_1,2,3,7 - sc_commodity_inflow_1,3,3,7 = 0
 mass_balance_x_node3_time9_comm0: Classic_commodity_outflow_0,3,2,9,0
   + Classic_commodity_outflow_0,3,3,9,0
   + Classic_commodity_outflow_1,3,2,9,0
   + Classic_commodity_outflow_1,3,3,9,0
   - Classic_commodity_inflow_0,2,3,8,0
   - Classic_commodity_inflow_0,3,3,8,0
   - Classic_commodity_inflow_1,2,3,8,0
   - Classic_commodity_inflow_1,3,3,8,0 <= 0
 mass_balance_x_node3_time9_comm1: Classic_commodity_outflow_0,3,2,9,1
   + Classic_commodity_outflow_0,3,3,9,1
   + Classic_commodity_outflow_1,3,2,9,1
   + Classic_commodity_outflow_1,3,3,9,1
   - Classic_commodity_inflow_0,2,3,8,1
   - Classic_commodity_inflow_0,3,3,8,1
   - Classic_commodity_inflow_1,2,3,8,1
   - Classic_commodity_inflow_1,3,3,8,1 <= 0
 mass_balance_x_node3_time9_comm2: Classic_commodity_outflow_0,3,2,9,2
   + Classic_commodity_outflow_0,3,3,9,2
   + Classic_commodity_outflow_1,3,2,9,2
   + Classic_commodity_outflow_1,3,3,9,2
   - Classic_commodity_inflow_0,2,3,8,2
   - Classic_commodity_inflow_0,3,3,8,2
   - Classic_commodity_inflow_1,2,3,8,2
   - Classic_commodity_inflow_1,3,3,8,2 <= 0
 mass_balance_x_node3_time9_comm3: Classic_commodity_outflow_0,3,2,9,3
   + Classic_commodity_outflow_0,3,3,9,3
   + Classic_commodity_outflow_1,3,2,9,3
   + Classic_commodity_outflow_1,3,3,9,3
   - Classic_commodity_inflow_0,2,3,8,3
   - Classic_commodity_inflow_0,3,3,8,3
   - Classic_commodity_inflow_1,2,3,8,3
   - Classic_commodity_inflow_1,3,3,8,3 <= 999999
 mass_balance_x_node3_time9_comm4: Classic_commodity_outflow_0,3,2,9,4
   + Classic_commodity_outflow_0,3,3,9,4
   + Classic_commodity_outflow_1,3,2,9,4
   + Classic_commodity_outflow_1,3,3,9,4
   - Classic_commodity_inflow_0,2,3,8,4
   - Classic_commodity_inflow_0,3,3,8,4
   - Classic_commodity_inflow_1,2,3,8,4
   - Classic_commodity_inflow_1,3,3,8,4 <= 0
 SC_lossless_mass_balance_x_node3_time9_vehicle0:
   sc_commodity_outflow_0,3,2,9 + sc_commodity_outflow_0,3,3,9
   - sc_commodity_inflow_0,2,3,8 - sc_commodity_inflow_0,3,3,8 = 0
 SC_lossless_mass_balance_x_node3_time9_vehicle1:
   sc_commodity_outflow_1,3,2,9 + sc_commodity_outflow_1,3,3,9
   - sc_commodity_inflow_1,2,3,8 - sc_commodity_inflow_1,3,3,8 = 0
 mass_balance_x_node3_time10_comm0: Classic_commodity_outflow_0,3,2,10,0
   + Classic_commodity_outflow_0,3,3,10,0
   + Classic_commodity_outflow_1,3,2,10,0
   + Classic_commodity_outflow_1,3,3,10,0
   - Classic_commodity_inflow_0,2,3,9,0
   - Classic_commodity_inflow_0,3,3,9,0
   - Classic_commodity_inflow_1,2,3,9,0
   - Classic_commodity_inflow_1,3,3,9,0 <= 0
 mass_balance_x_node3_time10_comm1: Classic_commodity_outflow_0,3,2,10,1
   + Classic_commodity_outflow_0,3,3,10,1
   + Classic_commodity_outflow_1,3,2,10,1
   + Classic_commodity_outflow_1,3,3,10,1
   - Classic_commodity_inflow_0,2,3,9,1
   - Classic_commodity_inflow_0,3,3,9,1
   - Classic_commodity_inflow_1,2,3,9,1
   - Classic_commodity_inflow_1,3,3,9,1 <= 0
 mass_balance_x_node3_time10_comm2: Classic_commodity_outflow_0,3,2,10,2
   + Classic_commodity_outflow_0,3,3,10,2
   + Classic_commodity_outflow_1,3,2,10,2
   + Classic_commodity_outflow_1,3,3,10,2
   - Classic_commodity_inflow_0,2,3,9,2
   - Classic_commodity_inflow_0,3,3,9,2
   - Classic_commodity_inflow_1,2,3,9,2
   - Classic_commodity_inflow_1,3,3,9,2 <= 0
 mass_balance_x_node3_time10_comm3: Classic_commodity_outflow_0,3,2,10,3
   + Classic_commodity_outflow_0,3,3,10,3
   + Classic_commodity_outflow_1,3,2,10,3
   + Classic_commodity_outflow_1,3,3,10,3
   - Classic_commodity_inflow_0,2,3,9,3
   - Classic_commodity_inflow_0,3,3,9,3
   - Classic_commodity_inflow_1,2,3,9,3
   - Classic_commodity_inflow_1,3,3,9,3 <= 999999
 mass_balance_x_node3_time10_comm4: Classic_commodity_outflow_0,3,2,10,4
   + Classic_commodity_outflow_0,3,3,10,4
   + Classic_commodity_outflow_1,3,2,10,4
   + Classic_commodity_outflow_1,3,3,10,4
   - Classic_commodity_inflow_0,2,3,9,4
   - Classic_commodity_inflow_0,3,3,9,4
   - Classic_commodity_inflow_1,2,3,9,4
   - Classic_commodity_inflow_1,3,3,9,4 <= 0
 SC_lossless_mass_balance_x_node3_time10_vehicle0:
   sc_commodity_outflow_0,3,2,10 + sc_commodity_outflow_0,3,3,10
   - sc_commodity_inflow_0,2,3,9 - sc_commodity_inflow_0,3,3,9 = 0
 SC_lossless_mass_balance_x_node3_time10_vehicle1:
   sc_commodity_outflow_1,3,2,10 + sc_commodity_outflow_1,3,3,10
   - sc_commodity_inflow_1,2,3,9 - sc_commodity_inflow_1,3,3,9 = 0
 mass_balance_x_node3_time11_comm0: - Classic_commodity_inflow_0,2,3,10,0
   - Classic_commodity_inflow_0,3,3,10,0
   - Classic_commodity_inflow_1,2,3,10,0
   - Classic_commodity_inflow_1,3,3,10,0 <= 0
 mass_balance_x_node3_time11_comm1: - Classic_commodity_inflow_0,2,3,10,1
   - Classic_commodity_inflow_0,3,3,10,1
   - Classic_commodity_inflow_1,2,3,10,1
   - Classic_commodity_inflow_1,3,3,10,1 <= 0
 mass_balance_x_node3_time11_comm2: - Classic_commodity_inflow_0,2,3,10,2
   - Classic_commodity_inflow_0,3,3,10,2
   - Classic_commodity_inflow_1,2,3,10,2
   - Classic_commodity_inflow_1,3,3,10,2 <= 0
 mass_balance_x_node3_time11_comm3: - Classic_commodity_inflow_0,2,3,10,3
   - Classic_commodity_inflow_0,3,3,10,3
   - Classic_commodity_inflow_1,2,3,10,3
   - Classic_commodity_inflow_1,3,3,10,3 <= 999999
 mass_balance_x_node3_time11_comm4: - Classic_commodity_inflow_0,2,3,10,4
   - Classic_commodity_inflow_0,3,3,10,4
   - Classic_commodity_inflow_1,2,3,10,4
   - Classic_commodity_inflow_1,3,3,10,4 <= 0
 SC_mass_balance_x_node3_time11_vehicle0: - sc_commodity_inflow_0,2,3,10
   - sc_commodity_inflow_0,3,3,10 <= 0
 SC_mass_balance_x_node3_time11_vehicle1: - sc_commodity_inflow_1,2,3,10
   - sc_commodity_inflow_1,3,3,10 <= 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,0,0 - Classic_commodity_inflow_0,0,0,0,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,0,0
   + Classic_commodity_outflow_0,0,0,0,1
   - Classic_commodity_inflow_0,0,0,0,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,0,2 - Classic_commodity_inflow_0,0,0,0,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,0,3 - Classic_commodity_inflow_0,0,0,0,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,0,4 - Classic_commodity_inflow_0,0,0,0,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,0 - sc_commodity_inflow_0,0,0,0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,0,0 - Classic_commodity_inflow_1,0,0,0,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,0,0
   + Classic_commodity_outflow_1,0,0,0,1
   - Classic_commodity_inflow_1,0,0,0,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,0,2 - Classic_commodity_inflow_1,0,0,0,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,0,3 - Classic_commodity_inflow_1,0,0,0,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,0,4 - Classic_commodity_inflow_1,0,0,0,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,0 - sc_commodity_inflow_1,0,0,0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,1,0 - Classic_commodity_inflow_0,0,0,1,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,1,0
   + Classic_commodity_outflow_0,0,0,1,1
   - Classic_commodity_inflow_0,0,0,1,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,1,2 - Classic_commodity_inflow_0,0,0,1,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,1,3 - Classic_commodity_inflow_0,0,0,1,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,1,4 - Classic_commodity_inflow_0,0,0,1,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,1 - sc_commodity_inflow_0,0,0,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,1,0 - Classic_commodity_inflow_1,0,0,1,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,1,0
   + Classic_commodity_outflow_1,0,0,1,1
   - Classic_commodity_inflow_1,0,0,1,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,1,2 - Classic_commodity_inflow_1,0,0,1,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,1,3 - Classic_commodity_inflow_1,0,0,1,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,1,4 - Classic_commodity_inflow_1,0,0,1,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,1 - sc_commodity_inflow_1,0,0,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,2,0 - Classic_commodity_inflow_0,0,0,2,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,2,0
   + Classic_commodity_outflow_0,0,0,2,1
   - Classic_commodity_inflow_0,0,0,2,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,2,2 - Classic_commodity_inflow_0,0,0,2,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,2,3 - Classic_commodity_inflow_0,0,0,2,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,2,4 - Classic_commodity_inflow_0,0,0,2,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,2 - sc_commodity_inflow_0,0,0,2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,2,0 - Classic_commodity_inflow_1,0,0,2,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,2,0
   + Classic_commodity_outflow_1,0,0,2,1
   - Classic_commodity_inflow_1,0,0,2,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,2,2 - Classic_commodity_inflow_1,0,0,2,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,2,3 - Classic_commodity_inflow_1,0,0,2,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,2,4 - Classic_commodity_inflow_1,0,0,2,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,2 - sc_commodity_inflow_1,0,0,2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,3,0 - Classic_commodity_inflow_0,0,0,3,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,3,0
   + Classic_commodity_outflow_0,0,0,3,1
   - Classic_commodity_inflow_0,0,0,3,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,3,2 - Classic_commodity_inflow_0,0,0,3,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,3,3 - Classic_commodity_inflow_0,0,0,3,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,3,4 - Classic_commodity_inflow_0,0,0,3,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,3 - sc_commodity_inflow_0,0,0,3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,3,0 - Classic_commodity_inflow_1,0,0,3,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,3,0
   + Classic_commodity_outflow_1,0,0,3,1
   - Classic_commodity_inflow_1,0,0,3,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,3,2 - Classic_commodity_inflow_1,0,0,3,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,3,3 - Classic_commodity_inflow_1,0,0,3,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,3,4 - Classic_commodity_inflow_1,0,0,3,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,3 - sc_commodity_inflow_1,0,0,3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,4,0 - Classic_commodity_inflow_0,0,0,4,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,4,0
   + Classic_commodity_outflow_0,0,0,4,1
   - Classic_commodity_inflow_0,0,0,4,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,4,2 - Classic_commodity_inflow_0,0,0,4,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,4,3 - Classic_commodity_inflow_0,0,0,4,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,4,4 - Classic_commodity_inflow_0,0,0,4,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,4 - sc_commodity_inflow_0,0,0,4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,4,0 - Classic_commodity_inflow_1,0,0,4,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,4,0
   + Classic_commodity_outflow_1,0,0,4,1
   - Classic_commodity_inflow_1,0,0,4,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,4,2 - Classic_commodity_inflow_1,0,0,4,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,4,3 - Classic_commodity_inflow_1,0,0,4,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,4,4 - Classic_commodity_inflow_1,0,0,4,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,4 - sc_commodity_inflow_1,0,0,4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,5,0 - Classic_commodity_inflow_0,0,0,5,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,5,0
   + Classic_commodity_outflow_0,0,0,5,1
   - Classic_commodity_inflow_0,0,0,5,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,5,2 - Classic_commodity_inflow_0,0,0,5,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,5,3 - Classic_commodity_inflow_0,0,0,5,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,5,4 - Classic_commodity_inflow_0,0,0,5,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,5 - sc_commodity_inflow_0,0,0,5 = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,5,0 - Classic_commodity_inflow_1,0,0,5,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,5,0
   + Classic_commodity_outflow_1,0,0,5,1
   - Classic_commodity_inflow_1,0,0,5,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,5,2 - Classic_commodity_inflow_1,0,0,5,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,5,3 - Classic_commodity_inflow_1,0,0,5,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,5,4 - Classic_commodity_inflow_1,0,0,5,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,5 - sc_commodity_inflow_1,0,0,5 = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,6,0 - Classic_commodity_inflow_0,0,0,6,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,6,0
   + Classic_commodity_outflow_0,0,0,6,1
   - Classic_commodity_inflow_0,0,0,6,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,6,2 - Classic_commodity_inflow_0,0,0,6,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,6,3 - Classic_commodity_inflow_0,0,0,6,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,6,4 - Classic_commodity_inflow_0,0,0,6,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,6 - sc_commodity_inflow_0,0,0,6 = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,6,0 - Classic_commodity_inflow_1,0,0,6,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,6,0
   + Classic_commodity_outflow_1,0,0,6,1
   - Classic_commodity_inflow_1,0,0,6,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,6,2 - Classic_commodity_inflow_1,0,0,6,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,6,3 - Classic_commodity_inflow_1,0,0,6,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,6,4 - Classic_commodity_inflow_1,0,0,6,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,6 - sc_commodity_inflow_1,0,0,6 = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,7,0 - Classic_commodity_inflow_0,0,0,7,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,7,0
   + Classic_commodity_outflow_0,0,0,7,1
   - Classic_commodity_inflow_0,0,0,7,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,7,2 - Classic_commodity_inflow_0,0,0,7,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,7,3 - Classic_commodity_inflow_0,0,0,7,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,7,4 - Classic_commodity_inflow_0,0,0,7,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,7 - sc_commodity_inflow_0,0,0,7 = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,7,0 - Classic_commodity_inflow_1,0,0,7,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,7,0
   + Classic_commodity_outflow_1,0,0,7,1
   - Classic_commodity_inflow_1,0,0,7,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,7,2 - Classic_commodity_inflow_1,0,0,7,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,7,3 - Classic_commodity_inflow_1,0,0,7,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,7,4 - Classic_commodity_inflow_1,0,0,7,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,7 - sc_commodity_inflow_1,0,0,7 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,8,0 - Classic_commodity_inflow_0,0,0,8,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,8,0
   + Classic_commodity_outflow_0,0,0,8,1
   - Classic_commodity_inflow_0,0,0,8,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,8,2 - Classic_commodity_inflow_0,0,0,8,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,8,3 - Classic_commodity_inflow_0,0,0,8,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,8,4 - Classic_commodity_inflow_0,0,0,8,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,8 - sc_commodity_inflow_0,0,0,8 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,8,0 - Classic_commodity_inflow_1,0,0,8,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,8,0
   + Classic_commodity_outflow_1,0,0,8,1
   - Classic_commodity_inflow_1,0,0,8,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,8,2 - Classic_commodity_inflow_1,0,0,8,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,8,3 - Classic_commodity_inflow_1,0,0,8,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,8,4 - Classic_commodity_inflow_1,0,0,8,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,8 - sc_commodity_inflow_1,0,0,8 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,9,0 - Classic_commodity_inflow_0,0,0,9,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,9,0
   + Classic_commodity_outflow_0,0,0,9,1
   - Classic_commodity_inflow_0,0,0,9,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,9,2 - Classic_commodity_inflow_0,0,0,9,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,9,3 - Classic_commodity_inflow_0,0,0,9,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,9,4 - Classic_commodity_inflow_0,0,0,9,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,9 - sc_commodity_inflow_0,0,0,9 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,9,0 - Classic_commodity_inflow_1,0,0,9,0
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,9,0
   + Classic_commodity_outflow_1,0,0,9,1
   - Classic_commodity_inflow_1,0,0,9,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,9,2 - Classic_commodity_inflow_1,0,0,9,2
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,9,3 - Classic_commodity_inflow_1,0,0,9,3
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,9,4 - Classic_commodity_inflow_1,0,0,9,4
   = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,9 - sc_commodity_inflow_1,0,0,9 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,10,0
   - Classic_commodity_inflow_0,0,0,10,0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,10,0
   + Classic_commodity_outflow_0,0,0,10,1
   - Classic_commodity_inflow_0,0,0,10,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,10,2
   - Classic_commodity_inflow_0,0,0,10,2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,10,3
   - Classic_commodity_inflow_0,0,0,10,3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,10,4
   - Classic_commodity_inflow_0,0,0,10,4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,10 - sc_commodity_inflow_0,0,0,10 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,10,0
   - Classic_commodity_inflow_1,0,0,10,0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,10,0
   + Classic_commodity_outflow_1,0,0,10,1
   - Classic_commodity_inflow_1,0,0,10,1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,10,2
   - Classic_commodity_inflow_1,0,0,10,2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,10,3
   - Classic_commodity_inflow_1,0,0,10,3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,10,4
   - Classic_commodity_inflow_1,0,0,10,4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,10 - sc_commodity_inflow_1,0,0,10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,0,0 - Classic_commodity_inflow_0,0,1,0,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,0,0
   + Classic_commodity_outflow_0,0,1,0,1
   - Classic_commodity_inflow_0,0,1,0,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,0,2 - Classic_commodity_inflow_0,0,1,0,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,0,3 - Classic_commodity_inflow_0,0,1,0,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,0,0
   - Classic_commodity_outflow_0,0,1,0,1
   - Classic_commodity_outflow_0,0,1,0,2
   - Classic_commodity_outflow_0,0,1,0,3
   - Classic_commodity_inflow_0,0,1,0,4 - 2500 sc_commodity_outflow_0,0,1,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,0 - sc_commodity_inflow_0,0,1,0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,0,0 - Classic_commodity_inflow_1,0,1,0,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,0,0
   + Classic_commodity_outflow_1,0,1,0,1
   - Classic_commodity_inflow_1,0,1,0,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,0,2 - Classic_commodity_inflow_1,0,1,0,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,0,3 - Classic_commodity_inflow_1,0,1,0,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,0,0
   - Classic_commodity_outflow_1,0,1,0,1
   - Classic_commodity_outflow_1,0,1,0,2
   - Classic_commodity_outflow_1,0,1,0,3
   - Classic_commodity_inflow_1,0,1,0,4
   - 30000 sc_commodity_outflow_1,0,1,0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,0 - sc_commodity_inflow_1,0,1,0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,1,0 - Classic_commodity_inflow_0,0,1,1,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,1,0
   + Classic_commodity_outflow_0,0,1,1,1
   - Classic_commodity_inflow_0,0,1,1,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,1,2 - Classic_commodity_inflow_0,0,1,1,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,1,3 - Classic_commodity_inflow_0,0,1,1,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,1,0
   - Classic_commodity_outflow_0,0,1,1,1
   - Classic_commodity_outflow_0,0,1,1,2
   - Classic_commodity_outflow_0,0,1,1,3
   - Classic_commodity_inflow_0,0,1,1,4 - 2500 sc_commodity_outflow_0,0,1,1
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,1 - sc_commodity_inflow_0,0,1,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,1,0 - Classic_commodity_inflow_1,0,1,1,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,1,0
   + Classic_commodity_outflow_1,0,1,1,1
   - Classic_commodity_inflow_1,0,1,1,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,1,2 - Classic_commodity_inflow_1,0,1,1,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,1,3 - Classic_commodity_inflow_1,0,1,1,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,1,0
   - Classic_commodity_outflow_1,0,1,1,1
   - Classic_commodity_outflow_1,0,1,1,2
   - Classic_commodity_outflow_1,0,1,1,3
   - Classic_commodity_inflow_1,0,1,1,4
   - 30000 sc_commodity_outflow_1,0,1,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,1 - sc_commodity_inflow_1,0,1,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,2,0 - Classic_commodity_inflow_0,0,1,2,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,2,0
   + Classic_commodity_outflow_0,0,1,2,1
   - Classic_commodity_inflow_0,0,1,2,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,2,2 - Classic_commodity_inflow_0,0,1,2,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,2,3 - Classic_commodity_inflow_0,0,1,2,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,2,0
   - Classic_commodity_outflow_0,0,1,2,1
   - Classic_commodity_outflow_0,0,1,2,2
   - Classic_commodity_outflow_0,0,1,2,3
   - Classic_commodity_inflow_0,0,1,2,4 - 2500 sc_commodity_outflow_0,0,1,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,2 - sc_commodity_inflow_0,0,1,2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,2,0 - Classic_commodity_inflow_1,0,1,2,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,2,0
   + Classic_commodity_outflow_1,0,1,2,1
   - Classic_commodity_inflow_1,0,1,2,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,2,2 - Classic_commodity_inflow_1,0,1,2,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,2,3 - Classic_commodity_inflow_1,0,1,2,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,2,0
   - Classic_commodity_outflow_1,0,1,2,1
   - Classic_commodity_outflow_1,0,1,2,2
   - Classic_commodity_outflow_1,0,1,2,3
   - Classic_commodity_inflow_1,0,1,2,4
   - 30000 sc_commodity_outflow_1,0,1,2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,2 - sc_commodity_inflow_1,0,1,2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,3,0 - Classic_commodity_inflow_0,0,1,3,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,3,0
   + Classic_commodity_outflow_0,0,1,3,1
   - Classic_commodity_inflow_0,0,1,3,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,3,2 - Classic_commodity_inflow_0,0,1,3,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,3,3 - Classic_commodity_inflow_0,0,1,3,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,3,0
   - Classic_commodity_outflow_0,0,1,3,1
   - Classic_commodity_outflow_0,0,1,3,2
   - Classic_commodity_outflow_0,0,1,3,3
   - Classic_commodity_inflow_0,0,1,3,4 - 2500 sc_commodity_outflow_0,0,1,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,3 - sc_commodity_inflow_0,0,1,3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,3,0 - Classic_commodity_inflow_1,0,1,3,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,3,0
   + Classic_commodity_outflow_1,0,1,3,1
   - Classic_commodity_inflow_1,0,1,3,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,3,2 - Classic_commodity_inflow_1,0,1,3,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,3,3 - Classic_commodity_inflow_1,0,1,3,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,3,0
   - Classic_commodity_outflow_1,0,1,3,1
   - Classic_commodity_outflow_1,0,1,3,2
   - Classic_commodity_outflow_1,0,1,3,3
   - Classic_commodity_inflow_1,0,1,3,4
   - 30000 sc_commodity_outflow_1,0,1,3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,3 - sc_commodity_inflow_1,0,1,3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,4,0 - Classic_commodity_inflow_0,0,1,4,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,4,0
   + Classic_commodity_outflow_0,0,1,4,1
   - Classic_commodity_inflow_0,0,1,4,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,4,2 - Classic_commodity_inflow_0,0,1,4,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,4,3 - Classic_commodity_inflow_0,0,1,4,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,4,0
   - Classic_commodity_outflow_0,0,1,4,1
   - Classic_commodity_outflow_0,0,1,4,2
   - Classic_commodity_outflow_0,0,1,4,3
   - Classic_commodity_inflow_0,0,1,4,4 - 2500 sc_commodity_outflow_0,0,1,4
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,4 - sc_commodity_inflow_0,0,1,4 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,4,0 - Classic_commodity_inflow_1,0,1,4,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,4,0
   + Classic_commodity_outflow_1,0,1,4,1
   - Classic_commodity_inflow_1,0,1,4,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,4,2 - Classic_commodity_inflow_1,0,1,4,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,4,3 - Classic_commodity_inflow_1,0,1,4,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,4,0
   - Classic_commodity_outflow_1,0,1,4,1
   - Classic_commodity_outflow_1,0,1,4,2
   - Classic_commodity_outflow_1,0,1,4,3
   - Classic_commodity_inflow_1,0,1,4,4
   - 30000 sc_commodity_outflow_1,0,1,4 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,4 - sc_commodity_inflow_1,0,1,4 = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,5,0 - Classic_commodity_inflow_0,0,1,5,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,5,0
   + Classic_commodity_outflow_0,0,1,5,1
   - Classic_commodity_inflow_0,0,1,5,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,5,2 - Classic_commodity_inflow_0,0,1,5,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,5,3 - Classic_commodity_inflow_0,0,1,5,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,5,0
   - Classic_commodity_outflow_0,0,1,5,1
   - Classic_commodity_outflow_0,0,1,5,2
   - Classic_commodity_outflow_0,0,1,5,3
   - Classic_commodity_inflow_0,0,1,5,4 - 2500 sc_commodity_outflow_0,0,1,5
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,5 - sc_commodity_inflow_0,0,1,5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,5,0 - Classic_commodity_inflow_1,0,1,5,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,5,0
   + Classic_commodity_outflow_1,0,1,5,1
   - Classic_commodity_inflow_1,0,1,5,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,5,2 - Classic_commodity_inflow_1,0,1,5,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,5,3 - Classic_commodity_inflow_1,0,1,5,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,5,0
   - Classic_commodity_outflow_1,0,1,5,1
   - Classic_commodity_outflow_1,0,1,5,2
   - Classic_commodity_outflow_1,0,1,5,3
   - Classic_commodity_inflow_1,0,1,5,4
   - 30000 sc_commodity_outflow_1,0,1,5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,5 - sc_commodity_inflow_1,0,1,5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,6,0 - Classic_commodity_inflow_0,0,1,6,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,6,0
   + Classic_commodity_outflow_0,0,1,6,1
   - Classic_commodity_inflow_0,0,1,6,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,6,2 - Classic_commodity_inflow_0,0,1,6,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,6,3 - Classic_commodity_inflow_0,0,1,6,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,6,0
   - Classic_commodity_outflow_0,0,1,6,1
   - Classic_commodity_outflow_0,0,1,6,2
   - Classic_commodity_outflow_0,0,1,6,3
   - Classic_commodity_inflow_0,0,1,6,4 - 2500 sc_commodity_outflow_0,0,1,6
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,6 - sc_commodity_inflow_0,0,1,6 = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,6,0 - Classic_commodity_inflow_1,0,1,6,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,6,0
   + Classic_commodity_outflow_1,0,1,6,1
   - Classic_commodity_inflow_1,0,1,6,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,6,2 - Classic_commodity_inflow_1,0,1,6,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,6,3 - Classic_commodity_inflow_1,0,1,6,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,6,0
   - Classic_commodity_outflow_1,0,1,6,1
   - Classic_commodity_outflow_1,0,1,6,2
   - Classic_commodity_outflow_1,0,1,6,3
   - Classic_commodity_inflow_1,0,1,6,4
   - 30000 sc_commodity_outflow_1,0,1,6 = 0
 Arc_transformationConstraint_Start0_End1_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,6 - sc_commodity_inflow_1,0,1,6 = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,7,0 - Classic_commodity_inflow_0,0,1,7,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,7,0
   + Classic_commodity_outflow_0,0,1,7,1
   - Classic_commodity_inflow_0,0,1,7,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,7,2 - Classic_commodity_inflow_0,0,1,7,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,7,3 - Classic_commodity_inflow_0,0,1,7,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,7,0
   - Classic_commodity_outflow_0,0,1,7,1
   - Classic_commodity_outflow_0,0,1,7,2
   - Classic_commodity_outflow_0,0,1,7,3
   - Classic_commodity_inflow_0,0,1,7,4 - 2500 sc_commodity_outflow_0,0,1,7
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,7 - sc_commodity_inflow_0,0,1,7 = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,7,0 - Classic_commodity_inflow_1,0,1,7,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,7,0
   + Classic_commodity_outflow_1,0,1,7,1
   - Classic_commodity_inflow_1,0,1,7,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,7,2 - Classic_commodity_inflow_1,0,1,7,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,7,3 - Classic_commodity_inflow_1,0,1,7,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,7,0
   - Classic_commodity_outflow_1,0,1,7,1
   - Classic_commodity_outflow_1,0,1,7,2
   - Classic_commodity_outflow_1,0,1,7,3
   - Classic_commodity_inflow_1,0,1,7,4
   - 30000 sc_commodity_outflow_1,0,1,7 = 0
 Arc_transformationConstraint_Start0_End1_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,7 - sc_commodity_inflow_1,0,1,7 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,8,0 - Classic_commodity_inflow_0,0,1,8,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,8,0
   + Classic_commodity_outflow_0,0,1,8,1
   - Classic_commodity_inflow_0,0,1,8,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,8,2 - Classic_commodity_inflow_0,0,1,8,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,8,3 - Classic_commodity_inflow_0,0,1,8,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,8,0
   - Classic_commodity_outflow_0,0,1,8,1
   - Classic_commodity_outflow_0,0,1,8,2
   - Classic_commodity_outflow_0,0,1,8,3
   - Classic_commodity_inflow_0,0,1,8,4 - 2500 sc_commodity_outflow_0,0,1,8
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,8 - sc_commodity_inflow_0,0,1,8 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,8,0 - Classic_commodity_inflow_1,0,1,8,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,8,0
   + Classic_commodity_outflow_1,0,1,8,1
   - Classic_commodity_inflow_1,0,1,8,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,8,2 - Classic_commodity_inflow_1,0,1,8,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,8,3 - Classic_commodity_inflow_1,0,1,8,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,8,0
   - Classic_commodity_outflow_1,0,1,8,1
   - Classic_commodity_outflow_1,0,1,8,2
   - Classic_commodity_outflow_1,0,1,8,3
   - Classic_commodity_inflow_1,0,1,8,4
   - 30000 sc_commodity_outflow_1,0,1,8 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,8 - sc_commodity_inflow_1,0,1,8 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,9,0 - Classic_commodity_inflow_0,0,1,9,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,9,0
   + Classic_commodity_outflow_0,0,1,9,1
   - Classic_commodity_inflow_0,0,1,9,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,9,2 - Classic_commodity_inflow_0,0,1,9,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,9,3 - Classic_commodity_inflow_0,0,1,9,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,9,0
   - Classic_commodity_outflow_0,0,1,9,1
   - Classic_commodity_outflow_0,0,1,9,2
   - Classic_commodity_outflow_0,0,1,9,3
   - Classic_commodity_inflow_0,0,1,9,4 - 2500 sc_commodity_outflow_0,0,1,9
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,9 - sc_commodity_inflow_0,0,1,9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,9,0 - Classic_commodity_inflow_1,0,1,9,0
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,9,0
   + Classic_commodity_outflow_1,0,1,9,1
   - Classic_commodity_inflow_1,0,1,9,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,9,2 - Classic_commodity_inflow_1,0,1,9,2
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,9,3 - Classic_commodity_inflow_1,0,1,9,3
   = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,9,0
   - Classic_commodity_outflow_1,0,1,9,1
   - Classic_commodity_outflow_1,0,1,9,2
   - Classic_commodity_outflow_1,0,1,9,3
   - Classic_commodity_inflow_1,0,1,9,4
   - 30000 sc_commodity_outflow_1,0,1,9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,9 - sc_commodity_inflow_1,0,1,9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,10,0
   - Classic_commodity_inflow_0,0,1,10,0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,10,0
   + Classic_commodity_outflow_0,0,1,10,1
   - Classic_commodity_inflow_0,0,1,10,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,10,2
   - Classic_commodity_inflow_0,0,1,10,2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,10,3
   - Classic_commodity_inflow_0,0,1,10,3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,10,0
   - Classic_commodity_outflow_0,0,1,10,1
   - Classic_commodity_outflow_0,0,1,10,2
   - Classic_commodity_outflow_0,0,1,10,3
   - Classic_commodity_inflow_0,0,1,10,4
   - 2500 sc_commodity_outflow_0,0,1,10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,10 - sc_commodity_inflow_0,0,1,10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,10,0
   - Classic_commodity_inflow_1,0,1,10,0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,10,0
   + Classic_commodity_outflow_1,0,1,10,1
   - Classic_commodity_inflow_1,0,1,10,1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,10,2
   - Classic_commodity_inflow_1,0,1,10,2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,10,3
   - Classic_commodity_inflow_1,0,1,10,3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,10,0
   - Classic_commodity_outflow_1,0,1,10,1
   - Classic_commodity_outflow_1,0,1,10,2
   - Classic_commodity_outflow_1,0,1,10,3
   - Classic_commodity_inflow_1,0,1,10,4
   - 30000 sc_commodity_outflow_1,0,1,10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,10 - sc_commodity_inflow_1,0,1,10 = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,0,0 - Classic_commodity_inflow_0,1,0,0,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,0,0
   + Classic_commodity_outflow_0,1,0,0,1
   - Classic_commodity_inflow_0,1,0,0,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,0,2 - Classic_commodity_inflow_0,1,0,0,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,0,3 - Classic_commodity_inflow_0,1,0,0,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,0,4 - Classic_commodity_inflow_0,1,0,0,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,0 - sc_commodity_inflow_0,1,0,0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,0,0 - Classic_commodity_inflow_1,1,0,0,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,0,0
   + Classic_commodity_outflow_1,1,0,0,1
   - Classic_commodity_inflow_1,1,0,0,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,0,2 - Classic_commodity_inflow_1,1,0,0,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,0,3 - Classic_commodity_inflow_1,1,0,0,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,0,4 - Classic_commodity_inflow_1,1,0,0,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,0 - sc_commodity_inflow_1,1,0,0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,1,0 - Classic_commodity_inflow_0,1,0,1,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,1,0
   + Classic_commodity_outflow_0,1,0,1,1
   - Classic_commodity_inflow_0,1,0,1,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,1,2 - Classic_commodity_inflow_0,1,0,1,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,1,3 - Classic_commodity_inflow_0,1,0,1,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,1,4 - Classic_commodity_inflow_0,1,0,1,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,1 - sc_commodity_inflow_0,1,0,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,1,0 - Classic_commodity_inflow_1,1,0,1,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,1,0
   + Classic_commodity_outflow_1,1,0,1,1
   - Classic_commodity_inflow_1,1,0,1,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,1,2 - Classic_commodity_inflow_1,1,0,1,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,1,3 - Classic_commodity_inflow_1,1,0,1,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,1,4 - Classic_commodity_inflow_1,1,0,1,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,1 - sc_commodity_inflow_1,1,0,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,2,0 - Classic_commodity_inflow_0,1,0,2,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,2,0
   + Classic_commodity_outflow_0,1,0,2,1
   - Classic_commodity_inflow_0,1,0,2,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,2,2 - Classic_commodity_inflow_0,1,0,2,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,2,3 - Classic_commodity_inflow_0,1,0,2,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,2,4 - Classic_commodity_inflow_0,1,0,2,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,2 - sc_commodity_inflow_0,1,0,2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,2,0 - Classic_commodity_inflow_1,1,0,2,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,2,0
   + Classic_commodity_outflow_1,1,0,2,1
   - Classic_commodity_inflow_1,1,0,2,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,2,2 - Classic_commodity_inflow_1,1,0,2,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,2,3 - Classic_commodity_inflow_1,1,0,2,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,2,4 - Classic_commodity_inflow_1,1,0,2,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,2 - sc_commodity_inflow_1,1,0,2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,3,0 - Classic_commodity_inflow_0,1,0,3,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,3,0
   + Classic_commodity_outflow_0,1,0,3,1
   - Classic_commodity_inflow_0,1,0,3,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,3,2 - Classic_commodity_inflow_0,1,0,3,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,3,3 - Classic_commodity_inflow_0,1,0,3,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,3,4 - Classic_commodity_inflow_0,1,0,3,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,3 - sc_commodity_inflow_0,1,0,3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,3,0 - Classic_commodity_inflow_1,1,0,3,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,3,0
   + Classic_commodity_outflow_1,1,0,3,1
   - Classic_commodity_inflow_1,1,0,3,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,3,2 - Classic_commodity_inflow_1,1,0,3,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,3,3 - Classic_commodity_inflow_1,1,0,3,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,3,4 - Classic_commodity_inflow_1,1,0,3,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,3 - sc_commodity_inflow_1,1,0,3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,4,0 - Classic_commodity_inflow_0,1,0,4,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,4,0
   + Classic_commodity_outflow_0,1,0,4,1
   - Classic_commodity_inflow_0,1,0,4,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,4,2 - Classic_commodity_inflow_0,1,0,4,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,4,3 - Classic_commodity_inflow_0,1,0,4,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,4,4 - Classic_commodity_inflow_0,1,0,4,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,4 - sc_commodity_inflow_0,1,0,4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,4,0 - Classic_commodity_inflow_1,1,0,4,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,4,0
   + Classic_commodity_outflow_1,1,0,4,1
   - Classic_commodity_inflow_1,1,0,4,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,4,2 - Classic_commodity_inflow_1,1,0,4,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,4,3 - Classic_commodity_inflow_1,1,0,4,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,4,4 - Classic_commodity_inflow_1,1,0,4,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,4 - sc_commodity_inflow_1,1,0,4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,5,0 - Classic_commodity_inflow_0,1,0,5,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,5,0
   + Classic_commodity_outflow_0,1,0,5,1
   - Classic_commodity_inflow_0,1,0,5,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,5,2 - Classic_commodity_inflow_0,1,0,5,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,5,3 - Classic_commodity_inflow_0,1,0,5,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,5,4 - Classic_commodity_inflow_0,1,0,5,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,5 - sc_commodity_inflow_0,1,0,5 = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,5,0 - Classic_commodity_inflow_1,1,0,5,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,5,0
   + Classic_commodity_outflow_1,1,0,5,1
   - Classic_commodity_inflow_1,1,0,5,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,5,2 - Classic_commodity_inflow_1,1,0,5,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,5,3 - Classic_commodity_inflow_1,1,0,5,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,5,4 - Classic_commodity_inflow_1,1,0,5,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,5 - sc_commodity_inflow_1,1,0,5 = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,6,0 - Classic_commodity_inflow_0,1,0,6,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,6,0
   + Classic_commodity_outflow_0,1,0,6,1
   - Classic_commodity_inflow_0,1,0,6,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,6,2 - Classic_commodity_inflow_0,1,0,6,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,6,3 - Classic_commodity_inflow_0,1,0,6,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,6,4 - Classic_commodity_inflow_0,1,0,6,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,6 - sc_commodity_inflow_0,1,0,6 = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,6,0 - Classic_commodity_inflow_1,1,0,6,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,6,0
   + Classic_commodity_outflow_1,1,0,6,1
   - Classic_commodity_inflow_1,1,0,6,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,6,2 - Classic_commodity_inflow_1,1,0,6,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,6,3 - Classic_commodity_inflow_1,1,0,6,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,6,4 - Classic_commodity_inflow_1,1,0,6,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,6 - sc_commodity_inflow_1,1,0,6 = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,7,0 - Classic_commodity_inflow_0,1,0,7,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,7,0
   + Classic_commodity_outflow_0,1,0,7,1
   - Classic_commodity_inflow_0,1,0,7,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,7,2 - Classic_commodity_inflow_0,1,0,7,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,7,3 - Classic_commodity_inflow_0,1,0,7,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,7,4 - Classic_commodity_inflow_0,1,0,7,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,7 - sc_commodity_inflow_0,1,0,7 = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,7,0 - Classic_commodity_inflow_1,1,0,7,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,7,0
   + Classic_commodity_outflow_1,1,0,7,1
   - Classic_commodity_inflow_1,1,0,7,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,7,2 - Classic_commodity_inflow_1,1,0,7,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,7,3 - Classic_commodity_inflow_1,1,0,7,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,7,4 - Classic_commodity_inflow_1,1,0,7,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,7 - sc_commodity_inflow_1,1,0,7 = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,8,0 - Classic_commodity_inflow_0,1,0,8,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,8,0
   + Classic_commodity_outflow_0,1,0,8,1
   - Classic_commodity_inflow_0,1,0,8,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,8,2 - Classic_commodity_inflow_0,1,0,8,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,8,3 - Classic_commodity_inflow_0,1,0,8,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,8,4 - Classic_commodity_inflow_0,1,0,8,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,8 - sc_commodity_inflow_0,1,0,8 = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,8,0 - Classic_commodity_inflow_1,1,0,8,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,8,0
   + Classic_commodity_outflow_1,1,0,8,1
   - Classic_commodity_inflow_1,1,0,8,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,8,2 - Classic_commodity_inflow_1,1,0,8,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,8,3 - Classic_commodity_inflow_1,1,0,8,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,8,4 - Classic_commodity_inflow_1,1,0,8,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,8 - sc_commodity_inflow_1,1,0,8 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,9,0 - Classic_commodity_inflow_0,1,0,9,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,9,0
   + Classic_commodity_outflow_0,1,0,9,1
   - Classic_commodity_inflow_0,1,0,9,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,9,2 - Classic_commodity_inflow_0,1,0,9,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,9,3 - Classic_commodity_inflow_0,1,0,9,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,9,4 - Classic_commodity_inflow_0,1,0,9,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,9 - sc_commodity_inflow_0,1,0,9 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,9,0 - Classic_commodity_inflow_1,1,0,9,0
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,9,0
   + Classic_commodity_outflow_1,1,0,9,1
   - Classic_commodity_inflow_1,1,0,9,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,9,2 - Classic_commodity_inflow_1,1,0,9,2
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,9,3 - Classic_commodity_inflow_1,1,0,9,3
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,9,4 - Classic_commodity_inflow_1,1,0,9,4
   = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,9 - sc_commodity_inflow_1,1,0,9 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,10,0
   - Classic_commodity_inflow_0,1,0,10,0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,10,0
   + Classic_commodity_outflow_0,1,0,10,1
   - Classic_commodity_inflow_0,1,0,10,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,10,2
   - Classic_commodity_inflow_0,1,0,10,2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,10,3
   - Classic_commodity_inflow_0,1,0,10,3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,10,4
   - Classic_commodity_inflow_0,1,0,10,4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,10 - sc_commodity_inflow_0,1,0,10 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,10,0
   - Classic_commodity_inflow_1,1,0,10,0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,10,0
   + Classic_commodity_outflow_1,1,0,10,1
   - Classic_commodity_inflow_1,1,0,10,1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,10,2
   - Classic_commodity_inflow_1,1,0,10,2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,10,3
   - Classic_commodity_inflow_1,1,0,10,3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,10,4
   - Classic_commodity_inflow_1,1,0,10,4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,10 - sc_commodity_inflow_1,1,0,10 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,0,0 - Classic_commodity_inflow_0,1,1,0,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,0,0
   + Classic_commodity_outflow_0,1,1,0,1
   - Classic_commodity_inflow_0,1,1,0,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,0,2 - Classic_commodity_inflow_0,1,1,0,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,0,3 - Classic_commodity_inflow_0,1,1,0,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,0,4 - Classic_commodity_inflow_0,1,1,0,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,0 - sc_commodity_inflow_0,1,1,0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,0,0 - Classic_commodity_inflow_1,1,1,0,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,0,0
   + Classic_commodity_outflow_1,1,1,0,1
   - Classic_commodity_inflow_1,1,1,0,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,0,2 - Classic_commodity_inflow_1,1,1,0,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,0,3 - Classic_commodity_inflow_1,1,1,0,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,0,4 - Classic_commodity_inflow_1,1,1,0,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,0 - sc_commodity_inflow_1,1,1,0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,1,0 - Classic_commodity_inflow_0,1,1,1,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,1,0
   + Classic_commodity_outflow_0,1,1,1,1
   - Classic_commodity_inflow_0,1,1,1,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,1,2 - Classic_commodity_inflow_0,1,1,1,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,1,3 - Classic_commodity_inflow_0,1,1,1,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,1,4 - Classic_commodity_inflow_0,1,1,1,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,1 - sc_commodity_inflow_0,1,1,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,1,0 - Classic_commodity_inflow_1,1,1,1,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,1,0
   + Classic_commodity_outflow_1,1,1,1,1
   - Classic_commodity_inflow_1,1,1,1,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,1,2 - Classic_commodity_inflow_1,1,1,1,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,1,3 - Classic_commodity_inflow_1,1,1,1,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,1,4 - Classic_commodity_inflow_1,1,1,1,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,1 - sc_commodity_inflow_1,1,1,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,2,0 - Classic_commodity_inflow_0,1,1,2,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,2,0
   + Classic_commodity_outflow_0,1,1,2,1
   - Classic_commodity_inflow_0,1,1,2,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,2,2 - Classic_commodity_inflow_0,1,1,2,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,2,3 - Classic_commodity_inflow_0,1,1,2,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,2,4 - Classic_commodity_inflow_0,1,1,2,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,2 - sc_commodity_inflow_0,1,1,2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,2,0 - Classic_commodity_inflow_1,1,1,2,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,2,0
   + Classic_commodity_outflow_1,1,1,2,1
   - Classic_commodity_inflow_1,1,1,2,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,2,2 - Classic_commodity_inflow_1,1,1,2,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,2,3 - Classic_commodity_inflow_1,1,1,2,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,2,4 - Classic_commodity_inflow_1,1,1,2,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,2 - sc_commodity_inflow_1,1,1,2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,3,0 - Classic_commodity_inflow_0,1,1,3,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,3,0
   + Classic_commodity_outflow_0,1,1,3,1
   - Classic_commodity_inflow_0,1,1,3,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,3,2 - Classic_commodity_inflow_0,1,1,3,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,3,3 - Classic_commodity_inflow_0,1,1,3,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,3,4 - Classic_commodity_inflow_0,1,1,3,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,3 - sc_commodity_inflow_0,1,1,3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,3,0 - Classic_commodity_inflow_1,1,1,3,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,3,0
   + Classic_commodity_outflow_1,1,1,3,1
   - Classic_commodity_inflow_1,1,1,3,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,3,2 - Classic_commodity_inflow_1,1,1,3,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,3,3 - Classic_commodity_inflow_1,1,1,3,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,3,4 - Classic_commodity_inflow_1,1,1,3,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,3 - sc_commodity_inflow_1,1,1,3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,4,0 - Classic_commodity_inflow_0,1,1,4,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,4,0
   + Classic_commodity_outflow_0,1,1,4,1
   - Classic_commodity_inflow_0,1,1,4,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,4,2 - Classic_commodity_inflow_0,1,1,4,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,4,3 - Classic_commodity_inflow_0,1,1,4,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,4,4 - Classic_commodity_inflow_0,1,1,4,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,4 - sc_commodity_inflow_0,1,1,4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,4,0 - Classic_commodity_inflow_1,1,1,4,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,4,0
   + Classic_commodity_outflow_1,1,1,4,1
   - Classic_commodity_inflow_1,1,1,4,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,4,2 - Classic_commodity_inflow_1,1,1,4,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,4,3 - Classic_commodity_inflow_1,1,1,4,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,4,4 - Classic_commodity_inflow_1,1,1,4,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,4 - sc_commodity_inflow_1,1,1,4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,5,0 - Classic_commodity_inflow_0,1,1,5,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,5,0
   + Classic_commodity_outflow_0,1,1,5,1
   - Classic_commodity_inflow_0,1,1,5,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,5,2 - Classic_commodity_inflow_0,1,1,5,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,5,3 - Classic_commodity_inflow_0,1,1,5,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,5,4 - Classic_commodity_inflow_0,1,1,5,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,5 - sc_commodity_inflow_0,1,1,5 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,5,0 - Classic_commodity_inflow_1,1,1,5,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,5,0
   + Classic_commodity_outflow_1,1,1,5,1
   - Classic_commodity_inflow_1,1,1,5,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,5,2 - Classic_commodity_inflow_1,1,1,5,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,5,3 - Classic_commodity_inflow_1,1,1,5,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,5,4 - Classic_commodity_inflow_1,1,1,5,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,5 - sc_commodity_inflow_1,1,1,5 = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,6,0 - Classic_commodity_inflow_0,1,1,6,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,6,0
   + Classic_commodity_outflow_0,1,1,6,1
   - Classic_commodity_inflow_0,1,1,6,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,6,2 - Classic_commodity_inflow_0,1,1,6,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,6,3 - Classic_commodity_inflow_0,1,1,6,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,6,4 - Classic_commodity_inflow_0,1,1,6,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,6 - sc_commodity_inflow_0,1,1,6 = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,6,0 - Classic_commodity_inflow_1,1,1,6,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,6,0
   + Classic_commodity_outflow_1,1,1,6,1
   - Classic_commodity_inflow_1,1,1,6,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,6,2 - Classic_commodity_inflow_1,1,1,6,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,6,3 - Classic_commodity_inflow_1,1,1,6,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,6,4 - Classic_commodity_inflow_1,1,1,6,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,6 - sc_commodity_inflow_1,1,1,6 = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,7,0 - Classic_commodity_inflow_0,1,1,7,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,7,0
   + Classic_commodity_outflow_0,1,1,7,1
   - Classic_commodity_inflow_0,1,1,7,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,7,2 - Classic_commodity_inflow_0,1,1,7,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,7,3 - Classic_commodity_inflow_0,1,1,7,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,7,4 - Classic_commodity_inflow_0,1,1,7,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,7 - sc_commodity_inflow_0,1,1,7 = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,7,0 - Classic_commodity_inflow_1,1,1,7,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,7,0
   + Classic_commodity_outflow_1,1,1,7,1
   - Classic_commodity_inflow_1,1,1,7,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,7,2 - Classic_commodity_inflow_1,1,1,7,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,7,3 - Classic_commodity_inflow_1,1,1,7,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,7,4 - Classic_commodity_inflow_1,1,1,7,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,7 - sc_commodity_inflow_1,1,1,7 = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,8,0 - Classic_commodity_inflow_0,1,1,8,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,8,0
   + Classic_commodity_outflow_0,1,1,8,1
   - Classic_commodity_inflow_0,1,1,8,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,8,2 - Classic_commodity_inflow_0,1,1,8,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,8,3 - Classic_commodity_inflow_0,1,1,8,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,8,4 - Classic_commodity_inflow_0,1,1,8,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,8 - sc_commodity_inflow_0,1,1,8 = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,8,0 - Classic_commodity_inflow_1,1,1,8,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,8,0
   + Classic_commodity_outflow_1,1,1,8,1
   - Classic_commodity_inflow_1,1,1,8,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,8,2 - Classic_commodity_inflow_1,1,1,8,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,8,3 - Classic_commodity_inflow_1,1,1,8,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,8,4 - Classic_commodity_inflow_1,1,1,8,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,8 - sc_commodity_inflow_1,1,1,8 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,9,0 - Classic_commodity_inflow_0,1,1,9,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,9,0
   + Classic_commodity_outflow_0,1,1,9,1
   - Classic_commodity_inflow_0,1,1,9,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,9,2 - Classic_commodity_inflow_0,1,1,9,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,9,3 - Classic_commodity_inflow_0,1,1,9,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,9,4 - Classic_commodity_inflow_0,1,1,9,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,9 - sc_commodity_inflow_0,1,1,9 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,9,0 - Classic_commodity_inflow_1,1,1,9,0
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,9,0
   + Classic_commodity_outflow_1,1,1,9,1
   - Classic_commodity_inflow_1,1,1,9,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,9,2 - Classic_commodity_inflow_1,1,1,9,2
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,9,3 - Classic_commodity_inflow_1,1,1,9,3
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,9,4 - Classic_commodity_inflow_1,1,1,9,4
   = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,9 - sc_commodity_inflow_1,1,1,9 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,10,0
   - Classic_commodity_inflow_0,1,1,10,0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,10,0
   + Classic_commodity_outflow_0,1,1,10,1
   - Classic_commodity_inflow_0,1,1,10,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,10,2
   - Classic_commodity_inflow_0,1,1,10,2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,10,3
   - Classic_commodity_inflow_0,1,1,10,3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,10,4
   - Classic_commodity_inflow_0,1,1,10,4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,10 - sc_commodity_inflow_0,1,1,10 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,10,0
   - Classic_commodity_inflow_1,1,1,10,0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,10,0
   + Classic_commodity_outflow_1,1,1,10,1
   - Classic_commodity_inflow_1,1,1,10,1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,10,2
   - Classic_commodity_inflow_1,1,1,10,2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,10,3
   - Classic_commodity_inflow_1,1,1,10,3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,10,4
   - Classic_commodity_inflow_1,1,1,10,4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,10 - sc_commodity_inflow_1,1,1,10 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,0,0 - Classic_commodity_inflow_0,1,2,0,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,0,0
   + Classic_commodity_outflow_0,1,2,0,1
   - Classic_commodity_inflow_0,1,2,0,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,0,2 - Classic_commodity_inflow_0,1,2,0,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,0,3 - Classic_commodity_inflow_0,1,2,0,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,0,0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,0,1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,0,2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,0,3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,0,4
   - Classic_commodity_inflow_0,1,2,0,4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,0 - sc_commodity_inflow_0,1,2,0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,0,0 - Classic_commodity_inflow_1,1,2,0,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,0,0
   + Classic_commodity_outflow_1,1,2,0,1
   - Classic_commodity_inflow_1,1,2,0,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,0,2 - Classic_commodity_inflow_1,1,2,0,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,0,3 - Classic_commodity_inflow_1,1,2,0,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,0,0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,0,1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,0,2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,0,3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,0,4
   - Classic_commodity_inflow_1,1,2,0,4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,0 - sc_commodity_inflow_1,1,2,0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,1,0 - Classic_commodity_inflow_0,1,2,1,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,1,0
   + Classic_commodity_outflow_0,1,2,1,1
   - Classic_commodity_inflow_0,1,2,1,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,1,2 - Classic_commodity_inflow_0,1,2,1,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,1,3 - Classic_commodity_inflow_0,1,2,1,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,1,0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,1,1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,1,2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,1,3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,1,4
   - Classic_commodity_inflow_0,1,2,1,4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,1 - sc_commodity_inflow_0,1,2,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,1,0 - Classic_commodity_inflow_1,1,2,1,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,1,0
   + Classic_commodity_outflow_1,1,2,1,1
   - Classic_commodity_inflow_1,1,2,1,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,1,2 - Classic_commodity_inflow_1,1,2,1,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,1,3 - Classic_commodity_inflow_1,1,2,1,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,1,0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,1,1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,1,2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,1,3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,1,4
   - Classic_commodity_inflow_1,1,2,1,4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,1 - sc_commodity_inflow_1,1,2,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,2,0 - Classic_commodity_inflow_0,1,2,2,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,2,0
   + Classic_commodity_outflow_0,1,2,2,1
   - Classic_commodity_inflow_0,1,2,2,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,2,2 - Classic_commodity_inflow_0,1,2,2,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,2,3 - Classic_commodity_inflow_0,1,2,2,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,2,0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,2,1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,2,2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,2,3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,2,4
   - Classic_commodity_inflow_0,1,2,2,4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,2 - sc_commodity_inflow_0,1,2,2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,2,0 - Classic_commodity_inflow_1,1,2,2,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,2,0
   + Classic_commodity_outflow_1,1,2,2,1
   - Classic_commodity_inflow_1,1,2,2,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,2,2 - Classic_commodity_inflow_1,1,2,2,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,2,3 - Classic_commodity_inflow_1,1,2,2,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,2,0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,2,1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,2,2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,2,3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,2,4
   - Classic_commodity_inflow_1,1,2,2,4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,2 - sc_commodity_inflow_1,1,2,2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,3,0 - Classic_commodity_inflow_0,1,2,3,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,3,0
   + Classic_commodity_outflow_0,1,2,3,1
   - Classic_commodity_inflow_0,1,2,3,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,3,2 - Classic_commodity_inflow_0,1,2,3,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,3,3 - Classic_commodity_inflow_0,1,2,3,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,3,0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,3,1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,3,2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,3,3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,3,4
   - Classic_commodity_inflow_0,1,2,3,4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,3 - sc_commodity_inflow_0,1,2,3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,3,0 - Classic_commodity_inflow_1,1,2,3,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,3,0
   + Classic_commodity_outflow_1,1,2,3,1
   - Classic_commodity_inflow_1,1,2,3,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,3,2 - Classic_commodity_inflow_1,1,2,3,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,3,3 - Classic_commodity_inflow_1,1,2,3,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,3,0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,3,1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,3,2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,3,3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,3,4
   - Classic_commodity_inflow_1,1,2,3,4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,3 - sc_commodity_inflow_1,1,2,3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,4,0 - Classic_commodity_inflow_0,1,2,4,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,4,0
   + Classic_commodity_outflow_0,1,2,4,1
   - Classic_commodity_inflow_0,1,2,4,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,4,2 - Classic_commodity_inflow_0,1,2,4,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,4,3 - Classic_commodity_inflow_0,1,2,4,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,4,0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,4,1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,4,2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,4,3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,4,4
   - Classic_commodity_inflow_0,1,2,4,4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,4 = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,4 - sc_commodity_inflow_0,1,2,4 = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,4,0 - Classic_commodity_inflow_1,1,2,4,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,4,0
   + Classic_commodity_outflow_1,1,2,4,1
   - Classic_commodity_inflow_1,1,2,4,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,4,2 - Classic_commodity_inflow_1,1,2,4,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,4,3 - Classic_commodity_inflow_1,1,2,4,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,4,0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,4,1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,4,2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,4,3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,4,4
   - Classic_commodity_inflow_1,1,2,4,4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,4 = 0
 Arc_transformationConstraint_Start1_End2_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,4 - sc_commodity_inflow_1,1,2,4 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,5,0 - Classic_commodity_inflow_0,1,2,5,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,5,0
   + Classic_commodity_outflow_0,1,2,5,1
   - Classic_commodity_inflow_0,1,2,5,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,5,2 - Classic_commodity_inflow_0,1,2,5,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,5,3 - Classic_commodity_inflow_0,1,2,5,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,5,0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,5,1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,5,2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,5,3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,5,4
   - Classic_commodity_inflow_0,1,2,5,4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,5 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,5 - sc_commodity_inflow_0,1,2,5 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,5,0 - Classic_commodity_inflow_1,1,2,5,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,5,0
   + Classic_commodity_outflow_1,1,2,5,1
   - Classic_commodity_inflow_1,1,2,5,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,5,2 - Classic_commodity_inflow_1,1,2,5,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,5,3 - Classic_commodity_inflow_1,1,2,5,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,5,0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,5,1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,5,2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,5,3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,5,4
   - Classic_commodity_inflow_1,1,2,5,4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,5 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,5 - sc_commodity_inflow_1,1,2,5 = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,6,0 - Classic_commodity_inflow_0,1,2,6,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,6,0
   + Classic_commodity_outflow_0,1,2,6,1
   - Classic_commodity_inflow_0,1,2,6,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,6,2 - Classic_commodity_inflow_0,1,2,6,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,6,3 - Classic_commodity_inflow_0,1,2,6,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,6,0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,6,1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,6,2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,6,3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,6,4
   - Classic_commodity_inflow_0,1,2,6,4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,6 = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,6 - sc_commodity_inflow_0,1,2,6 = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,6,0 - Classic_commodity_inflow_1,1,2,6,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,6,0
   + Classic_commodity_outflow_1,1,2,6,1
   - Classic_commodity_inflow_1,1,2,6,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,6,2 - Classic_commodity_inflow_1,1,2,6,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,6,3 - Classic_commodity_inflow_1,1,2,6,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,6,0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,6,1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,6,2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,6,3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,6,4
   - Classic_commodity_inflow_1,1,2,6,4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,6 = 0
 Arc_transformationConstraint_Start1_End2_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,6 - sc_commodity_inflow_1,1,2,6 = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,7,0 - Classic_commodity_inflow_0,1,2,7,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,7,0
   + Classic_commodity_outflow_0,1,2,7,1
   - Classic_commodity_inflow_0,1,2,7,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,7,2 - Classic_commodity_inflow_0,1,2,7,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,7,3 - Classic_commodity_inflow_0,1,2,7,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,7,0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,7,1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,7,2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,7,3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,7,4
   - Classic_commodity_inflow_0,1,2,7,4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,7 = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,7 - sc_commodity_inflow_0,1,2,7 = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,7,0 - Classic_commodity_inflow_1,1,2,7,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,7,0
   + Classic_commodity_outflow_1,1,2,7,1
   - Classic_commodity_inflow_1,1,2,7,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,7,2 - Classic_commodity_inflow_1,1,2,7,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,7,3 - Classic_commodity_inflow_1,1,2,7,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,7,0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,7,1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,7,2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,7,3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,7,4
   - Classic_commodity_inflow_1,1,2,7,4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,7 = 0
 Arc_transformationConstraint_Start1_End2_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,7 - sc_commodity_inflow_1,1,2,7 = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,8,0 - Classic_commodity_inflow_0,1,2,8,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,8,0
   + Classic_commodity_outflow_0,1,2,8,1
   - Classic_commodity_inflow_0,1,2,8,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,8,2 - Classic_commodity_inflow_0,1,2,8,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,8,3 - Classic_commodity_inflow_0,1,2,8,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,8,0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,8,1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,8,2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,8,3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,8,4
   - Classic_commodity_inflow_0,1,2,8,4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,8 - sc_commodity_inflow_0,1,2,8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,8,0 - Classic_commodity_inflow_1,1,2,8,0
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,8,0
   + Classic_commodity_outflow_1,1,2,8,1
   - Classic_commodity_inflow_1,1,2,8,1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,8,2 - Classic_commodity_inflow_1,1,2,8,2
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,8,3 - Classic_commodity_inflow_1,1,2,8,3
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,8,0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,8,1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,8,2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,8,3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,8,4
   - Classic_commodity_inflow_1,1,2,8,4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,8 - sc_commodity_inflow_1,1,2,8 = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,0,0 - Classic_commodity_inflow_0,2,1,0,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,0,0
   + Classic_commodity_outflow_0,2,1,0,1
   - Classic_commodity_inflow_0,2,1,0,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,0,2 - Classic_commodity_inflow_0,2,1,0,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,0,3 - Classic_commodity_inflow_0,2,1,0,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,0,0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,0,1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,0,2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,0,3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,0,4
   - Classic_commodity_inflow_0,2,1,0,4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,0 - sc_commodity_inflow_0,2,1,0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,0,0 - Classic_commodity_inflow_1,2,1,0,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,0,0
   + Classic_commodity_outflow_1,2,1,0,1
   - Classic_commodity_inflow_1,2,1,0,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,0,2 - Classic_commodity_inflow_1,2,1,0,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,0,3 - Classic_commodity_inflow_1,2,1,0,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,0,0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,0,1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,0,2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,0,3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,0,4
   - Classic_commodity_inflow_1,2,1,0,4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,0 - sc_commodity_inflow_1,2,1,0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,1,0 - Classic_commodity_inflow_0,2,1,1,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,1,0
   + Classic_commodity_outflow_0,2,1,1,1
   - Classic_commodity_inflow_0,2,1,1,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,1,2 - Classic_commodity_inflow_0,2,1,1,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,1,3 - Classic_commodity_inflow_0,2,1,1,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,1,0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,1,1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,1,2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,1,3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,1,4
   - Classic_commodity_inflow_0,2,1,1,4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,1 - sc_commodity_inflow_0,2,1,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,1,0 - Classic_commodity_inflow_1,2,1,1,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,1,0
   + Classic_commodity_outflow_1,2,1,1,1
   - Classic_commodity_inflow_1,2,1,1,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,1,2 - Classic_commodity_inflow_1,2,1,1,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,1,3 - Classic_commodity_inflow_1,2,1,1,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,1,0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,1,1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,1,2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,1,3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,1,4
   - Classic_commodity_inflow_1,2,1,1,4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,1 - sc_commodity_inflow_1,2,1,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,2,0 - Classic_commodity_inflow_0,2,1,2,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,2,0
   + Classic_commodity_outflow_0,2,1,2,1
   - Classic_commodity_inflow_0,2,1,2,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,2,2 - Classic_commodity_inflow_0,2,1,2,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,2,3 - Classic_commodity_inflow_0,2,1,2,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,2,0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,2,1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,2,2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,2,3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,2,4
   - Classic_commodity_inflow_0,2,1,2,4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,2 - sc_commodity_inflow_0,2,1,2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,2,0 - Classic_commodity_inflow_1,2,1,2,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,2,0
   + Classic_commodity_outflow_1,2,1,2,1
   - Classic_commodity_inflow_1,2,1,2,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,2,2 - Classic_commodity_inflow_1,2,1,2,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,2,3 - Classic_commodity_inflow_1,2,1,2,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,2,0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,2,1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,2,2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,2,3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,2,4
   - Classic_commodity_inflow_1,2,1,2,4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,2 - sc_commodity_inflow_1,2,1,2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,3,0 - Classic_commodity_inflow_0,2,1,3,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,3,0
   + Classic_commodity_outflow_0,2,1,3,1
   - Classic_commodity_inflow_0,2,1,3,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,3,2 - Classic_commodity_inflow_0,2,1,3,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,3,3 - Classic_commodity_inflow_0,2,1,3,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,3,0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,3,1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,3,2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,3,3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,3,4
   - Classic_commodity_inflow_0,2,1,3,4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,3 - sc_commodity_inflow_0,2,1,3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,3,0 - Classic_commodity_inflow_1,2,1,3,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,3,0
   + Classic_commodity_outflow_1,2,1,3,1
   - Classic_commodity_inflow_1,2,1,3,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,3,2 - Classic_commodity_inflow_1,2,1,3,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,3,3 - Classic_commodity_inflow_1,2,1,3,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,3,0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,3,1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,3,2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,3,3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,3,4
   - Classic_commodity_inflow_1,2,1,3,4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,3 - sc_commodity_inflow_1,2,1,3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,4,0 - Classic_commodity_inflow_0,2,1,4,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,4,0
   + Classic_commodity_outflow_0,2,1,4,1
   - Classic_commodity_inflow_0,2,1,4,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,4,2 - Classic_commodity_inflow_0,2,1,4,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,4,3 - Classic_commodity_inflow_0,2,1,4,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,4,0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,4,1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,4,2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,4,3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,4,4
   - Classic_commodity_inflow_0,2,1,4,4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,4 = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,4 - sc_commodity_inflow_0,2,1,4 = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,4,0 - Classic_commodity_inflow_1,2,1,4,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,4,0
   + Classic_commodity_outflow_1,2,1,4,1
   - Classic_commodity_inflow_1,2,1,4,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,4,2 - Classic_commodity_inflow_1,2,1,4,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,4,3 - Classic_commodity_inflow_1,2,1,4,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,4,0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,4,1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,4,2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,4,3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,4,4
   - Classic_commodity_inflow_1,2,1,4,4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,4 = 0
 Arc_transformationConstraint_Start2_End1_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,4 - sc_commodity_inflow_1,2,1,4 = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,5,0 - Classic_commodity_inflow_0,2,1,5,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,5,0
   + Classic_commodity_outflow_0,2,1,5,1
   - Classic_commodity_inflow_0,2,1,5,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,5,2 - Classic_commodity_inflow_0,2,1,5,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,5,3 - Classic_commodity_inflow_0,2,1,5,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,5,0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,5,1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,5,2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,5,3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,5,4
   - Classic_commodity_inflow_0,2,1,5,4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,5 - sc_commodity_inflow_0,2,1,5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,5,0 - Classic_commodity_inflow_1,2,1,5,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,5,0
   + Classic_commodity_outflow_1,2,1,5,1
   - Classic_commodity_inflow_1,2,1,5,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,5,2 - Classic_commodity_inflow_1,2,1,5,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,5,3 - Classic_commodity_inflow_1,2,1,5,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,5,0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,5,1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,5,2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,5,3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,5,4
   - Classic_commodity_inflow_1,2,1,5,4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,5 - sc_commodity_inflow_1,2,1,5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,6,0 - Classic_commodity_inflow_0,2,1,6,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,6,0
   + Classic_commodity_outflow_0,2,1,6,1
   - Classic_commodity_inflow_0,2,1,6,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,6,2 - Classic_commodity_inflow_0,2,1,6,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,6,3 - Classic_commodity_inflow_0,2,1,6,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,6,0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,6,1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,6,2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,6,3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,6,4
   - Classic_commodity_inflow_0,2,1,6,4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,6 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,6 - sc_commodity_inflow_0,2,1,6 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,6,0 - Classic_commodity_inflow_1,2,1,6,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,6,0
   + Classic_commodity_outflow_1,2,1,6,1
   - Classic_commodity_inflow_1,2,1,6,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,6,2 - Classic_commodity_inflow_1,2,1,6,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,6,3 - Classic_commodity_inflow_1,2,1,6,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,6,0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,6,1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,6,2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,6,3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,6,4
   - Classic_commodity_inflow_1,2,1,6,4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,6 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,6 - sc_commodity_inflow_1,2,1,6 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,7,0 - Classic_commodity_inflow_0,2,1,7,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,7,0
   + Classic_commodity_outflow_0,2,1,7,1
   - Classic_commodity_inflow_0,2,1,7,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,7,2 - Classic_commodity_inflow_0,2,1,7,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,7,3 - Classic_commodity_inflow_0,2,1,7,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,7,0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,7,1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,7,2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,7,3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,7,4
   - Classic_commodity_inflow_0,2,1,7,4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,7 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,7 - sc_commodity_inflow_0,2,1,7 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,7,0 - Classic_commodity_inflow_1,2,1,7,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,7,0
   + Classic_commodity_outflow_1,2,1,7,1
   - Classic_commodity_inflow_1,2,1,7,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,7,2 - Classic_commodity_inflow_1,2,1,7,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,7,3 - Classic_commodity_inflow_1,2,1,7,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,7,0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,7,1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,7,2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,7,3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,7,4
   - Classic_commodity_inflow_1,2,1,7,4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,7 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,7 - sc_commodity_inflow_1,2,1,7 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,8,0 - Classic_commodity_inflow_0,2,1,8,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,8,0
   + Classic_commodity_outflow_0,2,1,8,1
   - Classic_commodity_inflow_0,2,1,8,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,8,2 - Classic_commodity_inflow_0,2,1,8,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,8,3 - Classic_commodity_inflow_0,2,1,8,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,8,0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,8,1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,8,2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,8,3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,8,4
   - Classic_commodity_inflow_0,2,1,8,4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,8 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,8 - sc_commodity_inflow_0,2,1,8 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,8,0 - Classic_commodity_inflow_1,2,1,8,0
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,8,0
   + Classic_commodity_outflow_1,2,1,8,1
   - Classic_commodity_inflow_1,2,1,8,1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,8,2 - Classic_commodity_inflow_1,2,1,8,2
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,8,3 - Classic_commodity_inflow_1,2,1,8,3
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,8,0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,8,1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,8,2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,8,3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,8,4
   - Classic_commodity_inflow_1,2,1,8,4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,8 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,8 - sc_commodity_inflow_1,2,1,8 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,0,0 - Classic_commodity_inflow_0,2,2,0,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,0,0
   + Classic_commodity_outflow_0,2,2,0,1
   - Classic_commodity_inflow_0,2,2,0,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,0,2 - Classic_commodity_inflow_0,2,2,0,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,0,3 - Classic_commodity_inflow_0,2,2,0,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,0,4 - Classic_commodity_inflow_0,2,2,0,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,0 - sc_commodity_inflow_0,2,2,0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,0,0 - Classic_commodity_inflow_1,2,2,0,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,0,0
   + Classic_commodity_outflow_1,2,2,0,1
   - Classic_commodity_inflow_1,2,2,0,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,0,2 - Classic_commodity_inflow_1,2,2,0,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,0,3 - Classic_commodity_inflow_1,2,2,0,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,0,4 - Classic_commodity_inflow_1,2,2,0,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,0 - sc_commodity_inflow_1,2,2,0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,1,0 - Classic_commodity_inflow_0,2,2,1,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,1,0
   + Classic_commodity_outflow_0,2,2,1,1
   - Classic_commodity_inflow_0,2,2,1,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,1,2 - Classic_commodity_inflow_0,2,2,1,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,1,3 - Classic_commodity_inflow_0,2,2,1,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,1,4 - Classic_commodity_inflow_0,2,2,1,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,1 - sc_commodity_inflow_0,2,2,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,1,0 - Classic_commodity_inflow_1,2,2,1,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,1,0
   + Classic_commodity_outflow_1,2,2,1,1
   - Classic_commodity_inflow_1,2,2,1,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,1,2 - Classic_commodity_inflow_1,2,2,1,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,1,3 - Classic_commodity_inflow_1,2,2,1,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,1,4 - Classic_commodity_inflow_1,2,2,1,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,1 - sc_commodity_inflow_1,2,2,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,2,0 - Classic_commodity_inflow_0,2,2,2,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,2,0
   + Classic_commodity_outflow_0,2,2,2,1
   - Classic_commodity_inflow_0,2,2,2,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,2,2 - Classic_commodity_inflow_0,2,2,2,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,2,3 - Classic_commodity_inflow_0,2,2,2,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,2,4 - Classic_commodity_inflow_0,2,2,2,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,2 - sc_commodity_inflow_0,2,2,2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,2,0 - Classic_commodity_inflow_1,2,2,2,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,2,0
   + Classic_commodity_outflow_1,2,2,2,1
   - Classic_commodity_inflow_1,2,2,2,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,2,2 - Classic_commodity_inflow_1,2,2,2,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,2,3 - Classic_commodity_inflow_1,2,2,2,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,2,4 - Classic_commodity_inflow_1,2,2,2,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,2 - sc_commodity_inflow_1,2,2,2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,3,0 - Classic_commodity_inflow_0,2,2,3,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,3,0
   + Classic_commodity_outflow_0,2,2,3,1
   - Classic_commodity_inflow_0,2,2,3,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,3,2 - Classic_commodity_inflow_0,2,2,3,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,3,3 - Classic_commodity_inflow_0,2,2,3,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,3,4 - Classic_commodity_inflow_0,2,2,3,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,3 - sc_commodity_inflow_0,2,2,3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,3,0 - Classic_commodity_inflow_1,2,2,3,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,3,0
   + Classic_commodity_outflow_1,2,2,3,1
   - Classic_commodity_inflow_1,2,2,3,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,3,2 - Classic_commodity_inflow_1,2,2,3,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,3,3 - Classic_commodity_inflow_1,2,2,3,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,3,4 - Classic_commodity_inflow_1,2,2,3,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,3 - sc_commodity_inflow_1,2,2,3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,4,0 - Classic_commodity_inflow_0,2,2,4,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,4,0
   + Classic_commodity_outflow_0,2,2,4,1
   - Classic_commodity_inflow_0,2,2,4,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,4,2 - Classic_commodity_inflow_0,2,2,4,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,4,3 - Classic_commodity_inflow_0,2,2,4,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,4,4 - Classic_commodity_inflow_0,2,2,4,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,4 - sc_commodity_inflow_0,2,2,4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,4,0 - Classic_commodity_inflow_1,2,2,4,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,4,0
   + Classic_commodity_outflow_1,2,2,4,1
   - Classic_commodity_inflow_1,2,2,4,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,4,2 - Classic_commodity_inflow_1,2,2,4,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,4,3 - Classic_commodity_inflow_1,2,2,4,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,4,4 - Classic_commodity_inflow_1,2,2,4,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,4 - sc_commodity_inflow_1,2,2,4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,5,0 - Classic_commodity_inflow_0,2,2,5,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,5,0
   + Classic_commodity_outflow_0,2,2,5,1
   - Classic_commodity_inflow_0,2,2,5,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,5,2 - Classic_commodity_inflow_0,2,2,5,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,5,3 - Classic_commodity_inflow_0,2,2,5,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,5,4 - Classic_commodity_inflow_0,2,2,5,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,5 - sc_commodity_inflow_0,2,2,5 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,5,0 - Classic_commodity_inflow_1,2,2,5,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,5,0
   + Classic_commodity_outflow_1,2,2,5,1
   - Classic_commodity_inflow_1,2,2,5,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,5,2 - Classic_commodity_inflow_1,2,2,5,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,5,3 - Classic_commodity_inflow_1,2,2,5,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,5,4 - Classic_commodity_inflow_1,2,2,5,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,5 - sc_commodity_inflow_1,2,2,5 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,6,0 - Classic_commodity_inflow_0,2,2,6,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,6,0
   + Classic_commodity_outflow_0,2,2,6,1
   - Classic_commodity_inflow_0,2,2,6,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,6,2 - Classic_commodity_inflow_0,2,2,6,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,6,3 - Classic_commodity_inflow_0,2,2,6,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,6,4 - Classic_commodity_inflow_0,2,2,6,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,6 - sc_commodity_inflow_0,2,2,6 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,6,0 - Classic_commodity_inflow_1,2,2,6,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,6,0
   + Classic_commodity_outflow_1,2,2,6,1
   - Classic_commodity_inflow_1,2,2,6,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,6,2 - Classic_commodity_inflow_1,2,2,6,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,6,3 - Classic_commodity_inflow_1,2,2,6,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,6,4 - Classic_commodity_inflow_1,2,2,6,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,6 - sc_commodity_inflow_1,2,2,6 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,7,0 - Classic_commodity_inflow_0,2,2,7,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,7,0
   + Classic_commodity_outflow_0,2,2,7,1
   - Classic_commodity_inflow_0,2,2,7,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,7,2 - Classic_commodity_inflow_0,2,2,7,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,7,3 - Classic_commodity_inflow_0,2,2,7,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,7,4 - Classic_commodity_inflow_0,2,2,7,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,7 - sc_commodity_inflow_0,2,2,7 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,7,0 - Classic_commodity_inflow_1,2,2,7,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,7,0
   + Classic_commodity_outflow_1,2,2,7,1
   - Classic_commodity_inflow_1,2,2,7,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,7,2 - Classic_commodity_inflow_1,2,2,7,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,7,3 - Classic_commodity_inflow_1,2,2,7,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,7,4 - Classic_commodity_inflow_1,2,2,7,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,7 - sc_commodity_inflow_1,2,2,7 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,8,0 - Classic_commodity_inflow_0,2,2,8,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,8,0
   + Classic_commodity_outflow_0,2,2,8,1
   - Classic_commodity_inflow_0,2,2,8,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,8,2 - Classic_commodity_inflow_0,2,2,8,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,8,3 - Classic_commodity_inflow_0,2,2,8,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,8,4 - Classic_commodity_inflow_0,2,2,8,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,8 - sc_commodity_inflow_0,2,2,8 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,8,0 - Classic_commodity_inflow_1,2,2,8,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,8,0
   + Classic_commodity_outflow_1,2,2,8,1
   - Classic_commodity_inflow_1,2,2,8,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,8,2 - Classic_commodity_inflow_1,2,2,8,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,8,3 - Classic_commodity_inflow_1,2,2,8,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,8,4 - Classic_commodity_inflow_1,2,2,8,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,8 - sc_commodity_inflow_1,2,2,8 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,9,0 - Classic_commodity_inflow_0,2,2,9,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,9,0
   + Classic_commodity_outflow_0,2,2,9,1
   - Classic_commodity_inflow_0,2,2,9,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,9,2 - Classic_commodity_inflow_0,2,2,9,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,9,3 - Classic_commodity_inflow_0,2,2,9,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,9,4 - Classic_commodity_inflow_0,2,2,9,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,9 - sc_commodity_inflow_0,2,2,9 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,9,0 - Classic_commodity_inflow_1,2,2,9,0
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,9,0
   + Classic_commodity_outflow_1,2,2,9,1
   - Classic_commodity_inflow_1,2,2,9,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,9,2 - Classic_commodity_inflow_1,2,2,9,2
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,9,3 - Classic_commodity_inflow_1,2,2,9,3
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,9,4 - Classic_commodity_inflow_1,2,2,9,4
   = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,9 - sc_commodity_inflow_1,2,2,9 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,10,0
   - Classic_commodity_inflow_0,2,2,10,0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,10,0
   + Classic_commodity_outflow_0,2,2,10,1
   - Classic_commodity_inflow_0,2,2,10,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,10,2
   - Classic_commodity_inflow_0,2,2,10,2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,10,3
   - Classic_commodity_inflow_0,2,2,10,3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,10,4
   - Classic_commodity_inflow_0,2,2,10,4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,10 - sc_commodity_inflow_0,2,2,10 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,10,0
   - Classic_commodity_inflow_1,2,2,10,0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,10,0
   + Classic_commodity_outflow_1,2,2,10,1
   - Classic_commodity_inflow_1,2,2,10,1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,10,2
   - Classic_commodity_inflow_1,2,2,10,2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,10,3
   - Classic_commodity_inflow_1,2,2,10,3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,10,4
   - Classic_commodity_inflow_1,2,2,10,4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,10 - sc_commodity_inflow_1,2,2,10 = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,0,0 - Classic_commodity_inflow_0,2,3,0,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,0,0
   + Classic_commodity_outflow_0,2,3,0,1
   - Classic_commodity_inflow_0,2,3,0,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,0,2 - Classic_commodity_inflow_0,2,3,0,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,0,3 - Classic_commodity_inflow_0,2,3,0,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,0,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,0,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,0,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,0,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,0,4
   - Classic_commodity_inflow_0,2,3,0,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,0 - sc_commodity_inflow_0,2,3,0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,0,0 - Classic_commodity_inflow_1,2,3,0,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,0,0
   + Classic_commodity_outflow_1,2,3,0,1
   - Classic_commodity_inflow_1,2,3,0,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,0,2 - Classic_commodity_inflow_1,2,3,0,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,0,3 - Classic_commodity_inflow_1,2,3,0,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,0,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,0,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,0,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,0,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,0,4
   - Classic_commodity_inflow_1,2,3,0,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,0 - sc_commodity_inflow_1,2,3,0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,1,0 - Classic_commodity_inflow_0,2,3,1,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,1,0
   + Classic_commodity_outflow_0,2,3,1,1
   - Classic_commodity_inflow_0,2,3,1,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,1,2 - Classic_commodity_inflow_0,2,3,1,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,1,3 - Classic_commodity_inflow_0,2,3,1,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,1,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,1,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,1,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,1,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,1,4
   - Classic_commodity_inflow_0,2,3,1,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,1 - sc_commodity_inflow_0,2,3,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,1,0 - Classic_commodity_inflow_1,2,3,1,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,1,0
   + Classic_commodity_outflow_1,2,3,1,1
   - Classic_commodity_inflow_1,2,3,1,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,1,2 - Classic_commodity_inflow_1,2,3,1,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,1,3 - Classic_commodity_inflow_1,2,3,1,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,1,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,1,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,1,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,1,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,1,4
   - Classic_commodity_inflow_1,2,3,1,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,1 - sc_commodity_inflow_1,2,3,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,2,0 - Classic_commodity_inflow_0,2,3,2,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,2,0
   + Classic_commodity_outflow_0,2,3,2,1
   - Classic_commodity_inflow_0,2,3,2,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,2,2 - Classic_commodity_inflow_0,2,3,2,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,2,3 - Classic_commodity_inflow_0,2,3,2,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,2,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,2,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,2,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,2,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,2,4
   - Classic_commodity_inflow_0,2,3,2,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,2 - sc_commodity_inflow_0,2,3,2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,2,0 - Classic_commodity_inflow_1,2,3,2,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,2,0
   + Classic_commodity_outflow_1,2,3,2,1
   - Classic_commodity_inflow_1,2,3,2,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,2,2 - Classic_commodity_inflow_1,2,3,2,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,2,3 - Classic_commodity_inflow_1,2,3,2,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,2,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,2,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,2,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,2,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,2,4
   - Classic_commodity_inflow_1,2,3,2,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,2 - sc_commodity_inflow_1,2,3,2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,3,0 - Classic_commodity_inflow_0,2,3,3,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,3,0
   + Classic_commodity_outflow_0,2,3,3,1
   - Classic_commodity_inflow_0,2,3,3,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,3,2 - Classic_commodity_inflow_0,2,3,3,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,3,3 - Classic_commodity_inflow_0,2,3,3,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,3,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,3,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,3,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,3,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,3,4
   - Classic_commodity_inflow_0,2,3,3,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,3 - sc_commodity_inflow_0,2,3,3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,3,0 - Classic_commodity_inflow_1,2,3,3,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,3,0
   + Classic_commodity_outflow_1,2,3,3,1
   - Classic_commodity_inflow_1,2,3,3,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,3,2 - Classic_commodity_inflow_1,2,3,3,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,3,3 - Classic_commodity_inflow_1,2,3,3,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,3,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,3,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,3,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,3,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,3,4
   - Classic_commodity_inflow_1,2,3,3,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,3 - sc_commodity_inflow_1,2,3,3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,4,0 - Classic_commodity_inflow_0,2,3,4,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,4,0
   + Classic_commodity_outflow_0,2,3,4,1
   - Classic_commodity_inflow_0,2,3,4,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,4,2 - Classic_commodity_inflow_0,2,3,4,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,4,3 - Classic_commodity_inflow_0,2,3,4,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,4,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,4,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,4,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,4,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,4,4
   - Classic_commodity_inflow_0,2,3,4,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,4 - sc_commodity_inflow_0,2,3,4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,4,0 - Classic_commodity_inflow_1,2,3,4,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,4,0
   + Classic_commodity_outflow_1,2,3,4,1
   - Classic_commodity_inflow_1,2,3,4,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,4,2 - Classic_commodity_inflow_1,2,3,4,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,4,3 - Classic_commodity_inflow_1,2,3,4,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,4,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,4,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,4,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,4,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,4,4
   - Classic_commodity_inflow_1,2,3,4,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,4 - sc_commodity_inflow_1,2,3,4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,5,0 - Classic_commodity_inflow_0,2,3,5,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,5,0
   + Classic_commodity_outflow_0,2,3,5,1
   - Classic_commodity_inflow_0,2,3,5,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,5,2 - Classic_commodity_inflow_0,2,3,5,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,5,3 - Classic_commodity_inflow_0,2,3,5,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,5,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,5,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,5,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,5,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,5,4
   - Classic_commodity_inflow_0,2,3,5,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,5 - sc_commodity_inflow_0,2,3,5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,5,0 - Classic_commodity_inflow_1,2,3,5,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,5,0
   + Classic_commodity_outflow_1,2,3,5,1
   - Classic_commodity_inflow_1,2,3,5,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,5,2 - Classic_commodity_inflow_1,2,3,5,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,5,3 - Classic_commodity_inflow_1,2,3,5,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,5,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,5,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,5,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,5,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,5,4
   - Classic_commodity_inflow_1,2,3,5,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,5 - sc_commodity_inflow_1,2,3,5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,6,0 - Classic_commodity_inflow_0,2,3,6,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,6,0
   + Classic_commodity_outflow_0,2,3,6,1
   - Classic_commodity_inflow_0,2,3,6,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,6,2 - Classic_commodity_inflow_0,2,3,6,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,6,3 - Classic_commodity_inflow_0,2,3,6,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,6,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,6,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,6,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,6,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,6,4
   - Classic_commodity_inflow_0,2,3,6,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,6 - sc_commodity_inflow_0,2,3,6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,6,0 - Classic_commodity_inflow_1,2,3,6,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,6,0
   + Classic_commodity_outflow_1,2,3,6,1
   - Classic_commodity_inflow_1,2,3,6,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,6,2 - Classic_commodity_inflow_1,2,3,6,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,6,3 - Classic_commodity_inflow_1,2,3,6,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,6,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,6,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,6,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,6,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,6,4
   - Classic_commodity_inflow_1,2,3,6,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,6 - sc_commodity_inflow_1,2,3,6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,7,0 - Classic_commodity_inflow_0,2,3,7,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,7,0
   + Classic_commodity_outflow_0,2,3,7,1
   - Classic_commodity_inflow_0,2,3,7,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,7,2 - Classic_commodity_inflow_0,2,3,7,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,7,3 - Classic_commodity_inflow_0,2,3,7,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,7,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,7,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,7,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,7,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,7,4
   - Classic_commodity_inflow_0,2,3,7,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,7 = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,7 - sc_commodity_inflow_0,2,3,7 = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,7,0 - Classic_commodity_inflow_1,2,3,7,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,7,0
   + Classic_commodity_outflow_1,2,3,7,1
   - Classic_commodity_inflow_1,2,3,7,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,7,2 - Classic_commodity_inflow_1,2,3,7,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,7,3 - Classic_commodity_inflow_1,2,3,7,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,7,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,7,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,7,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,7,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,7,4
   - Classic_commodity_inflow_1,2,3,7,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,7 = 0
 Arc_transformationConstraint_Start2_End3_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,7 - sc_commodity_inflow_1,2,3,7 = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,8,0 - Classic_commodity_inflow_0,2,3,8,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,8,0
   + Classic_commodity_outflow_0,2,3,8,1
   - Classic_commodity_inflow_0,2,3,8,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,8,2 - Classic_commodity_inflow_0,2,3,8,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,8,3 - Classic_commodity_inflow_0,2,3,8,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,8,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,8,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,8,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,8,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,8,4
   - Classic_commodity_inflow_0,2,3,8,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,8 = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,8 - sc_commodity_inflow_0,2,3,8 = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,8,0 - Classic_commodity_inflow_1,2,3,8,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,8,0
   + Classic_commodity_outflow_1,2,3,8,1
   - Classic_commodity_inflow_1,2,3,8,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,8,2 - Classic_commodity_inflow_1,2,3,8,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,8,3 - Classic_commodity_inflow_1,2,3,8,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,8,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,8,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,8,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,8,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,8,4
   - Classic_commodity_inflow_1,2,3,8,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,8 = 0
 Arc_transformationConstraint_Start2_End3_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,8 - sc_commodity_inflow_1,2,3,8 = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,9,0 - Classic_commodity_inflow_0,2,3,9,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,9,0
   + Classic_commodity_outflow_0,2,3,9,1
   - Classic_commodity_inflow_0,2,3,9,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,9,2 - Classic_commodity_inflow_0,2,3,9,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,9,3 - Classic_commodity_inflow_0,2,3,9,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,9,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,9,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,9,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,9,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,9,4
   - Classic_commodity_inflow_0,2,3,9,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,9 = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,9 - sc_commodity_inflow_0,2,3,9 = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,9,0 - Classic_commodity_inflow_1,2,3,9,0
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,9,0
   + Classic_commodity_outflow_1,2,3,9,1
   - Classic_commodity_inflow_1,2,3,9,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,9,2 - Classic_commodity_inflow_1,2,3,9,2
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,9,3 - Classic_commodity_inflow_1,2,3,9,3
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,9,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,9,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,9,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,9,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,9,4
   - Classic_commodity_inflow_1,2,3,9,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,9 = 0
 Arc_transformationConstraint_Start2_End3_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,9 - sc_commodity_inflow_1,2,3,9 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,10,0
   - Classic_commodity_inflow_0,2,3,10,0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,10,0
   + Classic_commodity_outflow_0,2,3,10,1
   - Classic_commodity_inflow_0,2,3,10,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,10,2
   - Classic_commodity_inflow_0,2,3,10,2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,10,3
   - Classic_commodity_inflow_0,2,3,10,3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,10,0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,10,1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,10,2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,10,3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,10,4
   - Classic_commodity_inflow_0,2,3,10,4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,10 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,10 - sc_commodity_inflow_0,2,3,10 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,10,0
   - Classic_commodity_inflow_1,2,3,10,0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,10,0
   + Classic_commodity_outflow_1,2,3,10,1
   - Classic_commodity_inflow_1,2,3,10,1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,10,2
   - Classic_commodity_inflow_1,2,3,10,2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,10,3
   - Classic_commodity_inflow_1,2,3,10,3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,10,0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,10,1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,10,2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,10,3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,10,4
   - Classic_commodity_inflow_1,2,3,10,4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,10 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,10 - sc_commodity_inflow_1,2,3,10 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,0,0 - Classic_commodity_inflow_0,3,2,0,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,0,0
   + Classic_commodity_outflow_0,3,2,0,1
   - Classic_commodity_inflow_0,3,2,0,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,0,2 - Classic_commodity_inflow_0,3,2,0,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,0,3 - Classic_commodity_inflow_0,3,2,0,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,0,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,0,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,0,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,0,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,0,4
   - Classic_commodity_inflow_0,3,2,0,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,0 - sc_commodity_inflow_0,3,2,0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,0,0 - Classic_commodity_inflow_1,3,2,0,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,0,0
   + Classic_commodity_outflow_1,3,2,0,1
   - Classic_commodity_inflow_1,3,2,0,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,0,2 - Classic_commodity_inflow_1,3,2,0,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,0,3 - Classic_commodity_inflow_1,3,2,0,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,0,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,0,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,0,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,0,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,0,4
   - Classic_commodity_inflow_1,3,2,0,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,0 - sc_commodity_inflow_1,3,2,0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,1,0 - Classic_commodity_inflow_0,3,2,1,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,1,0
   + Classic_commodity_outflow_0,3,2,1,1
   - Classic_commodity_inflow_0,3,2,1,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,1,2 - Classic_commodity_inflow_0,3,2,1,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,1,3 - Classic_commodity_inflow_0,3,2,1,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,1,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,1,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,1,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,1,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,1,4
   - Classic_commodity_inflow_0,3,2,1,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,1 - sc_commodity_inflow_0,3,2,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,1,0 - Classic_commodity_inflow_1,3,2,1,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,1,0
   + Classic_commodity_outflow_1,3,2,1,1
   - Classic_commodity_inflow_1,3,2,1,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,1,2 - Classic_commodity_inflow_1,3,2,1,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,1,3 - Classic_commodity_inflow_1,3,2,1,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,1,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,1,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,1,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,1,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,1,4
   - Classic_commodity_inflow_1,3,2,1,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,1 - sc_commodity_inflow_1,3,2,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,2,0 - Classic_commodity_inflow_0,3,2,2,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,2,0
   + Classic_commodity_outflow_0,3,2,2,1
   - Classic_commodity_inflow_0,3,2,2,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,2,2 - Classic_commodity_inflow_0,3,2,2,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,2,3 - Classic_commodity_inflow_0,3,2,2,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,2,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,2,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,2,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,2,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,2,4
   - Classic_commodity_inflow_0,3,2,2,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,2 - sc_commodity_inflow_0,3,2,2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,2,0 - Classic_commodity_inflow_1,3,2,2,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,2,0
   + Classic_commodity_outflow_1,3,2,2,1
   - Classic_commodity_inflow_1,3,2,2,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,2,2 - Classic_commodity_inflow_1,3,2,2,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,2,3 - Classic_commodity_inflow_1,3,2,2,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,2,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,2,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,2,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,2,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,2,4
   - Classic_commodity_inflow_1,3,2,2,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,2 - sc_commodity_inflow_1,3,2,2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,3,0 - Classic_commodity_inflow_0,3,2,3,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,3,0
   + Classic_commodity_outflow_0,3,2,3,1
   - Classic_commodity_inflow_0,3,2,3,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,3,2 - Classic_commodity_inflow_0,3,2,3,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,3,3 - Classic_commodity_inflow_0,3,2,3,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,3,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,3,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,3,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,3,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,3,4
   - Classic_commodity_inflow_0,3,2,3,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,3 - sc_commodity_inflow_0,3,2,3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,3,0 - Classic_commodity_inflow_1,3,2,3,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,3,0
   + Classic_commodity_outflow_1,3,2,3,1
   - Classic_commodity_inflow_1,3,2,3,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,3,2 - Classic_commodity_inflow_1,3,2,3,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,3,3 - Classic_commodity_inflow_1,3,2,3,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,3,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,3,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,3,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,3,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,3,4
   - Classic_commodity_inflow_1,3,2,3,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,3 - sc_commodity_inflow_1,3,2,3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,4,0 - Classic_commodity_inflow_0,3,2,4,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,4,0
   + Classic_commodity_outflow_0,3,2,4,1
   - Classic_commodity_inflow_0,3,2,4,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,4,2 - Classic_commodity_inflow_0,3,2,4,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,4,3 - Classic_commodity_inflow_0,3,2,4,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,4,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,4,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,4,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,4,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,4,4
   - Classic_commodity_inflow_0,3,2,4,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,4 - sc_commodity_inflow_0,3,2,4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,4,0 - Classic_commodity_inflow_1,3,2,4,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,4,0
   + Classic_commodity_outflow_1,3,2,4,1
   - Classic_commodity_inflow_1,3,2,4,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,4,2 - Classic_commodity_inflow_1,3,2,4,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,4,3 - Classic_commodity_inflow_1,3,2,4,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,4,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,4,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,4,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,4,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,4,4
   - Classic_commodity_inflow_1,3,2,4,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,4 - sc_commodity_inflow_1,3,2,4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,5,0 - Classic_commodity_inflow_0,3,2,5,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,5,0
   + Classic_commodity_outflow_0,3,2,5,1
   - Classic_commodity_inflow_0,3,2,5,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,5,2 - Classic_commodity_inflow_0,3,2,5,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,5,3 - Classic_commodity_inflow_0,3,2,5,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,5,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,5,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,5,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,5,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,5,4
   - Classic_commodity_inflow_0,3,2,5,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,5 - sc_commodity_inflow_0,3,2,5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,5,0 - Classic_commodity_inflow_1,3,2,5,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,5,0
   + Classic_commodity_outflow_1,3,2,5,1
   - Classic_commodity_inflow_1,3,2,5,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,5,2 - Classic_commodity_inflow_1,3,2,5,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,5,3 - Classic_commodity_inflow_1,3,2,5,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,5,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,5,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,5,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,5,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,5,4
   - Classic_commodity_inflow_1,3,2,5,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,5 - sc_commodity_inflow_1,3,2,5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,6,0 - Classic_commodity_inflow_0,3,2,6,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,6,0
   + Classic_commodity_outflow_0,3,2,6,1
   - Classic_commodity_inflow_0,3,2,6,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,6,2 - Classic_commodity_inflow_0,3,2,6,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,6,3 - Classic_commodity_inflow_0,3,2,6,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,6,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,6,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,6,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,6,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,6,4
   - Classic_commodity_inflow_0,3,2,6,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,6 - sc_commodity_inflow_0,3,2,6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,6,0 - Classic_commodity_inflow_1,3,2,6,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,6,0
   + Classic_commodity_outflow_1,3,2,6,1
   - Classic_commodity_inflow_1,3,2,6,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,6,2 - Classic_commodity_inflow_1,3,2,6,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,6,3 - Classic_commodity_inflow_1,3,2,6,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,6,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,6,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,6,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,6,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,6,4
   - Classic_commodity_inflow_1,3,2,6,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,6 - sc_commodity_inflow_1,3,2,6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,7,0 - Classic_commodity_inflow_0,3,2,7,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,7,0
   + Classic_commodity_outflow_0,3,2,7,1
   - Classic_commodity_inflow_0,3,2,7,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,7,2 - Classic_commodity_inflow_0,3,2,7,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,7,3 - Classic_commodity_inflow_0,3,2,7,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,7,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,7,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,7,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,7,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,7,4
   - Classic_commodity_inflow_0,3,2,7,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,7 - sc_commodity_inflow_0,3,2,7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,7,0 - Classic_commodity_inflow_1,3,2,7,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,7,0
   + Classic_commodity_outflow_1,3,2,7,1
   - Classic_commodity_inflow_1,3,2,7,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,7,2 - Classic_commodity_inflow_1,3,2,7,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,7,3 - Classic_commodity_inflow_1,3,2,7,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,7,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,7,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,7,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,7,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,7,4
   - Classic_commodity_inflow_1,3,2,7,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,7 - sc_commodity_inflow_1,3,2,7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,8,0 - Classic_commodity_inflow_0,3,2,8,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,8,0
   + Classic_commodity_outflow_0,3,2,8,1
   - Classic_commodity_inflow_0,3,2,8,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,8,2 - Classic_commodity_inflow_0,3,2,8,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,8,3 - Classic_commodity_inflow_0,3,2,8,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,8,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,8,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,8,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,8,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,8,4
   - Classic_commodity_inflow_0,3,2,8,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,8 = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,8 - sc_commodity_inflow_0,3,2,8 = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,8,0 - Classic_commodity_inflow_1,3,2,8,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,8,0
   + Classic_commodity_outflow_1,3,2,8,1
   - Classic_commodity_inflow_1,3,2,8,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,8,2 - Classic_commodity_inflow_1,3,2,8,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,8,3 - Classic_commodity_inflow_1,3,2,8,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,8,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,8,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,8,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,8,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,8,4
   - Classic_commodity_inflow_1,3,2,8,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,8 = 0
 Arc_transformationConstraint_Start3_End2_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,8 - sc_commodity_inflow_1,3,2,8 = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,9,0 - Classic_commodity_inflow_0,3,2,9,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,9,0
   + Classic_commodity_outflow_0,3,2,9,1
   - Classic_commodity_inflow_0,3,2,9,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,9,2 - Classic_commodity_inflow_0,3,2,9,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,9,3 - Classic_commodity_inflow_0,3,2,9,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,9,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,9,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,9,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,9,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,9,4
   - Classic_commodity_inflow_0,3,2,9,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,9 = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,9 - sc_commodity_inflow_0,3,2,9 = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,9,0 - Classic_commodity_inflow_1,3,2,9,0
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,9,0
   + Classic_commodity_outflow_1,3,2,9,1
   - Classic_commodity_inflow_1,3,2,9,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,9,2 - Classic_commodity_inflow_1,3,2,9,2
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,9,3 - Classic_commodity_inflow_1,3,2,9,3
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,9,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,9,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,9,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,9,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,9,4
   - Classic_commodity_inflow_1,3,2,9,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,9 = 0
 Arc_transformationConstraint_Start3_End2_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,9 - sc_commodity_inflow_1,3,2,9 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,10,0
   - Classic_commodity_inflow_0,3,2,10,0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,10,0
   + Classic_commodity_outflow_0,3,2,10,1
   - Classic_commodity_inflow_0,3,2,10,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,10,2
   - Classic_commodity_inflow_0,3,2,10,2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,10,3
   - Classic_commodity_inflow_0,3,2,10,3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,10,0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,10,1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,10,2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,10,3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,10,4
   - Classic_commodity_inflow_0,3,2,10,4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,10 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,10 - sc_commodity_inflow_0,3,2,10 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,10,0
   - Classic_commodity_inflow_1,3,2,10,0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,10,0
   + Classic_commodity_outflow_1,3,2,10,1
   - Classic_commodity_inflow_1,3,2,10,1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,10,2
   - Classic_commodity_inflow_1,3,2,10,2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,10,3
   - Classic_commodity_inflow_1,3,2,10,3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,10,0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,10,1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,10,2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,10,3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,10,4
   - Classic_commodity_inflow_1,3,2,10,4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,10 = 0
 Arc_transformationConstraint_Start3_End2_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,10 - sc_commodity_inflow_1,3,2,10 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,0,0 - Classic_commodity_inflow_0,3,3,0,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,0,0
   + Classic_commodity_outflow_0,3,3,0,1
   - Classic_commodity_inflow_0,3,3,0,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,0,2 - Classic_commodity_inflow_0,3,3,0,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,0,3 - Classic_commodity_inflow_0,3,3,0,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,0,4 - Classic_commodity_inflow_0,3,3,0,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,0 - sc_commodity_inflow_0,3,3,0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,0,0 - Classic_commodity_inflow_1,3,3,0,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,0,0
   + Classic_commodity_outflow_1,3,3,0,1
   - Classic_commodity_inflow_1,3,3,0,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,0,2 - Classic_commodity_inflow_1,3,3,0,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,0,3 - Classic_commodity_inflow_1,3,3,0,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,0,4 - Classic_commodity_inflow_1,3,3,0,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,0 - sc_commodity_inflow_1,3,3,0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,1,0 - Classic_commodity_inflow_0,3,3,1,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,1,0
   + Classic_commodity_outflow_0,3,3,1,1
   - Classic_commodity_inflow_0,3,3,1,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,1,2 - Classic_commodity_inflow_0,3,3,1,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,1,3 - Classic_commodity_inflow_0,3,3,1,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,1,4 - Classic_commodity_inflow_0,3,3,1,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,1 - sc_commodity_inflow_0,3,3,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,1,0 - Classic_commodity_inflow_1,3,3,1,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,1,0
   + Classic_commodity_outflow_1,3,3,1,1
   - Classic_commodity_inflow_1,3,3,1,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,1,2 - Classic_commodity_inflow_1,3,3,1,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,1,3 - Classic_commodity_inflow_1,3,3,1,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,1,4 - Classic_commodity_inflow_1,3,3,1,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,1 - sc_commodity_inflow_1,3,3,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,2,0 - Classic_commodity_inflow_0,3,3,2,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,2,0
   + Classic_commodity_outflow_0,3,3,2,1
   - Classic_commodity_inflow_0,3,3,2,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,2,2 - Classic_commodity_inflow_0,3,3,2,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,2,3 - Classic_commodity_inflow_0,3,3,2,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,2,4 - Classic_commodity_inflow_0,3,3,2,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,2 - sc_commodity_inflow_0,3,3,2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,2,0 - Classic_commodity_inflow_1,3,3,2,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,2,0
   + Classic_commodity_outflow_1,3,3,2,1
   - Classic_commodity_inflow_1,3,3,2,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,2,2 - Classic_commodity_inflow_1,3,3,2,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,2,3 - Classic_commodity_inflow_1,3,3,2,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,2,4 - Classic_commodity_inflow_1,3,3,2,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,2 - sc_commodity_inflow_1,3,3,2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,3,0 - Classic_commodity_inflow_0,3,3,3,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,3,0
   + Classic_commodity_outflow_0,3,3,3,1
   - Classic_commodity_inflow_0,3,3,3,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,3,2 - Classic_commodity_inflow_0,3,3,3,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,3,3 - Classic_commodity_inflow_0,3,3,3,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,3,4 - Classic_commodity_inflow_0,3,3,3,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,3 - sc_commodity_inflow_0,3,3,3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,3,0 - Classic_commodity_inflow_1,3,3,3,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,3,0
   + Classic_commodity_outflow_1,3,3,3,1
   - Classic_commodity_inflow_1,3,3,3,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,3,2 - Classic_commodity_inflow_1,3,3,3,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,3,3 - Classic_commodity_inflow_1,3,3,3,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,3,4 - Classic_commodity_inflow_1,3,3,3,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,3 - sc_commodity_inflow_1,3,3,3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,4,0 - Classic_commodity_inflow_0,3,3,4,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,4,0
   + Classic_commodity_outflow_0,3,3,4,1
   - Classic_commodity_inflow_0,3,3,4,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,4,2 - Classic_commodity_inflow_0,3,3,4,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,4,3 - Classic_commodity_inflow_0,3,3,4,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,4,4 - Classic_commodity_inflow_0,3,3,4,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,4 - sc_commodity_inflow_0,3,3,4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,4,0 - Classic_commodity_inflow_1,3,3,4,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,4,0
   + Classic_commodity_outflow_1,3,3,4,1
   - Classic_commodity_inflow_1,3,3,4,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,4,2 - Classic_commodity_inflow_1,3,3,4,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,4,3 - Classic_commodity_inflow_1,3,3,4,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,4,4 - Classic_commodity_inflow_1,3,3,4,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,4 - sc_commodity_inflow_1,3,3,4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,5,0 - Classic_commodity_inflow_0,3,3,5,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,5,0
   + Classic_commodity_outflow_0,3,3,5,1
   - Classic_commodity_inflow_0,3,3,5,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,5,2 - Classic_commodity_inflow_0,3,3,5,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,5,3 - Classic_commodity_inflow_0,3,3,5,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,5,4 - Classic_commodity_inflow_0,3,3,5,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,5 - sc_commodity_inflow_0,3,3,5 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,5,0 - Classic_commodity_inflow_1,3,3,5,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,5,0
   + Classic_commodity_outflow_1,3,3,5,1
   - Classic_commodity_inflow_1,3,3,5,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,5,2 - Classic_commodity_inflow_1,3,3,5,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,5,3 - Classic_commodity_inflow_1,3,3,5,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,5,4 - Classic_commodity_inflow_1,3,3,5,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,5 - sc_commodity_inflow_1,3,3,5 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,6,0 - Classic_commodity_inflow_0,3,3,6,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,6,0
   + Classic_commodity_outflow_0,3,3,6,1
   - Classic_commodity_inflow_0,3,3,6,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,6,2 - Classic_commodity_inflow_0,3,3,6,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,6,3 - Classic_commodity_inflow_0,3,3,6,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,6,4 - Classic_commodity_inflow_0,3,3,6,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,6 - sc_commodity_inflow_0,3,3,6 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,6,0 - Classic_commodity_inflow_1,3,3,6,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,6,0
   + Classic_commodity_outflow_1,3,3,6,1
   - Classic_commodity_inflow_1,3,3,6,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,6,2 - Classic_commodity_inflow_1,3,3,6,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,6,3 - Classic_commodity_inflow_1,3,3,6,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,6,4 - Classic_commodity_inflow_1,3,3,6,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,6 - sc_commodity_inflow_1,3,3,6 = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,7,0 - Classic_commodity_inflow_0,3,3,7,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,7,0
   + Classic_commodity_outflow_0,3,3,7,1
   - Classic_commodity_inflow_0,3,3,7,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,7,2 - Classic_commodity_inflow_0,3,3,7,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,7,3 - Classic_commodity_inflow_0,3,3,7,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,7,4 - Classic_commodity_inflow_0,3,3,7,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,7 - sc_commodity_inflow_0,3,3,7 = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,7,0 - Classic_commodity_inflow_1,3,3,7,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,7,0
   + Classic_commodity_outflow_1,3,3,7,1
   - Classic_commodity_inflow_1,3,3,7,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,7,2 - Classic_commodity_inflow_1,3,3,7,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,7,3 - Classic_commodity_inflow_1,3,3,7,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,7,4 - Classic_commodity_inflow_1,3,3,7,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,7 - sc_commodity_inflow_1,3,3,7 = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,8,0 - Classic_commodity_inflow_0,3,3,8,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,8,0
   + Classic_commodity_outflow_0,3,3,8,1
   - Classic_commodity_inflow_0,3,3,8,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,8,2 - Classic_commodity_inflow_0,3,3,8,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,8,3 - Classic_commodity_inflow_0,3,3,8,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,8,4 - Classic_commodity_inflow_0,3,3,8,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,8 - sc_commodity_inflow_0,3,3,8 = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,8,0 - Classic_commodity_inflow_1,3,3,8,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,8,0
   + Classic_commodity_outflow_1,3,3,8,1
   - Classic_commodity_inflow_1,3,3,8,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,8,2 - Classic_commodity_inflow_1,3,3,8,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,8,3 - Classic_commodity_inflow_1,3,3,8,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,8,4 - Classic_commodity_inflow_1,3,3,8,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,8 - sc_commodity_inflow_1,3,3,8 = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,9,0 - Classic_commodity_inflow_0,3,3,9,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,9,0
   + Classic_commodity_outflow_0,3,3,9,1
   - Classic_commodity_inflow_0,3,3,9,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,9,2 - Classic_commodity_inflow_0,3,3,9,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,9,3 - Classic_commodity_inflow_0,3,3,9,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,9,4 - Classic_commodity_inflow_0,3,3,9,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,9 - sc_commodity_inflow_0,3,3,9 = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,9,0 - Classic_commodity_inflow_1,3,3,9,0
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,9,0
   + Classic_commodity_outflow_1,3,3,9,1
   - Classic_commodity_inflow_1,3,3,9,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,9,2 - Classic_commodity_inflow_1,3,3,9,2
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,9,3 - Classic_commodity_inflow_1,3,3,9,3
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,9,4 - Classic_commodity_inflow_1,3,3,9,4
   = 0
 Arc_transformationConstraint_Start3_End3_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,9 - sc_commodity_inflow_1,3,3,9 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,10,0
   - Classic_commodity_inflow_0,3,3,10,0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,10,0
   + Classic_commodity_outflow_0,3,3,10,1
   - Classic_commodity_inflow_0,3,3,10,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,10,2
   - Classic_commodity_inflow_0,3,3,10,2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,10,3
   - Classic_commodity_inflow_0,3,3,10,3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,10,4
   - Classic_commodity_inflow_0,3,3,10,4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,10 - sc_commodity_inflow_0,3,3,10 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,10,0
   - Classic_commodity_inflow_1,3,3,10,0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,10,0
   + Classic_commodity_outflow_1,3,3,10,1
   - Classic_commodity_inflow_1,3,3,10,1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,10,2
   - Classic_commodity_inflow_1,3,3,10,2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,10,3
   - Classic_commodity_inflow_1,3,3,10,3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,10,4
   - Classic_commodity_inflow_1,3,3,10,4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,10 - sc_commodity_inflow_1,3,3,10 = 0
 R1608: 100 Classic_commodity_outflow_0,0,0,0,0
   + Classic_commodity_outflow_0,0,0,0,1
   + Classic_commodity_outflow_0,0,0,0,2
   + Classic_commodity_outflow_0,0,0,0,3
   - 1000 sc_commodity_outflow_0,0,0,0 <= 0
 R1609: Classic_commodity_outflow_0,0,0,0,4
   - 65000 sc_commodity_outflow_0,0,0,0 <= 0
 R1610: 100 Classic_commodity_outflow_0,0,0,1,0
   + Classic_commodity_outflow_0,0,0,1,1
   + Classic_commodity_outflow_0,0,0,1,2
   + Classic_commodity_outflow_0,0,0,1,3
   - 1000 sc_commodity_outflow_0,0,0,1 <= 0
 R1611: Classic_commodity_outflow_0,0,0,1,4
   - 65000 sc_commodity_outflow_0,0,0,1 <= 0
 R1612: 100 Classic_commodity_outflow_0,0,0,2,0
   + Classic_commodity_outflow_0,0,0,2,1
   + Classic_commodity_outflow_0,0,0,2,2
   + Classic_commodity_outflow_0,0,0,2,3
   - 1000 sc_commodity_outflow_0,0,0,2 <= 0
 R1613: Classic_commodity_outflow_0,0,0,2,4
   - 65000 sc_commodity_outflow_0,0,0,2 <= 0
 R1614: 100 Classic_commodity_outflow_0,0,0,3,0
   + Classic_commodity_outflow_0,0,0,3,1
   + Classic_commodity_outflow_0,0,0,3,2
   + Classic_commodity_outflow_0,0,0,3,3
   - 1000 sc_commodity_outflow_0,0,0,3 <= 0
 R1615: Classic_commodity_outflow_0,0,0,3,4
   - 65000 sc_commodity_outflow_0,0,0,3 <= 0
 R1616: 100 Classic_commodity_outflow_0,0,0,4,0
   + Classic_commodity_outflow_0,0,0,4,1
   + Classic_commodity_outflow_0,0,0,4,2
   + Classic_commodity_outflow_0,0,0,4,3
   - 1000 sc_commodity_outflow_0,0,0,4 <= 0
 R1617: Classic_commodity_outflow_0,0,0,4,4
   - 65000 sc_commodity_outflow_0,0,0,4 <= 0
 R1618: 100 Classic_commodity_outflow_0,0,0,5,0
   + Classic_commodity_outflow_0,0,0,5,1
   + Classic_commodity_outflow_0,0,0,5,2
   + Classic_commodity_outflow_0,0,0,5,3
   - 1000 sc_commodity_outflow_0,0,0,5 <= 0
 R1619: Classic_commodity_outflow_0,0,0,5,4
   - 65000 sc_commodity_outflow_0,0,0,5 <= 0
 R1620: 100 Classic_commodity_outflow_0,0,0,6,0
   + Classic_commodity_outflow_0,0,0,6,1
   + Classic_commodity_outflow_0,0,0,6,2
   + Classic_commodity_outflow_0,0,0,6,3
   - 1000 sc_commodity_outflow_0,0,0,6 <= 0
 R1621: Classic_commodity_outflow_0,0,0,6,4
   - 65000 sc_commodity_outflow_0,0,0,6 <= 0
 R1622: 100 Classic_commodity_outflow_0,0,0,7,0
   + Classic_commodity_outflow_0,0,0,7,1
   + Classic_commodity_outflow_0,0,0,7,2
   + Classic_commodity_outflow_0,0,0,7,3
   - 1000 sc_commodity_outflow_0,0,0,7 <= 0
 R1623: Classic_commodity_outflow_0,0,0,7,4
   - 65000 sc_commodity_outflow_0,0,0,7 <= 0
 R1624: 100 Classic_commodity_outflow_0,0,0,8,0
   + Classic_commodity_outflow_0,0,0,8,1
   + Classic_commodity_outflow_0,0,0,8,2
   + Classic_commodity_outflow_0,0,0,8,3
   - 1000 sc_commodity_outflow_0,0,0,8 <= 0
 R1625: Classic_commodity_outflow_0,0,0,8,4
   - 65000 sc_commodity_outflow_0,0,0,8 <= 0
 R1626: 100 Classic_commodity_outflow_0,0,0,9,0
   + Classic_commodity_outflow_0,0,0,9,1
   + Classic_commodity_outflow_0,0,0,9,2
   + Classic_commodity_outflow_0,0,0,9,3
   - 1000 sc_commodity_outflow_0,0,0,9 <= 0
 R1627: Classic_commodity_outflow_0,0,0,9,4
   - 65000 sc_commodity_outflow_0,0,0,9 <= 0
 R1628: 100 Classic_commodity_outflow_0,0,0,10,0
   + Classic_commodity_outflow_0,0,0,10,1
   + Classic_commodity_outflow_0,0,0,10,2
   + Classic_commodity_outflow_0,0,0,10,3
   - 1000 sc_commodity_outflow_0,0,0,10 <= 0
 R1629: Classic_commodity_outflow_0,0,0,10,4
   - 65000 sc_commodity_outflow_0,0,0,10 <= 0
 R1630: 100 Classic_commodity_outflow_0,0,1,0,0
   + Classic_commodity_outflow_0,0,1,0,1
   + Classic_commodity_outflow_0,0,1,0,2
   + Classic_commodity_outflow_0,0,1,0,3
   - 1000 sc_commodity_outflow_0,0,1,0 <= 0
 R1631: Classic_commodity_outflow_0,0,1,0,4
   - 65000 sc_commodity_outflow_0,0,1,0 <= 0
 R1632: 100 Classic_commodity_outflow_0,0,1,1,0
   + Classic_commodity_outflow_0,0,1,1,1
   + Classic_commodity_outflow_0,0,1,1,2
   + Classic_commodity_outflow_0,0,1,1,3
   - 1000 sc_commodity_outflow_0,0,1,1 <= 0
 R1633: Classic_commodity_outflow_0,0,1,1,4
   - 65000 sc_commodity_outflow_0,0,1,1 <= 0
 R1634: 100 Classic_commodity_outflow_0,0,1,2,0
   + Classic_commodity_outflow_0,0,1,2,1
   + Classic_commodity_outflow_0,0,1,2,2
   + Classic_commodity_outflow_0,0,1,2,3
   - 1000 sc_commodity_outflow_0,0,1,2 <= 0
 R1635: Classic_commodity_outflow_0,0,1,2,4
   - 65000 sc_commodity_outflow_0,0,1,2 <= 0
 R1636: 100 Classic_commodity_outflow_0,0,1,3,0
   + Classic_commodity_outflow_0,0,1,3,1
   + Classic_commodity_outflow_0,0,1,3,2
   + Classic_commodity_outflow_0,0,1,3,3
   - 1000 sc_commodity_outflow_0,0,1,3 <= 0
 R1637: Classic_commodity_outflow_0,0,1,3,4
   - 65000 sc_commodity_outflow_0,0,1,3 <= 0
 R1638: 100 Classic_commodity_outflow_0,0,1,4,0
   + Classic_commodity_outflow_0,0,1,4,1
   + Classic_commodity_outflow_0,0,1,4,2
   + Classic_commodity_outflow_0,0,1,4,3
   - 1000 sc_commodity_outflow_0,0,1,4 <= 0
 R1639: Classic_commodity_outflow_0,0,1,4,4
   - 65000 sc_commodity_outflow_0,0,1,4 <= 0
 R1640: 100 Classic_commodity_outflow_0,0,1,5,0
   + Classic_commodity_outflow_0,0,1,5,1
   + Classic_commodity_outflow_0,0,1,5,2
   + Classic_commodity_outflow_0,0,1,5,3
   - 1000 sc_commodity_outflow_0,0,1,5 <= 0
 R1641: Classic_commodity_outflow_0,0,1,5,4
   - 65000 sc_commodity_outflow_0,0,1,5 <= 0
 R1642: 100 Classic_commodity_outflow_0,0,1,6,0
   + Classic_commodity_outflow_0,0,1,6,1
   + Classic_commodity_outflow_0,0,1,6,2
   + Classic_commodity_outflow_0,0,1,6,3
   - 1000 sc_commodity_outflow_0,0,1,6 <= 0
 R1643: Classic_commodity_outflow_0,0,1,6,4
   - 65000 sc_commodity_outflow_0,0,1,6 <= 0
 R1644: 100 Classic_commodity_outflow_0,0,1,7,0
   + Classic_commodity_outflow_0,0,1,7,1
   + Classic_commodity_outflow_0,0,1,7,2
   + Classic_commodity_outflow_0,0,1,7,3
   - 1000 sc_commodity_outflow_0,0,1,7 <= 0
 R1645: Classic_commodity_outflow_0,0,1,7,4
   - 65000 sc_commodity_outflow_0,0,1,7 <= 0
 R1646: 100 Classic_commodity_outflow_0,0,1,8,0
   + Classic_commodity_outflow_0,0,1,8,1
   + Classic_commodity_outflow_0,0,1,8,2
   + Classic_commodity_outflow_0,0,1,8,3
   - 1000 sc_commodity_outflow_0,0,1,8 <= 0
 R1647: Classic_commodity_outflow_0,0,1,8,4
   - 65000 sc_commodity_outflow_0,0,1,8 <= 0
 R1648: 100 Classic_commodity_outflow_0,0,1,9,0
   + Classic_commodity_outflow_0,0,1,9,1
   + Classic_commodity_outflow_0,0,1,9,2
   + Classic_commodity_outflow_0,0,1,9,3
   - 1000 sc_commodity_outflow_0,0,1,9 <= 0
 R1649: Classic_commodity_outflow_0,0,1,9,4
   - 65000 sc_commodity_outflow_0,0,1,9 <= 0
 R1650: 100 Classic_commodity_outflow_0,0,1,10,0
   + Classic_commodity_outflow_0,0,1,10,1
   + Classic_commodity_outflow_0,0,1,10,2
   + Classic_commodity_outflow_0,0,1,10,3
   - 1000 sc_commodity_outflow_0,0,1,10 <= 0
 R1651: Classic_commodity_outflow_0,0,1,10,4
   - 65000 sc_commodity_outflow_0,0,1,10 <= 0
 R1652: 100 Classic_commodity_outflow_0,1,0,0,0
   + Classic_commodity_outflow_0,1,0,0,1
   + Classic_commodity_outflow_0,1,0,0,2
   + Classic_commodity_outflow_0,1,0,0,3
   - 1000 sc_commodity_outflow_0,1,0,0 <= 0
 R1653: Classic_commodity_outflow_0,1,0,0,4
   - 65000 sc_commodity_outflow_0,1,0,0 <= 0
 R1654: 100 Classic_commodity_outflow_0,1,0,1,0
   + Classic_commodity_outflow_0,1,0,1,1
   + Classic_commodity_outflow_0,1,0,1,2
   + Classic_commodity_outflow_0,1,0,1,3
   - 1000 sc_commodity_outflow_0,1,0,1 <= 0
 R1655: Classic_commodity_outflow_0,1,0,1,4
   - 65000 sc_commodity_outflow_0,1,0,1 <= 0
 R1656: 100 Classic_commodity_outflow_0,1,0,2,0
   + Classic_commodity_outflow_0,1,0,2,1
   + Classic_commodity_outflow_0,1,0,2,2
   + Classic_commodity_outflow_0,1,0,2,3
   - 1000 sc_commodity_outflow_0,1,0,2 <= 0
 R1657: Classic_commodity_outflow_0,1,0,2,4
   - 65000 sc_commodity_outflow_0,1,0,2 <= 0
 R1658: 100 Classic_commodity_outflow_0,1,0,3,0
   + Classic_commodity_outflow_0,1,0,3,1
   + Classic_commodity_outflow_0,1,0,3,2
   + Classic_commodity_outflow_0,1,0,3,3
   - 1000 sc_commodity_outflow_0,1,0,3 <= 0
 R1659: Classic_commodity_outflow_0,1,0,3,4
   - 65000 sc_commodity_outflow_0,1,0,3 <= 0
 R1660: 100 Classic_commodity_outflow_0,1,0,4,0
   + Classic_commodity_outflow_0,1,0,4,1
   + Classic_commodity_outflow_0,1,0,4,2
   + Classic_commodity_outflow_0,1,0,4,3
   - 1000 sc_commodity_outflow_0,1,0,4 <= 0
 R1661: Classic_commodity_outflow_0,1,0,4,4
   - 65000 sc_commodity_outflow_0,1,0,4 <= 0
 R1662: 100 Classic_commodity_outflow_0,1,0,5,0
   + Classic_commodity_outflow_0,1,0,5,1
   + Classic_commodity_outflow_0,1,0,5,2
   + Classic_commodity_outflow_0,1,0,5,3
   - 1000 sc_commodity_outflow_0,1,0,5 <= 0
 R1663: Classic_commodity_outflow_0,1,0,5,4
   - 65000 sc_commodity_outflow_0,1,0,5 <= 0
 R1664: 100 Classic_commodity_outflow_0,1,0,6,0
   + Classic_commodity_outflow_0,1,0,6,1
   + Classic_commodity_outflow_0,1,0,6,2
   + Classic_commodity_outflow_0,1,0,6,3
   - 1000 sc_commodity_outflow_0,1,0,6 <= 0
 R1665: Classic_commodity_outflow_0,1,0,6,4
   - 65000 sc_commodity_outflow_0,1,0,6 <= 0
 R1666: 100 Classic_commodity_outflow_0,1,0,7,0
   + Classic_commodity_outflow_0,1,0,7,1
   + Classic_commodity_outflow_0,1,0,7,2
   + Classic_commodity_outflow_0,1,0,7,3
   - 1000 sc_commodity_outflow_0,1,0,7 <= 0
 R1667: Classic_commodity_outflow_0,1,0,7,4
   - 65000 sc_commodity_outflow_0,1,0,7 <= 0
 R1668: 100 Classic_commodity_outflow_0,1,0,8,0
   + Classic_commodity_outflow_0,1,0,8,1
   + Classic_commodity_outflow_0,1,0,8,2
   + Classic_commodity_outflow_0,1,0,8,3
   - 1000 sc_commodity_outflow_0,1,0,8 <= 0
 R1669: Classic_commodity_outflow_0,1,0,8,4
   - 65000 sc_commodity_outflow_0,1,0,8 <= 0
 R1670: 100 Classic_commodity_outflow_0,1,0,9,0
   + Classic_commodity_outflow_0,1,0,9,1
   + Classic_commodity_outflow_0,1,0,9,2
   + Classic_commodity_outflow_0,1,0,9,3
   - 1000 sc_commodity_outflow_0,1,0,9 <= 0
 R1671: Classic_commodity_outflow_0,1,0,9,4
   - 65000 sc_commodity_outflow_0,1,0,9 <= 0
 R1672: 100 Classic_commodity_outflow_0,1,0,10,0
   + Classic_commodity_outflow_0,1,0,10,1
   + Classic_commodity_outflow_0,1,0,10,2
   + Classic_commodity_outflow_0,1,0,10,3
   - 1000 sc_commodity_outflow_0,1,0,10 <= 0
 R1673: Classic_commodity_outflow_0,1,0,10,4
   - 65000 sc_commodity_outflow_0,1,0,10 <= 0
 R1674: 100 Classic_commodity_outflow_0,1,1,0,0
   + Classic_commodity_outflow_0,1,1,0,1
   + Classic_commodity_outflow_0,1,1,0,2
   + Classic_commodity_outflow_0,1,1,0,3
   - 1000 sc_commodity_outflow_0,1,1,0 <= 0
 R1675: Classic_commodity_outflow_0,1,1,0,4
   - 65000 sc_commodity_outflow_0,1,1,0 <= 0
 R1676: 100 Classic_commodity_outflow_0,1,1,1,0
   + Classic_commodity_outflow_0,1,1,1,1
   + Classic_commodity_outflow_0,1,1,1,2
   + Classic_commodity_outflow_0,1,1,1,3
   - 1000 sc_commodity_outflow_0,1,1,1 <= 0
 R1677: Classic_commodity_outflow_0,1,1,1,4
   - 65000 sc_commodity_outflow_0,1,1,1 <= 0
 R1678: 100 Classic_commodity_outflow_0,1,1,2,0
   + Classic_commodity_outflow_0,1,1,2,1
   + Classic_commodity_outflow_0,1,1,2,2
   + Classic_commodity_outflow_0,1,1,2,3
   - 1000 sc_commodity_outflow_0,1,1,2 <= 0
 R1679: Classic_commodity_outflow_0,1,1,2,4
   - 65000 sc_commodity_outflow_0,1,1,2 <= 0
 R1680: 100 Classic_commodity_outflow_0,1,1,3,0
   + Classic_commodity_outflow_0,1,1,3,1
   + Classic_commodity_outflow_0,1,1,3,2
   + Classic_commodity_outflow_0,1,1,3,3
   - 1000 sc_commodity_outflow_0,1,1,3 <= 0
 R1681: Classic_commodity_outflow_0,1,1,3,4
   - 65000 sc_commodity_outflow_0,1,1,3 <= 0
 R1682: 100 Classic_commodity_outflow_0,1,1,4,0
   + Classic_commodity_outflow_0,1,1,4,1
   + Classic_commodity_outflow_0,1,1,4,2
   + Classic_commodity_outflow_0,1,1,4,3
   - 1000 sc_commodity_outflow_0,1,1,4 <= 0
 R1683: Classic_commodity_outflow_0,1,1,4,4
   - 65000 sc_commodity_outflow_0,1,1,4 <= 0
 R1684: 100 Classic_commodity_outflow_0,1,1,5,0
   + Classic_commodity_outflow_0,1,1,5,1
   + Classic_commodity_outflow_0,1,1,5,2
   + Classic_commodity_outflow_0,1,1,5,3
   - 1000 sc_commodity_outflow_0,1,1,5 <= 0
 R1685: Classic_commodity_outflow_0,1,1,5,4
   - 65000 sc_commodity_outflow_0,1,1,5 <= 0
 R1686: 100 Classic_commodity_outflow_0,1,1,6,0
   + Classic_commodity_outflow_0,1,1,6,1
   + Classic_commodity_outflow_0,1,1,6,2
   + Classic_commodity_outflow_0,1,1,6,3
   - 1000 sc_commodity_outflow_0,1,1,6 <= 0
 R1687: Classic_commodity_outflow_0,1,1,6,4
   - 65000 sc_commodity_outflow_0,1,1,6 <= 0
 R1688: 100 Classic_commodity_outflow_0,1,1,7,0
   + Classic_commodity_outflow_0,1,1,7,1
   + Classic_commodity_outflow_0,1,1,7,2
   + Classic_commodity_outflow_0,1,1,7,3
   - 1000 sc_commodity_outflow_0,1,1,7 <= 0
 R1689: Classic_commodity_outflow_0,1,1,7,4
   - 65000 sc_commodity_outflow_0,1,1,7 <= 0
 R1690: 100 Classic_commodity_outflow_0,1,1,8,0
   + Classic_commodity_outflow_0,1,1,8,1
   + Classic_commodity_outflow_0,1,1,8,2
   + Classic_commodity_outflow_0,1,1,8,3
   - 1000 sc_commodity_outflow_0,1,1,8 <= 0
 R1691: Classic_commodity_outflow_0,1,1,8,4
   - 65000 sc_commodity_outflow_0,1,1,8 <= 0
 R1692: 100 Classic_commodity_outflow_0,1,1,9,0
   + Classic_commodity_outflow_0,1,1,9,1
   + Classic_commodity_outflow_0,1,1,9,2
   + Classic_commodity_outflow_0,1,1,9,3
   - 1000 sc_commodity_outflow_0,1,1,9 <= 0
 R1693: Classic_commodity_outflow_0,1,1,9,4
   - 65000 sc_commodity_outflow_0,1,1,9 <= 0
 R1694: 100 Classic_commodity_outflow_0,1,1,10,0
   + Classic_commodity_outflow_0,1,1,10,1
   + Classic_commodity_outflow_0,1,1,10,2
   + Classic_commodity_outflow_0,1,1,10,3
   - 1000 sc_commodity_outflow_0,1,1,10 <= 0
 R1695: Classic_commodity_outflow_0,1,1,10,4
   - 65000 sc_commodity_outflow_0,1,1,10 <= 0
 R1696: 100 Classic_commodity_outflow_0,1,2,0,0
   + Classic_commodity_outflow_0,1,2,0,1
   + Classic_commodity_outflow_0,1,2,0,2
   + Classic_commodity_outflow_0,1,2,0,3
   - 1000 sc_commodity_outflow_0,1,2,0 <= 0
 R1697: Classic_commodity_outflow_0,1,2,0,4
   - 65000 sc_commodity_outflow_0,1,2,0 <= 0
 R1698: 100 Classic_commodity_outflow_0,1,2,1,0
   + Classic_commodity_outflow_0,1,2,1,1
   + Classic_commodity_outflow_0,1,2,1,2
   + Classic_commodity_outflow_0,1,2,1,3
   - 1000 sc_commodity_outflow_0,1,2,1 <= 0
 R1699: Classic_commodity_outflow_0,1,2,1,4
   - 65000 sc_commodity_outflow_0,1,2,1 <= 0
 R1700: 100 Classic_commodity_outflow_0,1,2,2,0
   + Classic_commodity_outflow_0,1,2,2,1
   + Classic_commodity_outflow_0,1,2,2,2
   + Classic_commodity_outflow_0,1,2,2,3
   - 1000 sc_commodity_outflow_0,1,2,2 <= 0
 R1701: Classic_commodity_outflow_0,1,2,2,4
   - 65000 sc_commodity_outflow_0,1,2,2 <= 0
 R1702: 100 Classic_commodity_outflow_0,1,2,3,0
   + Classic_commodity_outflow_0,1,2,3,1
   + Classic_commodity_outflow_0,1,2,3,2
   + Classic_commodity_outflow_0,1,2,3,3
   - 1000 sc_commodity_outflow_0,1,2,3 <= 0
 R1703: Classic_commodity_outflow_0,1,2,3,4
   - 65000 sc_commodity_outflow_0,1,2,3 <= 0
 R1704: 100 Classic_commodity_outflow_0,1,2,4,0
   + Classic_commodity_outflow_0,1,2,4,1
   + Classic_commodity_outflow_0,1,2,4,2
   + Classic_commodity_outflow_0,1,2,4,3
   - 1000 sc_commodity_outflow_0,1,2,4 <= 0
 R1705: Classic_commodity_outflow_0,1,2,4,4
   - 65000 sc_commodity_outflow_0,1,2,4 <= 0
 R1706: 100 Classic_commodity_outflow_0,1,2,5,0
   + Classic_commodity_outflow_0,1,2,5,1
   + Classic_commodity_outflow_0,1,2,5,2
   + Classic_commodity_outflow_0,1,2,5,3
   - 1000 sc_commodity_outflow_0,1,2,5 <= 0
 R1707: Classic_commodity_outflow_0,1,2,5,4
   - 65000 sc_commodity_outflow_0,1,2,5 <= 0
 R1708: 100 Classic_commodity_outflow_0,1,2,6,0
   + Classic_commodity_outflow_0,1,2,6,1
   + Classic_commodity_outflow_0,1,2,6,2
   + Classic_commodity_outflow_0,1,2,6,3
   - 1000 sc_commodity_outflow_0,1,2,6 <= 0
 R1709: Classic_commodity_outflow_0,1,2,6,4
   - 65000 sc_commodity_outflow_0,1,2,6 <= 0
 R1710: 100 Classic_commodity_outflow_0,1,2,7,0
   + Classic_commodity_outflow_0,1,2,7,1
   + Classic_commodity_outflow_0,1,2,7,2
   + Classic_commodity_outflow_0,1,2,7,3
   - 1000 sc_commodity_outflow_0,1,2,7 <= 0
 R1711: Classic_commodity_outflow_0,1,2,7,4
   - 65000 sc_commodity_outflow_0,1,2,7 <= 0
 R1712: 100 Classic_commodity_outflow_0,1,2,8,0
   + Classic_commodity_outflow_0,1,2,8,1
   + Classic_commodity_outflow_0,1,2,8,2
   + Classic_commodity_outflow_0,1,2,8,3
   - 1000 sc_commodity_outflow_0,1,2,8 <= 0
 R1713: Classic_commodity_outflow_0,1,2,8,4
   - 65000 sc_commodity_outflow_0,1,2,8 <= 0
 R1714: 100 Classic_commodity_outflow_0,2,1,0,0
   + Classic_commodity_outflow_0,2,1,0,1
   + Classic_commodity_outflow_0,2,1,0,2
   + Classic_commodity_outflow_0,2,1,0,3
   - 1000 sc_commodity_outflow_0,2,1,0 <= 0
 R1715: Classic_commodity_outflow_0,2,1,0,4
   - 65000 sc_commodity_outflow_0,2,1,0 <= 0
 R1716: 100 Classic_commodity_outflow_0,2,1,1,0
   + Classic_commodity_outflow_0,2,1,1,1
   + Classic_commodity_outflow_0,2,1,1,2
   + Classic_commodity_outflow_0,2,1,1,3
   - 1000 sc_commodity_outflow_0,2,1,1 <= 0
 R1717: Classic_commodity_outflow_0,2,1,1,4
   - 65000 sc_commodity_outflow_0,2,1,1 <= 0
 R1718: 100 Classic_commodity_outflow_0,2,1,2,0
   + Classic_commodity_outflow_0,2,1,2,1
   + Classic_commodity_outflow_0,2,1,2,2
   + Classic_commodity_outflow_0,2,1,2,3
   - 1000 sc_commodity_outflow_0,2,1,2 <= 0
 R1719: Classic_commodity_outflow_0,2,1,2,4
   - 65000 sc_commodity_outflow_0,2,1,2 <= 0
 R1720: 100 Classic_commodity_outflow_0,2,1,3,0
   + Classic_commodity_outflow_0,2,1,3,1
   + Classic_commodity_outflow_0,2,1,3,2
   + Classic_commodity_outflow_0,2,1,3,3
   - 1000 sc_commodity_outflow_0,2,1,3 <= 0
 R1721: Classic_commodity_outflow_0,2,1,3,4
   - 65000 sc_commodity_outflow_0,2,1,3 <= 0
 R1722: 100 Classic_commodity_outflow_0,2,1,4,0
   + Classic_commodity_outflow_0,2,1,4,1
   + Classic_commodity_outflow_0,2,1,4,2
   + Classic_commodity_outflow_0,2,1,4,3
   - 1000 sc_commodity_outflow_0,2,1,4 <= 0
 R1723: Classic_commodity_outflow_0,2,1,4,4
   - 65000 sc_commodity_outflow_0,2,1,4 <= 0
 R1724: 100 Classic_commodity_outflow_0,2,1,5,0
   + Classic_commodity_outflow_0,2,1,5,1
   + Classic_commodity_outflow_0,2,1,5,2
   + Classic_commodity_outflow_0,2,1,5,3
   - 1000 sc_commodity_outflow_0,2,1,5 <= 0
 R1725: Classic_commodity_outflow_0,2,1,5,4
   - 65000 sc_commodity_outflow_0,2,1,5 <= 0
 R1726: 100 Classic_commodity_outflow_0,2,1,6,0
   + Classic_commodity_outflow_0,2,1,6,1
   + Classic_commodity_outflow_0,2,1,6,2
   + Classic_commodity_outflow_0,2,1,6,3
   - 1000 sc_commodity_outflow_0,2,1,6 <= 0
 R1727: Classic_commodity_outflow_0,2,1,6,4
   - 65000 sc_commodity_outflow_0,2,1,6 <= 0
 R1728: 100 Classic_commodity_outflow_0,2,1,7,0
   + Classic_commodity_outflow_0,2,1,7,1
   + Classic_commodity_outflow_0,2,1,7,2
   + Classic_commodity_outflow_0,2,1,7,3
   - 1000 sc_commodity_outflow_0,2,1,7 <= 0
 R1729: Classic_commodity_outflow_0,2,1,7,4
   - 65000 sc_commodity_outflow_0,2,1,7 <= 0
 R1730: 100 Classic_commodity_outflow_0,2,1,8,0
   + Classic_commodity_outflow_0,2,1,8,1
   + Classic_commodity_outflow_0,2,1,8,2
   + Classic_commodity_outflow_0,2,1,8,3
   - 1000 sc_commodity_outflow_0,2,1,8 <= 0
 R1731: Classic_commodity_outflow_0,2,1,8,4
   - 65000 sc_commodity_outflow_0,2,1,8 <= 0
 R1732: 100 Classic_commodity_outflow_0,2,2,0,0
   + Classic_commodity_outflow_0,2,2,0,1
   + Classic_commodity_outflow_0,2,2,0,2
   + Classic_commodity_outflow_0,2,2,0,3
   - 1000 sc_commodity_outflow_0,2,2,0 <= 0
 R1733: Classic_commodity_outflow_0,2,2,0,4
   - 65000 sc_commodity_outflow_0,2,2,0 <= 0
 R1734: 100 Classic_commodity_outflow_0,2,2,1,0
   + Classic_commodity_outflow_0,2,2,1,1
   + Classic_commodity_outflow_0,2,2,1,2
   + Classic_commodity_outflow_0,2,2,1,3
   - 1000 sc_commodity_outflow_0,2,2,1 <= 0
 R1735: Classic_commodity_outflow_0,2,2,1,4
   - 65000 sc_commodity_outflow_0,2,2,1 <= 0
 R1736: 100 Classic_commodity_outflow_0,2,2,2,0
   + Classic_commodity_outflow_0,2,2,2,1
   + Classic_commodity_outflow_0,2,2,2,2
   + Classic_commodity_outflow_0,2,2,2,3
   - 1000 sc_commodity_outflow_0,2,2,2 <= 0
 R1737: Classic_commodity_outflow_0,2,2,2,4
   - 65000 sc_commodity_outflow_0,2,2,2 <= 0
 R1738: 100 Classic_commodity_outflow_0,2,2,3,0
   + Classic_commodity_outflow_0,2,2,3,1
   + Classic_commodity_outflow_0,2,2,3,2
   + Classic_commodity_outflow_0,2,2,3,3
   - 1000 sc_commodity_outflow_0,2,2,3 <= 0
 R1739: Classic_commodity_outflow_0,2,2,3,4
   - 65000 sc_commodity_outflow_0,2,2,3 <= 0
 R1740: 100 Classic_commodity_outflow_0,2,2,4,0
   + Classic_commodity_outflow_0,2,2,4,1
   + Classic_commodity_outflow_0,2,2,4,2
   + Classic_commodity_outflow_0,2,2,4,3
   - 1000 sc_commodity_outflow_0,2,2,4 <= 0
 R1741: Classic_commodity_outflow_0,2,2,4,4
   - 65000 sc_commodity_outflow_0,2,2,4 <= 0
 R1742: 100 Classic_commodity_outflow_0,2,2,5,0
   + Classic_commodity_outflow_0,2,2,5,1
   + Classic_commodity_outflow_0,2,2,5,2
   + Classic_commodity_outflow_0,2,2,5,3
   - 1000 sc_commodity_outflow_0,2,2,5 <= 0
 R1743: Classic_commodity_outflow_0,2,2,5,4
   - 65000 sc_commodity_outflow_0,2,2,5 <= 0
 R1744: 100 Classic_commodity_outflow_0,2,2,6,0
   + Classic_commodity_outflow_0,2,2,6,1
   + Classic_commodity_outflow_0,2,2,6,2
   + Classic_commodity_outflow_0,2,2,6,3
   - 1000 sc_commodity_outflow_0,2,2,6 <= 0
 R1745: Classic_commodity_outflow_0,2,2,6,4
   - 65000 sc_commodity_outflow_0,2,2,6 <= 0
 R1746: 100 Classic_commodity_outflow_0,2,2,7,0
   + Classic_commodity_outflow_0,2,2,7,1
   + Classic_commodity_outflow_0,2,2,7,2
   + Classic_commodity_outflow_0,2,2,7,3
   - 1000 sc_commodity_outflow_0,2,2,7 <= 0
 R1747: Classic_commodity_outflow_0,2,2,7,4
   - 65000 sc_commodity_outflow_0,2,2,7 <= 0
 R1748: 100 Classic_commodity_outflow_0,2,2,8,0
   + Classic_commodity_outflow_0,2,2,8,1
   + Classic_commodity_outflow_0,2,2,8,2
   + Classic_commodity_outflow_0,2,2,8,3
   - 1000 sc_commodity_outflow_0,2,2,8 <= 0
 R1749: Classic_commodity_outflow_0,2,2,8,4
   - 65000 sc_commodity_outflow_0,2,2,8 <= 0
 R1750: 100 Classic_commodity_outflow_0,2,2,9,0
   + Classic_commodity_outflow_0,2,2,9,1
   + Classic_commodity_outflow_0,2,2,9,2
   + Classic_commodity_outflow_0,2,2,9,3
   - 1000 sc_commodity_outflow_0,2,2,9 <= 0
 R1751: Classic_commodity_outflow_0,2,2,9,4
   - 65000 sc_commodity_outflow_0,2,2,9 <= 0
 R1752: 100 Classic_commodity_outflow_0,2,2,10,0
   + Classic_commodity_outflow_0,2,2,10,1
   + Classic_commodity_outflow_0,2,2,10,2
   + Classic_commodity_outflow_0,2,2,10,3
   - 1000 sc_commodity_outflow_0,2,2,10 <= 0
 R1753: Classic_commodity_outflow_0,2,2,10,4
   - 65000 sc_commodity_outflow_0,2,2,10 <= 0
 R1754: 100 Classic_commodity_outflow_0,2,3,0,0
   + Classic_commodity_outflow_0,2,3,0,1
   + Classic_commodity_outflow_0,2,3,0,2
   + Classic_commodity_outflow_0,2,3,0,3
   - 1000 sc_commodity_outflow_0,2,3,0 <= 0
 R1755: Classic_commodity_outflow_0,2,3,0,4
   - 65000 sc_commodity_outflow_0,2,3,0 <= 0
 R1756: 100 Classic_commodity_outflow_0,2,3,1,0
   + Classic_commodity_outflow_0,2,3,1,1
   + Classic_commodity_outflow_0,2,3,1,2
   + Classic_commodity_outflow_0,2,3,1,3
   - 1000 sc_commodity_outflow_0,2,3,1 <= 0
 R1757: Classic_commodity_outflow_0,2,3,1,4
   - 65000 sc_commodity_outflow_0,2,3,1 <= 0
 R1758: 100 Classic_commodity_outflow_0,2,3,2,0
   + Classic_commodity_outflow_0,2,3,2,1
   + Classic_commodity_outflow_0,2,3,2,2
   + Classic_commodity_outflow_0,2,3,2,3
   - 1000 sc_commodity_outflow_0,2,3,2 <= 0
 R1759: Classic_commodity_outflow_0,2,3,2,4
   - 65000 sc_commodity_outflow_0,2,3,2 <= 0
 R1760: 100 Classic_commodity_outflow_0,2,3,3,0
   + Classic_commodity_outflow_0,2,3,3,1
   + Classic_commodity_outflow_0,2,3,3,2
   + Classic_commodity_outflow_0,2,3,3,3
   - 1000 sc_commodity_outflow_0,2,3,3 <= 0
 R1761: Classic_commodity_outflow_0,2,3,3,4
   - 65000 sc_commodity_outflow_0,2,3,3 <= 0
 R1762: 100 Classic_commodity_outflow_0,2,3,4,0
   + Classic_commodity_outflow_0,2,3,4,1
   + Classic_commodity_outflow_0,2,3,4,2
   + Classic_commodity_outflow_0,2,3,4,3
   - 1000 sc_commodity_outflow_0,2,3,4 <= 0
 R1763: Classic_commodity_outflow_0,2,3,4,4
   - 65000 sc_commodity_outflow_0,2,3,4 <= 0
 R1764: 100 Classic_commodity_outflow_0,2,3,5,0
   + Classic_commodity_outflow_0,2,3,5,1
   + Classic_commodity_outflow_0,2,3,5,2
   + Classic_commodity_outflow_0,2,3,5,3
   - 1000 sc_commodity_outflow_0,2,3,5 <= 0
 R1765: Classic_commodity_outflow_0,2,3,5,4
   - 65000 sc_commodity_outflow_0,2,3,5 <= 0
 R1766: 100 Classic_commodity_outflow_0,2,3,6,0
   + Classic_commodity_outflow_0,2,3,6,1
   + Classic_commodity_outflow_0,2,3,6,2
   + Classic_commodity_outflow_0,2,3,6,3
   - 1000 sc_commodity_outflow_0,2,3,6 <= 0
 R1767: Classic_commodity_outflow_0,2,3,6,4
   - 65000 sc_commodity_outflow_0,2,3,6 <= 0
 R1768: 100 Classic_commodity_outflow_0,2,3,7,0
   + Classic_commodity_outflow_0,2,3,7,1
   + Classic_commodity_outflow_0,2,3,7,2
   + Classic_commodity_outflow_0,2,3,7,3
   - 1000 sc_commodity_outflow_0,2,3,7 <= 0
 R1769: Classic_commodity_outflow_0,2,3,7,4
   - 65000 sc_commodity_outflow_0,2,3,7 <= 0
 R1770: 100 Classic_commodity_outflow_0,2,3,8,0
   + Classic_commodity_outflow_0,2,3,8,1
   + Classic_commodity_outflow_0,2,3,8,2
   + Classic_commodity_outflow_0,2,3,8,3
   - 1000 sc_commodity_outflow_0,2,3,8 <= 0
 R1771: Classic_commodity_outflow_0,2,3,8,4
   - 65000 sc_commodity_outflow_0,2,3,8 <= 0
 R1772: 100 Classic_commodity_outflow_0,2,3,9,0
   + Classic_commodity_outflow_0,2,3,9,1
   + Classic_commodity_outflow_0,2,3,9,2
   + Classic_commodity_outflow_0,2,3,9,3
   - 1000 sc_commodity_outflow_0,2,3,9 <= 0
 R1773: Classic_commodity_outflow_0,2,3,9,4
   - 65000 sc_commodity_outflow_0,2,3,9 <= 0
 R1774: 100 Classic_commodity_outflow_0,2,3,10,0
   + Classic_commodity_outflow_0,2,3,10,1
   + Classic_commodity_outflow_0,2,3,10,2
   + Classic_commodity_outflow_0,2,3,10,3
   - 1000 sc_commodity_outflow_0,2,3,10 <= 0
 R1775: Classic_commodity_outflow_0,2,3,10,4
   - 65000 sc_commodity_outflow_0,2,3,10 <= 0
 R1776: 100 Classic_commodity_outflow_0,3,2,0,0
   + Classic_commodity_outflow_0,3,2,0,1
   + Classic_commodity_outflow_0,3,2,0,2
   + Classic_commodity_outflow_0,3,2,0,3
   - 1000 sc_commodity_outflow_0,3,2,0 <= 0
 R1777: Classic_commodity_outflow_0,3,2,0,4
   - 65000 sc_commodity_outflow_0,3,2,0 <= 0
 R1778: 100 Classic_commodity_outflow_0,3,2,1,0
   + Classic_commodity_outflow_0,3,2,1,1
   + Classic_commodity_outflow_0,3,2,1,2
   + Classic_commodity_outflow_0,3,2,1,3
   - 1000 sc_commodity_outflow_0,3,2,1 <= 0
 R1779: Classic_commodity_outflow_0,3,2,1,4
   - 65000 sc_commodity_outflow_0,3,2,1 <= 0
 R1780: 100 Classic_commodity_outflow_0,3,2,2,0
   + Classic_commodity_outflow_0,3,2,2,1
   + Classic_commodity_outflow_0,3,2,2,2
   + Classic_commodity_outflow_0,3,2,2,3
   - 1000 sc_commodity_outflow_0,3,2,2 <= 0
 R1781: Classic_commodity_outflow_0,3,2,2,4
   - 65000 sc_commodity_outflow_0,3,2,2 <= 0
 R1782: 100 Classic_commodity_outflow_0,3,2,3,0
   + Classic_commodity_outflow_0,3,2,3,1
   + Classic_commodity_outflow_0,3,2,3,2
   + Classic_commodity_outflow_0,3,2,3,3
   - 1000 sc_commodity_outflow_0,3,2,3 <= 0
 R1783: Classic_commodity_outflow_0,3,2,3,4
   - 65000 sc_commodity_outflow_0,3,2,3 <= 0
 R1784: 100 Classic_commodity_outflow_0,3,2,4,0
   + Classic_commodity_outflow_0,3,2,4,1
   + Classic_commodity_outflow_0,3,2,4,2
   + Classic_commodity_outflow_0,3,2,4,3
   - 1000 sc_commodity_outflow_0,3,2,4 <= 0
 R1785: Classic_commodity_outflow_0,3,2,4,4
   - 65000 sc_commodity_outflow_0,3,2,4 <= 0
 R1786: 100 Classic_commodity_outflow_0,3,2,5,0
   + Classic_commodity_outflow_0,3,2,5,1
   + Classic_commodity_outflow_0,3,2,5,2
   + Classic_commodity_outflow_0,3,2,5,3
   - 1000 sc_commodity_outflow_0,3,2,5 <= 0
 R1787: Classic_commodity_outflow_0,3,2,5,4
   - 65000 sc_commodity_outflow_0,3,2,5 <= 0
 R1788: 100 Classic_commodity_outflow_0,3,2,6,0
   + Classic_commodity_outflow_0,3,2,6,1
   + Classic_commodity_outflow_0,3,2,6,2
   + Classic_commodity_outflow_0,3,2,6,3
   - 1000 sc_commodity_outflow_0,3,2,6 <= 0
 R1789: Classic_commodity_outflow_0,3,2,6,4
   - 65000 sc_commodity_outflow_0,3,2,6 <= 0
 R1790: 100 Classic_commodity_outflow_0,3,2,7,0
   + Classic_commodity_outflow_0,3,2,7,1
   + Classic_commodity_outflow_0,3,2,7,2
   + Classic_commodity_outflow_0,3,2,7,3
   - 1000 sc_commodity_outflow_0,3,2,7 <= 0
 R1791: Classic_commodity_outflow_0,3,2,7,4
   - 65000 sc_commodity_outflow_0,3,2,7 <= 0
 R1792: 100 Classic_commodity_outflow_0,3,2,8,0
   + Classic_commodity_outflow_0,3,2,8,1
   + Classic_commodity_outflow_0,3,2,8,2
   + Classic_commodity_outflow_0,3,2,8,3
   - 1000 sc_commodity_outflow_0,3,2,8 <= 0
 R1793: Classic_commodity_outflow_0,3,2,8,4
   - 65000 sc_commodity_outflow_0,3,2,8 <= 0
 R1794: 100 Classic_commodity_outflow_0,3,2,9,0
   + Classic_commodity_outflow_0,3,2,9,1
   + Classic_commodity_outflow_0,3,2,9,2
   + Classic_commodity_outflow_0,3,2,9,3
   - 1000 sc_commodity_outflow_0,3,2,9 <= 0
 R1795: Classic_commodity_outflow_0,3,2,9,4
   - 65000 sc_commodity_outflow_0,3,2,9 <= 0
 R1796: 100 Classic_commodity_outflow_0,3,2,10,0
   + Classic_commodity_outflow_0,3,2,10,1
   + Classic_commodity_outflow_0,3,2,10,2
   + Classic_commodity_outflow_0,3,2,10,3
   - 1000 sc_commodity_outflow_0,3,2,10 <= 0
 R1797: Classic_commodity_outflow_0,3,2,10,4
   - 65000 sc_commodity_outflow_0,3,2,10 <= 0
 R1798: 100 Classic_commodity_outflow_0,3,3,0,0
   + Classic_commodity_outflow_0,3,3,0,1
   + Classic_commodity_outflow_0,3,3,0,2
   + Classic_commodity_outflow_0,3,3,0,3
   - 1000 sc_commodity_outflow_0,3,3,0 <= 0
 R1799: Classic_commodity_outflow_0,3,3,0,4
   - 65000 sc_commodity_outflow_0,3,3,0 <= 0
 R1800: 100 Classic_commodity_outflow_0,3,3,1,0
   + Classic_commodity_outflow_0,3,3,1,1
   + Classic_commodity_outflow_0,3,3,1,2
   + Classic_commodity_outflow_0,3,3,1,3
   - 1000 sc_commodity_outflow_0,3,3,1 <= 0
 R1801: Classic_commodity_outflow_0,3,3,1,4
   - 65000 sc_commodity_outflow_0,3,3,1 <= 0
 R1802: 100 Classic_commodity_outflow_0,3,3,2,0
   + Classic_commodity_outflow_0,3,3,2,1
   + Classic_commodity_outflow_0,3,3,2,2
   + Classic_commodity_outflow_0,3,3,2,3
   - 1000 sc_commodity_outflow_0,3,3,2 <= 0
 R1803: Classic_commodity_outflow_0,3,3,2,4
   - 65000 sc_commodity_outflow_0,3,3,2 <= 0
 R1804: 100 Classic_commodity_outflow_0,3,3,3,0
   + Classic_commodity_outflow_0,3,3,3,1
   + Classic_commodity_outflow_0,3,3,3,2
   + Classic_commodity_outflow_0,3,3,3,3
   - 1000 sc_commodity_outflow_0,3,3,3 <= 0
 R1805: Classic_commodity_outflow_0,3,3,3,4
   - 65000 sc_commodity_outflow_0,3,3,3 <= 0
 R1806: 100 Classic_commodity_outflow_0,3,3,4,0
   + Classic_commodity_outflow_0,3,3,4,1
   + Classic_commodity_outflow_0,3,3,4,2
   + Classic_commodity_outflow_0,3,3,4,3
   - 1000 sc_commodity_outflow_0,3,3,4 <= 0
 R1807: Classic_commodity_outflow_0,3,3,4,4
   - 65000 sc_commodity_outflow_0,3,3,4 <= 0
 R1808: 100 Classic_commodity_outflow_0,3,3,5,0
   + Classic_commodity_outflow_0,3,3,5,1
   + Classic_commodity_outflow_0,3,3,5,2
   + Classic_commodity_outflow_0,3,3,5,3
   - 1000 sc_commodity_outflow_0,3,3,5 <= 0
 R1809: Classic_commodity_outflow_0,3,3,5,4
   - 65000 sc_commodity_outflow_0,3,3,5 <= 0
 R1810: 100 Classic_commodity_outflow_0,3,3,6,0
   + Classic_commodity_outflow_0,3,3,6,1
   + Classic_commodity_outflow_0,3,3,6,2
   + Classic_commodity_outflow_0,3,3,6,3
   - 1000 sc_commodity_outflow_0,3,3,6 <= 0
 R1811: Classic_commodity_outflow_0,3,3,6,4
   - 65000 sc_commodity_outflow_0,3,3,6 <= 0
 R1812: 100 Classic_commodity_outflow_0,3,3,7,0
   + Classic_commodity_outflow_0,3,3,7,1
   + Classic_commodity_outflow_0,3,3,7,2
   + Classic_commodity_outflow_0,3,3,7,3
   - 1000 sc_commodity_outflow_0,3,3,7 <= 0
 R1813: Classic_commodity_outflow_0,3,3,7,4
   - 65000 sc_commodity_outflow_0,3,3,7 <= 0
 R1814: 100 Classic_commodity_outflow_0,3,3,8,0
   + Classic_commodity_outflow_0,3,3,8,1
   + Classic_commodity_outflow_0,3,3,8,2
   + Classic_commodity_outflow_0,3,3,8,3
   - 1000 sc_commodity_outflow_0,3,3,8 <= 0
 R1815: Classic_commodity_outflow_0,3,3,8,4
   - 65000 sc_commodity_outflow_0,3,3,8 <= 0
 R1816: 100 Classic_commodity_outflow_0,3,3,9,0
   + Classic_commodity_outflow_0,3,3,9,1
   + Classic_commodity_outflow_0,3,3,9,2
   + Classic_commodity_outflow_0,3,3,9,3
   - 1000 sc_commodity_outflow_0,3,3,9 <= 0
 R1817: Classic_commodity_outflow_0,3,3,9,4
   - 65000 sc_commodity_outflow_0,3,3,9 <= 0
 R1818: 100 Classic_commodity_outflow_0,3,3,10,0
   + Classic_commodity_outflow_0,3,3,10,1
   + Classic_commodity_outflow_0,3,3,10,2
   + Classic_commodity_outflow_0,3,3,10,3
   - 1000 sc_commodity_outflow_0,3,3,10 <= 0
 R1819: Classic_commodity_outflow_0,3,3,10,4
   - 65000 sc_commodity_outflow_0,3,3,10 <= 0
 R1820: 100 Classic_commodity_outflow_1,0,0,0,0
   + Classic_commodity_outflow_1,0,0,0,1
   + Classic_commodity_outflow_1,0,0,0,2
   + Classic_commodity_outflow_1,0,0,0,3 - 75 sc_commodity_outflow_1,0,0,0
   <= 0
 R1821: Classic_commodity_outflow_1,0,0,0,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,0 <= 0
 R1822: 100 Classic_commodity_outflow_1,0,0,1,0
   + Classic_commodity_outflow_1,0,0,1,1
   + Classic_commodity_outflow_1,0,0,1,2
   + Classic_commodity_outflow_1,0,0,1,3 - 75 sc_commodity_outflow_1,0,0,1
   <= 0
 R1823: Classic_commodity_outflow_1,0,0,1,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,1 <= 0
 R1824: 100 Classic_commodity_outflow_1,0,0,2,0
   + Classic_commodity_outflow_1,0,0,2,1
   + Classic_commodity_outflow_1,0,0,2,2
   + Classic_commodity_outflow_1,0,0,2,3 - 75 sc_commodity_outflow_1,0,0,2
   <= 0
 R1825: Classic_commodity_outflow_1,0,0,2,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,2 <= 0
 R1826: 100 Classic_commodity_outflow_1,0,0,3,0
   + Classic_commodity_outflow_1,0,0,3,1
   + Classic_commodity_outflow_1,0,0,3,2
   + Classic_commodity_outflow_1,0,0,3,3 - 75 sc_commodity_outflow_1,0,0,3
   <= 0
 R1827: Classic_commodity_outflow_1,0,0,3,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,3 <= 0
 R1828: 100 Classic_commodity_outflow_1,0,0,4,0
   + Classic_commodity_outflow_1,0,0,4,1
   + Classic_commodity_outflow_1,0,0,4,2
   + Classic_commodity_outflow_1,0,0,4,3 - 75 sc_commodity_outflow_1,0,0,4
   <= 0
 R1829: Classic_commodity_outflow_1,0,0,4,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,4 <= 0
 R1830: 100 Classic_commodity_outflow_1,0,0,5,0
   + Classic_commodity_outflow_1,0,0,5,1
   + Classic_commodity_outflow_1,0,0,5,2
   + Classic_commodity_outflow_1,0,0,5,3 - 75 sc_commodity_outflow_1,0,0,5
   <= 0
 R1831: Classic_commodity_outflow_1,0,0,5,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,5 <= 0
 R1832: 100 Classic_commodity_outflow_1,0,0,6,0
   + Classic_commodity_outflow_1,0,0,6,1
   + Classic_commodity_outflow_1,0,0,6,2
   + Classic_commodity_outflow_1,0,0,6,3 - 75 sc_commodity_outflow_1,0,0,6
   <= 0
 R1833: Classic_commodity_outflow_1,0,0,6,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,6 <= 0
 R1834: 100 Classic_commodity_outflow_1,0,0,7,0
   + Classic_commodity_outflow_1,0,0,7,1
   + Classic_commodity_outflow_1,0,0,7,2
   + Classic_commodity_outflow_1,0,0,7,3 - 75 sc_commodity_outflow_1,0,0,7
   <= 0
 R1835: Classic_commodity_outflow_1,0,0,7,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,7 <= 0
 R1836: 100 Classic_commodity_outflow_1,0,0,8,0
   + Classic_commodity_outflow_1,0,0,8,1
   + Classic_commodity_outflow_1,0,0,8,2
   + Classic_commodity_outflow_1,0,0,8,3 - 75 sc_commodity_outflow_1,0,0,8
   <= 0
 R1837: Classic_commodity_outflow_1,0,0,8,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,8 <= 0
 R1838: 100 Classic_commodity_outflow_1,0,0,9,0
   + Classic_commodity_outflow_1,0,0,9,1
   + Classic_commodity_outflow_1,0,0,9,2
   + Classic_commodity_outflow_1,0,0,9,3 - 75 sc_commodity_outflow_1,0,0,9
   <= 0
 R1839: Classic_commodity_outflow_1,0,0,9,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,9 <= 0
 R1840: 100 Classic_commodity_outflow_1,0,0,10,0
   + Classic_commodity_outflow_1,0,0,10,1
   + Classic_commodity_outflow_1,0,0,10,2
   + Classic_commodity_outflow_1,0,0,10,3
   - 75 sc_commodity_outflow_1,0,0,10 <= 0
 R1841: Classic_commodity_outflow_1,0,0,10,4
   - 1.7e+06 sc_commodity_outflow_1,0,0,10 <= 0
 R1842: 100 Classic_commodity_outflow_1,0,1,0,0
   + Classic_commodity_outflow_1,0,1,0,1
   + Classic_commodity_outflow_1,0,1,0,2
   + Classic_commodity_outflow_1,0,1,0,3 - 75 sc_commodity_outflow_1,0,1,0
   <= 0
 R1843: Classic_commodity_outflow_1,0,1,0,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,0 <= 0
 R1844: 100 Classic_commodity_outflow_1,0,1,1,0
   + Classic_commodity_outflow_1,0,1,1,1
   + Classic_commodity_outflow_1,0,1,1,2
   + Classic_commodity_outflow_1,0,1,1,3 - 75 sc_commodity_outflow_1,0,1,1
   <= 0
 R1845: Classic_commodity_outflow_1,0,1,1,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,1 <= 0
 R1846: 100 Classic_commodity_outflow_1,0,1,2,0
   + Classic_commodity_outflow_1,0,1,2,1
   + Classic_commodity_outflow_1,0,1,2,2
   + Classic_commodity_outflow_1,0,1,2,3 - 75 sc_commodity_outflow_1,0,1,2
   <= 0
 R1847: Classic_commodity_outflow_1,0,1,2,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,2 <= 0
 R1848: 100 Classic_commodity_outflow_1,0,1,3,0
   + Classic_commodity_outflow_1,0,1,3,1
   + Classic_commodity_outflow_1,0,1,3,2
   + Classic_commodity_outflow_1,0,1,3,3 - 75 sc_commodity_outflow_1,0,1,3
   <= 0
 R1849: Classic_commodity_outflow_1,0,1,3,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,3 <= 0
 R1850: 100 Classic_commodity_outflow_1,0,1,4,0
   + Classic_commodity_outflow_1,0,1,4,1
   + Classic_commodity_outflow_1,0,1,4,2
   + Classic_commodity_outflow_1,0,1,4,3 - 75 sc_commodity_outflow_1,0,1,4
   <= 0
 R1851: Classic_commodity_outflow_1,0,1,4,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,4 <= 0
 R1852: 100 Classic_commodity_outflow_1,0,1,5,0
   + Classic_commodity_outflow_1,0,1,5,1
   + Classic_commodity_outflow_1,0,1,5,2
   + Classic_commodity_outflow_1,0,1,5,3 - 75 sc_commodity_outflow_1,0,1,5
   <= 0
 R1853: Classic_commodity_outflow_1,0,1,5,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,5 <= 0
 R1854: 100 Classic_commodity_outflow_1,0,1,6,0
   + Classic_commodity_outflow_1,0,1,6,1
   + Classic_commodity_outflow_1,0,1,6,2
   + Classic_commodity_outflow_1,0,1,6,3 - 75 sc_commodity_outflow_1,0,1,6
   <= 0
 R1855: Classic_commodity_outflow_1,0,1,6,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,6 <= 0
 R1856: 100 Classic_commodity_outflow_1,0,1,7,0
   + Classic_commodity_outflow_1,0,1,7,1
   + Classic_commodity_outflow_1,0,1,7,2
   + Classic_commodity_outflow_1,0,1,7,3 - 75 sc_commodity_outflow_1,0,1,7
   <= 0
 R1857: Classic_commodity_outflow_1,0,1,7,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,7 <= 0
 R1858: 100 Classic_commodity_outflow_1,0,1,8,0
   + Classic_commodity_outflow_1,0,1,8,1
   + Classic_commodity_outflow_1,0,1,8,2
   + Classic_commodity_outflow_1,0,1,8,3 - 75 sc_commodity_outflow_1,0,1,8
   <= 0
 R1859: Classic_commodity_outflow_1,0,1,8,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,8 <= 0
 R1860: 100 Classic_commodity_outflow_1,0,1,9,0
   + Classic_commodity_outflow_1,0,1,9,1
   + Classic_commodity_outflow_1,0,1,9,2
   + Classic_commodity_outflow_1,0,1,9,3 - 75 sc_commodity_outflow_1,0,1,9
   <= 0
 R1861: Classic_commodity_outflow_1,0,1,9,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,9 <= 0
 R1862: 100 Classic_commodity_outflow_1,0,1,10,0
   + Classic_commodity_outflow_1,0,1,10,1
   + Classic_commodity_outflow_1,0,1,10,2
   + Classic_commodity_outflow_1,0,1,10,3
   - 75 sc_commodity_outflow_1,0,1,10 <= 0
 R1863: Classic_commodity_outflow_1,0,1,10,4
   - 1.7e+06 sc_commodity_outflow_1,0,1,10 <= 0
 R1864: 100 Classic_commodity_outflow_1,1,0,0,0
   + Classic_commodity_outflow_1,1,0,0,1
   + Classic_commodity_outflow_1,1,0,0,2
   + Classic_commodity_outflow_1,1,0,0,3 - 75 sc_commodity_outflow_1,1,0,0
   <= 0
 R1865: Classic_commodity_outflow_1,1,0,0,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,0 <= 0
 R1866: 100 Classic_commodity_outflow_1,1,0,1,0
   + Classic_commodity_outflow_1,1,0,1,1
   + Classic_commodity_outflow_1,1,0,1,2
   + Classic_commodity_outflow_1,1,0,1,3 - 75 sc_commodity_outflow_1,1,0,1
   <= 0
 R1867: Classic_commodity_outflow_1,1,0,1,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,1 <= 0
 R1868: 100 Classic_commodity_outflow_1,1,0,2,0
   + Classic_commodity_outflow_1,1,0,2,1
   + Classic_commodity_outflow_1,1,0,2,2
   + Classic_commodity_outflow_1,1,0,2,3 - 75 sc_commodity_outflow_1,1,0,2
   <= 0
 R1869: Classic_commodity_outflow_1,1,0,2,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,2 <= 0
 R1870: 100 Classic_commodity_outflow_1,1,0,3,0
   + Classic_commodity_outflow_1,1,0,3,1
   + Classic_commodity_outflow_1,1,0,3,2
   + Classic_commodity_outflow_1,1,0,3,3 - 75 sc_commodity_outflow_1,1,0,3
   <= 0
 R1871: Classic_commodity_outflow_1,1,0,3,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,3 <= 0
 R1872: 100 Classic_commodity_outflow_1,1,0,4,0
   + Classic_commodity_outflow_1,1,0,4,1
   + Classic_commodity_outflow_1,1,0,4,2
   + Classic_commodity_outflow_1,1,0,4,3 - 75 sc_commodity_outflow_1,1,0,4
   <= 0
 R1873: Classic_commodity_outflow_1,1,0,4,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,4 <= 0
 R1874: 100 Classic_commodity_outflow_1,1,0,5,0
   + Classic_commodity_outflow_1,1,0,5,1
   + Classic_commodity_outflow_1,1,0,5,2
   + Classic_commodity_outflow_1,1,0,5,3 - 75 sc_commodity_outflow_1,1,0,5
   <= 0
 R1875: Classic_commodity_outflow_1,1,0,5,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,5 <= 0
 R1876: 100 Classic_commodity_outflow_1,1,0,6,0
   + Classic_commodity_outflow_1,1,0,6,1
   + Classic_commodity_outflow_1,1,0,6,2
   + Classic_commodity_outflow_1,1,0,6,3 - 75 sc_commodity_outflow_1,1,0,6
   <= 0
 R1877: Classic_commodity_outflow_1,1,0,6,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,6 <= 0
 R1878: 100 Classic_commodity_outflow_1,1,0,7,0
   + Classic_commodity_outflow_1,1,0,7,1
   + Classic_commodity_outflow_1,1,0,7,2
   + Classic_commodity_outflow_1,1,0,7,3 - 75 sc_commodity_outflow_1,1,0,7
   <= 0
 R1879: Classic_commodity_outflow_1,1,0,7,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,7 <= 0
 R1880: 100 Classic_commodity_outflow_1,1,0,8,0
   + Classic_commodity_outflow_1,1,0,8,1
   + Classic_commodity_outflow_1,1,0,8,2
   + Classic_commodity_outflow_1,1,0,8,3 - 75 sc_commodity_outflow_1,1,0,8
   <= 0
 R1881: Classic_commodity_outflow_1,1,0,8,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,8 <= 0
 R1882: 100 Classic_commodity_outflow_1,1,0,9,0
   + Classic_commodity_outflow_1,1,0,9,1
   + Classic_commodity_outflow_1,1,0,9,2
   + Classic_commodity_outflow_1,1,0,9,3 - 75 sc_commodity_outflow_1,1,0,9
   <= 0
 R1883: Classic_commodity_outflow_1,1,0,9,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,9 <= 0
 R1884: 100 Classic_commodity_outflow_1,1,0,10,0
   + Classic_commodity_outflow_1,1,0,10,1
   + Classic_commodity_outflow_1,1,0,10,2
   + Classic_commodity_outflow_1,1,0,10,3
   - 75 sc_commodity_outflow_1,1,0,10 <= 0
 R1885: Classic_commodity_outflow_1,1,0,10,4
   - 1.7e+06 sc_commodity_outflow_1,1,0,10 <= 0
 R1886: 100 Classic_commodity_outflow_1,1,1,0,0
   + Classic_commodity_outflow_1,1,1,0,1
   + Classic_commodity_outflow_1,1,1,0,2
   + Classic_commodity_outflow_1,1,1,0,3 - 75 sc_commodity_outflow_1,1,1,0
   <= 0
 R1887: Classic_commodity_outflow_1,1,1,0,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,0 <= 0
 R1888: 100 Classic_commodity_outflow_1,1,1,1,0
   + Classic_commodity_outflow_1,1,1,1,1
   + Classic_commodity_outflow_1,1,1,1,2
   + Classic_commodity_outflow_1,1,1,1,3 - 75 sc_commodity_outflow_1,1,1,1
   <= 0
 R1889: Classic_commodity_outflow_1,1,1,1,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,1 <= 0
 R1890: 100 Classic_commodity_outflow_1,1,1,2,0
   + Classic_commodity_outflow_1,1,1,2,1
   + Classic_commodity_outflow_1,1,1,2,2
   + Classic_commodity_outflow_1,1,1,2,3 - 75 sc_commodity_outflow_1,1,1,2
   <= 0
 R1891: Classic_commodity_outflow_1,1,1,2,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,2 <= 0
 R1892: 100 Classic_commodity_outflow_1,1,1,3,0
   + Classic_commodity_outflow_1,1,1,3,1
   + Classic_commodity_outflow_1,1,1,3,2
   + Classic_commodity_outflow_1,1,1,3,3 - 75 sc_commodity_outflow_1,1,1,3
   <= 0
 R1893: Classic_commodity_outflow_1,1,1,3,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,3 <= 0
 R1894: 100 Classic_commodity_outflow_1,1,1,4,0
   + Classic_commodity_outflow_1,1,1,4,1
   + Classic_commodity_outflow_1,1,1,4,2
   + Classic_commodity_outflow_1,1,1,4,3 - 75 sc_commodity_outflow_1,1,1,4
   <= 0
 R1895: Classic_commodity_outflow_1,1,1,4,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,4 <= 0
 R1896: 100 Classic_commodity_outflow_1,1,1,5,0
   + Classic_commodity_outflow_1,1,1,5,1
   + Classic_commodity_outflow_1,1,1,5,2
   + Classic_commodity_outflow_1,1,1,5,3 - 75 sc_commodity_outflow_1,1,1,5
   <= 0
 R1897: Classic_commodity_outflow_1,1,1,5,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,5 <= 0
 R1898: 100 Classic_commodity_outflow_1,1,1,6,0
   + Classic_commodity_outflow_1,1,1,6,1
   + Classic_commodity_outflow_1,1,1,6,2
   + Classic_commodity_outflow_1,1,1,6,3 - 75 sc_commodity_outflow_1,1,1,6
   <= 0
 R1899: Classic_commodity_outflow_1,1,1,6,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,6 <= 0
 R1900: 100 Classic_commodity_outflow_1,1,1,7,0
   + Classic_commodity_outflow_1,1,1,7,1
   + Classic_commodity_outflow_1,1,1,7,2
   + Classic_commodity_outflow_1,1,1,7,3 - 75 sc_commodity_outflow_1,1,1,7
   <= 0
 R1901: Classic_commodity_outflow_1,1,1,7,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,7 <= 0
 R1902: 100 Classic_commodity_outflow_1,1,1,8,0
   + Classic_commodity_outflow_1,1,1,8,1
   + Classic_commodity_outflow_1,1,1,8,2
   + Classic_commodity_outflow_1,1,1,8,3 - 75 sc_commodity_outflow_1,1,1,8
   <= 0
 R1903: Classic_commodity_outflow_1,1,1,8,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,8 <= 0
 R1904: 100 Classic_commodity_outflow_1,1,1,9,0
   + Classic_commodity_outflow_1,1,1,9,1
   + Classic_commodity_outflow_1,1,1,9,2
   + Classic_commodity_outflow_1,1,1,9,3 - 75 sc_commodity_outflow_1,1,1,9
   <= 0
 R1905: Classic_commodity_outflow_1,1,1,9,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,9 <= 0
 R1906: 100 Classic_commodity_outflow_1,1,1,10,0
   + Classic_commodity_outflow_1,1,1,10,1
   + Classic_commodity_outflow_1,1,1,10,2
   + Classic_commodity_outflow_1,1,1,10,3
   - 75 sc_commodity_outflow_1,1,1,10 <= 0
 R1907: Classic_commodity_outflow_1,1,1,10,4
   - 1.7e+06 sc_commodity_outflow_1,1,1,10 <= 0
 R1908: 100 Classic_commodity_outflow_1,1,2,0,0
   + Classic_commodity_outflow_1,1,2,0,1
   + Classic_commodity_outflow_1,1,2,0,2
   + Classic_commodity_outflow_1,1,2,0,3 - 75 sc_commodity_outflow_1,1,2,0
   <= 0
 R1909: Classic_commodity_outflow_1,1,2,0,4
   - 1.7e+06 sc_commodity_outflow_1,1,2,0 <= 0
 R1910: 100 Classic_commodity_outflow_1,1,2,1,0
   + Classic_commodity_outflow_1,1,2,1,1
   + Classic_commodity_outflow_1,1,2,1,2
   + Classic_commodity_outflow_1,1,2,1,3 - 75 sc_commodity_outflow_1,1,2,1
   <= 0
 R1911: Classic_commodity_outflow_1,1,2,1,4
   - 1.7e+06 sc_commodity_outflow_1,1,2,1 <= 0
 R1912: 100 Classic_commodity_outflow_1,1,2,2,0
   + Classic_commodity_outflow_1,1,2,2,1
   + Classic_commodity_outflow_1,1,2,2,2
   + Classic_commodity_outflow_1,1,2,2,3 - 75 sc_commodity_outflow_1,1,2,2
   <= 0
 R1913: Classic_commodity_outflow_1,1,2,2,4
   - 1.7e+06 sc_commodity_outflow_1,1,2,2 <= 0
 R1914: 100 Classic_commodity_outflow_1,1,2,3,0
   + Classic_commodity_outflow_1,1,2,3,1
   + Classic_commodity_outflow_1,1,2,3,2
   + Classic_commodity_outflow_1,1,2,3,3 - 75 sc_commodity_outflow_1,1,2,3
   <= 0
 R1915: Classic_commodity_outflow_1,1,2,3,4
   - 1.7e+06 sc_commodity_outflow_1,1,2,3 <= 0
 R1916: 100 Classic_commodity_outflow_1,1,2,4,0
   + Classic_commodity_outflow_1,1,2,4,1
   + Classic_commodity_outflow_1,1,2,4,2
   + Classic_commodity_outflow_1,1,2,4,3 - 75 sc_commodity_outflow_1,1,2,4
   <= 0
 R1917: Classic_commodity_outflow_1,1,2,4,4
   - 1.7e+06 sc_commodity_outflow_1,1,2,4 <= 0
 R1918: 100 Classic_commodity_outflow_1,1,2,5,0
   + Classic_commodity_outflow_1,1,2,5,1
   + Classic_commodity_outflow_1,1,2,5,2
   + Classic_commodity_outflow_1,1,2,5,3 - 75 sc_commodity_outflow_1,1,2,5
   <= 0
 R1919: Classic_commodity_outflow_1,1,2,5,4
   - 1.7e+06 sc_commodity_outflow_1,1,2,5 <= 0
 R1920: 100 Classic_commodity_outflow_1,1,2,6,0
   + Classic_commodity_outflow_1,1,2,6,1
   + Classic_commodity_outflow_1,1,2,6,2
   + Classic_commodity_outflow_1,1,2,6,3 - 75 sc_commodity_outflow_1,1,2,6
   <= 0
 R1921: Classic_commodity_outflow_1,1,2,6,4
   - 1.7e+06 sc_commodity_outflow_1,1,2,6 <= 0
 R1922: 100 Classic_commodity_outflow_1,1,2,7,0
   + Classic_commodity_outflow_1,1,2,7,1
   + Classic_commodity_outflow_1,1,2,7,2
   + Classic_commodity_outflow_1,1,2,7,3 - 75 sc_commodity_outflow_1,1,2,7
   <= 0
 R1923: Classic_commodity_outflow_1,1,2,7,4
   - 1.7e+06 sc_commodity_outflow_1,1,2,7 <= 0
 R1924: 100 Classic_commodity_outflow_1,1,2,8,0
   + Classic_commodity_outflow_1,1,2,8,1
   + Classic_commodity_outflow_1,1,2,8,2
   + Classic_commodity_outflow_1,1,2,8,3 - 75 sc_commodity_outflow_1,1,2,8
   <= 0
 R1925: Classic_commodity_outflow_1,1,2,8,4
   - 1.7e+06 sc_commodity_outflow_1,1,2,8 <= 0
 R1926: 100 Classic_commodity_outflow_1,2,1,0,0
   + Classic_commodity_outflow_1,2,1,0,1
   + Classic_commodity_outflow_1,2,1,0,2
   + Classic_commodity_outflow_1,2,1,0,3 - 75 sc_commodity_outflow_1,2,1,0
   <= 0
 R1927: Classic_commodity_outflow_1,2,1,0,4
   - 1.7e+06 sc_commodity_outflow_1,2,1,0 <= 0
 R1928: 100 Classic_commodity_outflow_1,2,1,1,0
   + Classic_commodity_outflow_1,2,1,1,1
   + Classic_commodity_outflow_1,2,1,1,2
   + Classic_commodity_outflow_1,2,1,1,3 - 75 sc_commodity_outflow_1,2,1,1
   <= 0
 R1929: Classic_commodity_outflow_1,2,1,1,4
   - 1.7e+06 sc_commodity_outflow_1,2,1,1 <= 0
 R1930: 100 Classic_commodity_outflow_1,2,1,2,0
   + Classic_commodity_outflow_1,2,1,2,1
   + Classic_commodity_outflow_1,2,1,2,2
   + Classic_commodity_outflow_1,2,1,2,3 - 75 sc_commodity_outflow_1,2,1,2
   <= 0
 R1931: Classic_commodity_outflow_1,2,1,2,4
   - 1.7e+06 sc_commodity_outflow_1,2,1,2 <= 0
 R1932: 100 Classic_commodity_outflow_1,2,1,3,0
   + Classic_commodity_outflow_1,2,1,3,1
   + Classic_commodity_outflow_1,2,1,3,2
   + Classic_commodity_outflow_1,2,1,3,3 - 75 sc_commodity_outflow_1,2,1,3
   <= 0
 R1933: Classic_commodity_outflow_1,2,1,3,4
   - 1.7e+06 sc_commodity_outflow_1,2,1,3 <= 0
 R1934: 100 Classic_commodity_outflow_1,2,1,4,0
   + Classic_commodity_outflow_1,2,1,4,1
   + Classic_commodity_outflow_1,2,1,4,2
   + Classic_commodity_outflow_1,2,1,4,3 - 75 sc_commodity_outflow_1,2,1,4
   <= 0
 R1935: Classic_commodity_outflow_1,2,1,4,4
   - 1.7e+06 sc_commodity_outflow_1,2,1,4 <= 0
 R1936: 100 Classic_commodity_outflow_1,2,1,5,0
   + Classic_commodity_outflow_1,2,1,5,1
   + Classic_commodity_outflow_1,2,1,5,2
   + Classic_commodity_outflow_1,2,1,5,3 - 75 sc_commodity_outflow_1,2,1,5
   <= 0
 R1937: Classic_commodity_outflow_1,2,1,5,4
   - 1.7e+06 sc_commodity_outflow_1,2,1,5 <= 0
 R1938: 100 Classic_commodity_outflow_1,2,1,6,0
   + Classic_commodity_outflow_1,2,1,6,1
   + Classic_commodity_outflow_1,2,1,6,2
   + Classic_commodity_outflow_1,2,1,6,3 - 75 sc_commodity_outflow_1,2,1,6
   <= 0
 R1939: Classic_commodity_outflow_1,2,1,6,4
   - 1.7e+06 sc_commodity_outflow_1,2,1,6 <= 0
 R1940: 100 Classic_commodity_outflow_1,2,1,7,0
   + Classic_commodity_outflow_1,2,1,7,1
   + Classic_commodity_outflow_1,2,1,7,2
   + Classic_commodity_outflow_1,2,1,7,3 - 75 sc_commodity_outflow_1,2,1,7
   <= 0
 R1941: Classic_commodity_outflow_1,2,1,7,4
   - 1.7e+06 sc_commodity_outflow_1,2,1,7 <= 0
 R1942: 100 Classic_commodity_outflow_1,2,1,8,0
   + Classic_commodity_outflow_1,2,1,8,1
   + Classic_commodity_outflow_1,2,1,8,2
   + Classic_commodity_outflow_1,2,1,8,3 - 75 sc_commodity_outflow_1,2,1,8
   <= 0
 R1943: Classic_commodity_outflow_1,2,1,8,4
   - 1.7e+06 sc_commodity_outflow_1,2,1,8 <= 0
 R1944: 100 Classic_commodity_outflow_1,2,2,0,0
   + Classic_commodity_outflow_1,2,2,0,1
   + Classic_commodity_outflow_1,2,2,0,2
   + Classic_commodity_outflow_1,2,2,0,3 - 75 sc_commodity_outflow_1,2,2,0
   <= 0
 R1945: Classic_commodity_outflow_1,2,2,0,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,0 <= 0
 R1946: 100 Classic_commodity_outflow_1,2,2,1,0
   + Classic_commodity_outflow_1,2,2,1,1
   + Classic_commodity_outflow_1,2,2,1,2
   + Classic_commodity_outflow_1,2,2,1,3 - 75 sc_commodity_outflow_1,2,2,1
   <= 0
 R1947: Classic_commodity_outflow_1,2,2,1,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,1 <= 0
 R1948: 100 Classic_commodity_outflow_1,2,2,2,0
   + Classic_commodity_outflow_1,2,2,2,1
   + Classic_commodity_outflow_1,2,2,2,2
   + Classic_commodity_outflow_1,2,2,2,3 - 75 sc_commodity_outflow_1,2,2,2
   <= 0
 R1949: Classic_commodity_outflow_1,2,2,2,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,2 <= 0
 R1950: 100 Classic_commodity_outflow_1,2,2,3,0
   + Classic_commodity_outflow_1,2,2,3,1
   + Classic_commodity_outflow_1,2,2,3,2
   + Classic_commodity_outflow_1,2,2,3,3 - 75 sc_commodity_outflow_1,2,2,3
   <= 0
 R1951: Classic_commodity_outflow_1,2,2,3,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,3 <= 0
 R1952: 100 Classic_commodity_outflow_1,2,2,4,0
   + Classic_commodity_outflow_1,2,2,4,1
   + Classic_commodity_outflow_1,2,2,4,2
   + Classic_commodity_outflow_1,2,2,4,3 - 75 sc_commodity_outflow_1,2,2,4
   <= 0
 R1953: Classic_commodity_outflow_1,2,2,4,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,4 <= 0
 R1954: 100 Classic_commodity_outflow_1,2,2,5,0
   + Classic_commodity_outflow_1,2,2,5,1
   + Classic_commodity_outflow_1,2,2,5,2
   + Classic_commodity_outflow_1,2,2,5,3 - 75 sc_commodity_outflow_1,2,2,5
   <= 0
 R1955: Classic_commodity_outflow_1,2,2,5,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,5 <= 0
 R1956: 100 Classic_commodity_outflow_1,2,2,6,0
   + Classic_commodity_outflow_1,2,2,6,1
   + Classic_commodity_outflow_1,2,2,6,2
   + Classic_commodity_outflow_1,2,2,6,3 - 75 sc_commodity_outflow_1,2,2,6
   <= 0
 R1957: Classic_commodity_outflow_1,2,2,6,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,6 <= 0
 R1958: 100 Classic_commodity_outflow_1,2,2,7,0
   + Classic_commodity_outflow_1,2,2,7,1
   + Classic_commodity_outflow_1,2,2,7,2
   + Classic_commodity_outflow_1,2,2,7,3 - 75 sc_commodity_outflow_1,2,2,7
   <= 0
 R1959: Classic_commodity_outflow_1,2,2,7,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,7 <= 0
 R1960: 100 Classic_commodity_outflow_1,2,2,8,0
   + Classic_commodity_outflow_1,2,2,8,1
   + Classic_commodity_outflow_1,2,2,8,2
   + Classic_commodity_outflow_1,2,2,8,3 - 75 sc_commodity_outflow_1,2,2,8
   <= 0
 R1961: Classic_commodity_outflow_1,2,2,8,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,8 <= 0
 R1962: 100 Classic_commodity_outflow_1,2,2,9,0
   + Classic_commodity_outflow_1,2,2,9,1
   + Classic_commodity_outflow_1,2,2,9,2
   + Classic_commodity_outflow_1,2,2,9,3 - 75 sc_commodity_outflow_1,2,2,9
   <= 0
 R1963: Classic_commodity_outflow_1,2,2,9,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,9 <= 0
 R1964: 100 Classic_commodity_outflow_1,2,2,10,0
   + Classic_commodity_outflow_1,2,2,10,1
   + Classic_commodity_outflow_1,2,2,10,2
   + Classic_commodity_outflow_1,2,2,10,3
   - 75 sc_commodity_outflow_1,2,2,10 <= 0
 R1965: Classic_commodity_outflow_1,2,2,10,4
   - 1.7e+06 sc_commodity_outflow_1,2,2,10 <= 0
 R1966: 100 Classic_commodity_outflow_1,2,3,0,0
   + Classic_commodity_outflow_1,2,3,0,1
   + Classic_commodity_outflow_1,2,3,0,2
   + Classic_commodity_outflow_1,2,3,0,3 - 75 sc_commodity_outflow_1,2,3,0
   <= 0
 R1967: Classic_commodity_outflow_1,2,3,0,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,0 <= 0
 R1968: 100 Classic_commodity_outflow_1,2,3,1,0
   + Classic_commodity_outflow_1,2,3,1,1
   + Classic_commodity_outflow_1,2,3,1,2
   + Classic_commodity_outflow_1,2,3,1,3 - 75 sc_commodity_outflow_1,2,3,1
   <= 0
 R1969: Classic_commodity_outflow_1,2,3,1,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,1 <= 0
 R1970: 100 Classic_commodity_outflow_1,2,3,2,0
   + Classic_commodity_outflow_1,2,3,2,1
   + Classic_commodity_outflow_1,2,3,2,2
   + Classic_commodity_outflow_1,2,3,2,3 - 75 sc_commodity_outflow_1,2,3,2
   <= 0
 R1971: Classic_commodity_outflow_1,2,3,2,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,2 <= 0
 R1972: 100 Classic_commodity_outflow_1,2,3,3,0
   + Classic_commodity_outflow_1,2,3,3,1
   + Classic_commodity_outflow_1,2,3,3,2
   + Classic_commodity_outflow_1,2,3,3,3 - 75 sc_commodity_outflow_1,2,3,3
   <= 0
 R1973: Classic_commodity_outflow_1,2,3,3,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,3 <= 0
 R1974: 100 Classic_commodity_outflow_1,2,3,4,0
   + Classic_commodity_outflow_1,2,3,4,1
   + Classic_commodity_outflow_1,2,3,4,2
   + Classic_commodity_outflow_1,2,3,4,3 - 75 sc_commodity_outflow_1,2,3,4
   <= 0
 R1975: Classic_commodity_outflow_1,2,3,4,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,4 <= 0
 R1976: 100 Classic_commodity_outflow_1,2,3,5,0
   + Classic_commodity_outflow_1,2,3,5,1
   + Classic_commodity_outflow_1,2,3,5,2
   + Classic_commodity_outflow_1,2,3,5,3 - 75 sc_commodity_outflow_1,2,3,5
   <= 0
 R1977: Classic_commodity_outflow_1,2,3,5,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,5 <= 0
 R1978: 100 Classic_commodity_outflow_1,2,3,6,0
   + Classic_commodity_outflow_1,2,3,6,1
   + Classic_commodity_outflow_1,2,3,6,2
   + Classic_commodity_outflow_1,2,3,6,3 - 75 sc_commodity_outflow_1,2,3,6
   <= 0
 R1979: Classic_commodity_outflow_1,2,3,6,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,6 <= 0
 R1980: 100 Classic_commodity_outflow_1,2,3,7,0
   + Classic_commodity_outflow_1,2,3,7,1
   + Classic_commodity_outflow_1,2,3,7,2
   + Classic_commodity_outflow_1,2,3,7,3 - 75 sc_commodity_outflow_1,2,3,7
   <= 0
 R1981: Classic_commodity_outflow_1,2,3,7,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,7 <= 0
 R1982: 100 Classic_commodity_outflow_1,2,3,8,0
   + Classic_commodity_outflow_1,2,3,8,1
   + Classic_commodity_outflow_1,2,3,8,2
   + Classic_commodity_outflow_1,2,3,8,3 - 75 sc_commodity_outflow_1,2,3,8
   <= 0
 R1983: Classic_commodity_outflow_1,2,3,8,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,8 <= 0
 R1984: 100 Classic_commodity_outflow_1,2,3,9,0
   + Classic_commodity_outflow_1,2,3,9,1
   + Classic_commodity_outflow_1,2,3,9,2
   + Classic_commodity_outflow_1,2,3,9,3 - 75 sc_commodity_outflow_1,2,3,9
   <= 0
 R1985: Classic_commodity_outflow_1,2,3,9,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,9 <= 0
 R1986: 100 Classic_commodity_outflow_1,2,3,10,0
   + Classic_commodity_outflow_1,2,3,10,1
   + Classic_commodity_outflow_1,2,3,10,2
   + Classic_commodity_outflow_1,2,3,10,3
   - 75 sc_commodity_outflow_1,2,3,10 <= 0
 R1987: Classic_commodity_outflow_1,2,3,10,4
   - 1.7e+06 sc_commodity_outflow_1,2,3,10 <= 0
 R1988: 100 Classic_commodity_outflow_1,3,2,0,0
   + Classic_commodity_outflow_1,3,2,0,1
   + Classic_commodity_outflow_1,3,2,0,2
   + Classic_commodity_outflow_1,3,2,0,3 - 75 sc_commodity_outflow_1,3,2,0
   <= 0
 R1989: Classic_commodity_outflow_1,3,2,0,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,0 <= 0
 R1990: 100 Classic_commodity_outflow_1,3,2,1,0
   + Classic_commodity_outflow_1,3,2,1,1
   + Classic_commodity_outflow_1,3,2,1,2
   + Classic_commodity_outflow_1,3,2,1,3 - 75 sc_commodity_outflow_1,3,2,1
   <= 0
 R1991: Classic_commodity_outflow_1,3,2,1,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,1 <= 0
 R1992: 100 Classic_commodity_outflow_1,3,2,2,0
   + Classic_commodity_outflow_1,3,2,2,1
   + Classic_commodity_outflow_1,3,2,2,2
   + Classic_commodity_outflow_1,3,2,2,3 - 75 sc_commodity_outflow_1,3,2,2
   <= 0
 R1993: Classic_commodity_outflow_1,3,2,2,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,2 <= 0
 R1994: 100 Classic_commodity_outflow_1,3,2,3,0
   + Classic_commodity_outflow_1,3,2,3,1
   + Classic_commodity_outflow_1,3,2,3,2
   + Classic_commodity_outflow_1,3,2,3,3 - 75 sc_commodity_outflow_1,3,2,3
   <= 0
 R1995: Classic_commodity_outflow_1,3,2,3,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,3 <= 0
 R1996: 100 Classic_commodity_outflow_1,3,2,4,0
   + Classic_commodity_outflow_1,3,2,4,1
   + Classic_commodity_outflow_1,3,2,4,2
   + Classic_commodity_outflow_1,3,2,4,3 - 75 sc_commodity_outflow_1,3,2,4
   <= 0
 R1997: Classic_commodity_outflow_1,3,2,4,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,4 <= 0
 R1998: 100 Classic_commodity_outflow_1,3,2,5,0
   + Classic_commodity_outflow_1,3,2,5,1
   + Classic_commodity_outflow_1,3,2,5,2
   + Classic_commodity_outflow_1,3,2,5,3 - 75 sc_commodity_outflow_1,3,2,5
   <= 0
 R1999: Classic_commodity_outflow_1,3,2,5,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,5 <= 0
 R2000: 100 Classic_commodity_outflow_1,3,2,6,0
   + Classic_commodity_outflow_1,3,2,6,1
   + Classic_commodity_outflow_1,3,2,6,2
   + Classic_commodity_outflow_1,3,2,6,3 - 75 sc_commodity_outflow_1,3,2,6
   <= 0
 R2001: Classic_commodity_outflow_1,3,2,6,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,6 <= 0
 R2002: 100 Classic_commodity_outflow_1,3,2,7,0
   + Classic_commodity_outflow_1,3,2,7,1
   + Classic_commodity_outflow_1,3,2,7,2
   + Classic_commodity_outflow_1,3,2,7,3 - 75 sc_commodity_outflow_1,3,2,7
   <= 0
 R2003: Classic_commodity_outflow_1,3,2,7,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,7 <= 0
 R2004: 100 Classic_commodity_outflow_1,3,2,8,0
   + Classic_commodity_outflow_1,3,2,8,1
   + Classic_commodity_outflow_1,3,2,8,2
   + Classic_commodity_outflow_1,3,2,8,3 - 75 sc_commodity_outflow_1,3,2,8
   <= 0
 R2005: Classic_commodity_outflow_1,3,2,8,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,8 <= 0
 R2006: 100 Classic_commodity_outflow_1,3,2,9,0
   + Classic_commodity_outflow_1,3,2,9,1
   + Classic_commodity_outflow_1,3,2,9,2
   + Classic_commodity_outflow_1,3,2,9,3 - 75 sc_commodity_outflow_1,3,2,9
   <= 0
 R2007: Classic_commodity_outflow_1,3,2,9,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,9 <= 0
 R2008: 100 Classic_commodity_outflow_1,3,2,10,0
   + Classic_commodity_outflow_1,3,2,10,1
   + Classic_commodity_outflow_1,3,2,10,2
   + Classic_commodity_outflow_1,3,2,10,3
   - 75 sc_commodity_outflow_1,3,2,10 <= 0
 R2009: Classic_commodity_outflow_1,3,2,10,4
   - 1.7e+06 sc_commodity_outflow_1,3,2,10 <= 0
 R2010: 100 Classic_commodity_outflow_1,3,3,0,0
   + Classic_commodity_outflow_1,3,3,0,1
   + Classic_commodity_outflow_1,3,3,0,2
   + Classic_commodity_outflow_1,3,3,0,3 - 75 sc_commodity_outflow_1,3,3,0
   <= 0
 R2011: Classic_commodity_outflow_1,3,3,0,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,0 <= 0
 R2012: 100 Classic_commodity_outflow_1,3,3,1,0
   + Classic_commodity_outflow_1,3,3,1,1
   + Classic_commodity_outflow_1,3,3,1,2
   + Classic_commodity_outflow_1,3,3,1,3 - 75 sc_commodity_outflow_1,3,3,1
   <= 0
 R2013: Classic_commodity_outflow_1,3,3,1,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,1 <= 0
 R2014: 100 Classic_commodity_outflow_1,3,3,2,0
   + Classic_commodity_outflow_1,3,3,2,1
   + Classic_commodity_outflow_1,3,3,2,2
   + Classic_commodity_outflow_1,3,3,2,3 - 75 sc_commodity_outflow_1,3,3,2
   <= 0
 R2015: Classic_commodity_outflow_1,3,3,2,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,2 <= 0
 R2016: 100 Classic_commodity_outflow_1,3,3,3,0
   + Classic_commodity_outflow_1,3,3,3,1
   + Classic_commodity_outflow_1,3,3,3,2
   + Classic_commodity_outflow_1,3,3,3,3 - 75 sc_commodity_outflow_1,3,3,3
   <= 0
 R2017: Classic_commodity_outflow_1,3,3,3,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,3 <= 0
 R2018: 100 Classic_commodity_outflow_1,3,3,4,0
   + Classic_commodity_outflow_1,3,3,4,1
   + Classic_commodity_outflow_1,3,3,4,2
   + Classic_commodity_outflow_1,3,3,4,3 - 75 sc_commodity_outflow_1,3,3,4
   <= 0
 R2019: Classic_commodity_outflow_1,3,3,4,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,4 <= 0
 R2020: 100 Classic_commodity_outflow_1,3,3,5,0
   + Classic_commodity_outflow_1,3,3,5,1
   + Classic_commodity_outflow_1,3,3,5,2
   + Classic_commodity_outflow_1,3,3,5,3 - 75 sc_commodity_outflow_1,3,3,5
   <= 0
 R2021: Classic_commodity_outflow_1,3,3,5,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,5 <= 0
 R2022: 100 Classic_commodity_outflow_1,3,3,6,0
   + Classic_commodity_outflow_1,3,3,6,1
   + Classic_commodity_outflow_1,3,3,6,2
   + Classic_commodity_outflow_1,3,3,6,3 - 75 sc_commodity_outflow_1,3,3,6
   <= 0
 R2023: Classic_commodity_outflow_1,3,3,6,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,6 <= 0
 R2024: 100 Classic_commodity_outflow_1,3,3,7,0
   + Classic_commodity_outflow_1,3,3,7,1
   + Classic_commodity_outflow_1,3,3,7,2
   + Classic_commodity_outflow_1,3,3,7,3 - 75 sc_commodity_outflow_1,3,3,7
   <= 0
 R2025: Classic_commodity_outflow_1,3,3,7,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,7 <= 0
 R2026: 100 Classic_commodity_outflow_1,3,3,8,0
   + Classic_commodity_outflow_1,3,3,8,1
   + Classic_commodity_outflow_1,3,3,8,2
   + Classic_commodity_outflow_1,3,3,8,3 - 75 sc_commodity_outflow_1,3,3,8
   <= 0
 R2027: Classic_commodity_outflow_1,3,3,8,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,8 <= 0
 R2028: 100 Classic_commodity_outflow_1,3,3,9,0
   + Classic_commodity_outflow_1,3,3,9,1
   + Classic_commodity_outflow_1,3,3,9,2
   + Classic_commodity_outflow_1,3,3,9,3 - 75 sc_commodity_outflow_1,3,3,9
   <= 0
 R2029: Classic_commodity_outflow_1,3,3,9,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,9 <= 0
 R2030: 100 Classic_commodity_outflow_1,3,3,10,0
   + Classic_commodity_outflow_1,3,3,10,1
   + Classic_commodity_outflow_1,3,3,10,2
   + Classic_commodity_outflow_1,3,3,10,3
   - 75 sc_commodity_outflow_1,3,3,10 <= 0
 R2031: Classic_commodity_outflow_1,3,3,10,4
   - 1.7e+06 sc_commodity_outflow_1,3,3,10 <= 0
 R2032: Classic_commodity_outflow_0,0,0,0,0 >= 0
 R2033: Classic_commodity_outflow_0,0,0,0,1 >= 0
 R2034: Classic_commodity_outflow_0,0,0,0,2 >= 0
 R2035: Classic_commodity_outflow_0,0,0,0,3 >= 0
 R2036: Classic_commodity_outflow_0,0,0,0,4 >= 0
 R2037: Classic_commodity_inflow_0,0,0,0,0 >= 0
 R2038: Classic_commodity_inflow_0,0,0,0,1 >= 0
 R2039: Classic_commodity_inflow_0,0,0,0,2 >= 0
 R2040: Classic_commodity_inflow_0,0,0,0,3 >= 0
 R2041: Classic_commodity_inflow_0,0,0,0,4 >= 0
 R2042: sc_commodity_outflow_0,0,0,0 >= 0
 R2043: sc_commodity_inflow_0,0,0,0 >= 0
 R2044: Classic_commodity_outflow_0,0,0,1,0 >= 0
 R2045: Classic_commodity_outflow_0,0,0,1,1 >= 0
 R2046: Classic_commodity_outflow_0,0,0,1,2 >= 0
 R2047: Classic_commodity_outflow_0,0,0,1,3 >= 0
 R2048: Classic_commodity_outflow_0,0,0,1,4 >= 0
 R2049: Classic_commodity_inflow_0,0,0,1,0 >= 0
 R2050: Classic_commodity_inflow_0,0,0,1,1 >= 0
 R2051: Classic_commodity_inflow_0,0,0,1,2 >= 0
 R2052: Classic_commodity_inflow_0,0,0,1,3 >= 0
 R2053: Classic_commodity_inflow_0,0,0,1,4 >= 0
 R2054: sc_commodity_outflow_0,0,0,1 >= 0
 R2055: sc_commodity_inflow_0,0,0,1 >= 0
 R2056: Classic_commodity_outflow_0,0,0,2,0 >= 0
 R2057: Classic_commodity_outflow_0,0,0,2,1 >= 0
 R2058: Classic_commodity_outflow_0,0,0,2,2 >= 0
 R2059: Classic_commodity_outflow_0,0,0,2,3 >= 0
 R2060: Classic_commodity_outflow_0,0,0,2,4 >= 0
 R2061: Classic_commodity_inflow_0,0,0,2,0 >= 0
 R2062: Classic_commodity_inflow_0,0,0,2,1 >= 0
 R2063: Classic_commodity_inflow_0,0,0,2,2 >= 0
 R2064: Classic_commodity_inflow_0,0,0,2,3 >= 0
 R2065: Classic_commodity_inflow_0,0,0,2,4 >= 0
 R2066: sc_commodity_outflow_0,0,0,2 >= 0
 R2067: sc_commodity_inflow_0,0,0,2 >= 0
 R2068: Classic_commodity_outflow_0,0,0,3,0 >= 0
 R2069: Classic_commodity_outflow_0,0,0,3,1 >= 0
 R2070: Classic_commodity_outflow_0,0,0,3,2 >= 0
 R2071: Classic_commodity_outflow_0,0,0,3,3 >= 0
 R2072: Classic_commodity_outflow_0,0,0,3,4 >= 0
 R2073: Classic_commodity_inflow_0,0,0,3,0 >= 0
 R2074: Classic_commodity_inflow_0,0,0,3,1 >= 0
 R2075: Classic_commodity_inflow_0,0,0,3,2 >= 0
 R2076: Classic_commodity_inflow_0,0,0,3,3 >= 0
 R2077: Classic_commodity_inflow_0,0,0,3,4 >= 0
 R2078: sc_commodity_outflow_0,0,0,3 >= 0
 R2079: sc_commodity_inflow_0,0,0,3 >= 0
 R2080: Classic_commodity_outflow_0,0,0,4,0 >= 0
 R2081: Classic_commodity_outflow_0,0,0,4,1 >= 0
 R2082: Classic_commodity_outflow_0,0,0,4,2 >= 0
 R2083: Classic_commodity_outflow_0,0,0,4,3 >= 0
 R2084: Classic_commodity_outflow_0,0,0,4,4 >= 0
 R2085: Classic_commodity_inflow_0,0,0,4,0 >= 0
 R2086: Classic_commodity_inflow_0,0,0,4,1 >= 0
 R2087: Classic_commodity_inflow_0,0,0,4,2 >= 0
 R2088: Classic_commodity_inflow_0,0,0,4,3 >= 0
 R2089: Classic_commodity_inflow_0,0,0,4,4 >= 0
 R2090: sc_commodity_outflow_0,0,0,4 >= 0
 R2091: sc_commodity_inflow_0,0,0,4 >= 0
 R2092: Classic_commodity_outflow_0,0,0,5,0 >= 0
 R2093: Classic_commodity_outflow_0,0,0,5,1 >= 0
 R2094: Classic_commodity_outflow_0,0,0,5,2 >= 0
 R2095: Classic_commodity_outflow_0,0,0,5,3 >= 0
 R2096: Classic_commodity_outflow_0,0,0,5,4 >= 0
 R2097: Classic_commodity_inflow_0,0,0,5,0 >= 0
 R2098: Classic_commodity_inflow_0,0,0,5,1 >= 0
 R2099: Classic_commodity_inflow_0,0,0,5,2 >= 0
 R2100: Classic_commodity_inflow_0,0,0,5,3 >= 0
 R2101: Classic_commodity_inflow_0,0,0,5,4 >= 0
 R2102: sc_commodity_outflow_0,0,0,5 >= 0
 R2103: sc_commodity_inflow_0,0,0,5 >= 0
 R2104: Classic_commodity_outflow_0,0,0,6,0 >= 0
 R2105: Classic_commodity_outflow_0,0,0,6,1 >= 0
 R2106: Classic_commodity_outflow_0,0,0,6,2 >= 0
 R2107: Classic_commodity_outflow_0,0,0,6,3 >= 0
 R2108: Classic_commodity_outflow_0,0,0,6,4 >= 0
 R2109: Classic_commodity_inflow_0,0,0,6,0 >= 0
 R2110: Classic_commodity_inflow_0,0,0,6,1 >= 0
 R2111: Classic_commodity_inflow_0,0,0,6,2 >= 0
 R2112: Classic_commodity_inflow_0,0,0,6,3 >= 0
 R2113: Classic_commodity_inflow_0,0,0,6,4 >= 0
 R2114: sc_commodity_outflow_0,0,0,6 >= 0
 R2115: sc_commodity_inflow_0,0,0,6 >= 0
 R2116: Classic_commodity_outflow_0,0,0,7,0 >= 0
 R2117: Classic_commodity_outflow_0,0,0,7,1 >= 0
 R2118: Classic_commodity_outflow_0,0,0,7,2 >= 0
 R2119: Classic_commodity_outflow_0,0,0,7,3 >= 0
 R2120: Classic_commodity_outflow_0,0,0,7,4 >= 0
 R2121: Classic_commodity_inflow_0,0,0,7,0 >= 0
 R2122: Classic_commodity_inflow_0,0,0,7,1 >= 0
 R2123: Classic_commodity_inflow_0,0,0,7,2 >= 0
 R2124: Classic_commodity_inflow_0,0,0,7,3 >= 0
 R2125: Classic_commodity_inflow_0,0,0,7,4 >= 0
 R2126: sc_commodity_outflow_0,0,0,7 >= 0
 R2127: sc_commodity_inflow_0,0,0,7 >= 0
 R2128: Classic_commodity_outflow_0,0,0,8,0 >= 0
 R2129: Classic_commodity_outflow_0,0,0,8,1 >= 0
 R2130: Classic_commodity_outflow_0,0,0,8,2 >= 0
 R2131: Classic_commodity_outflow_0,0,0,8,3 >= 0
 R2132: Classic_commodity_outflow_0,0,0,8,4 >= 0
 R2133: Classic_commodity_inflow_0,0,0,8,0 >= 0
 R2134: Classic_commodity_inflow_0,0,0,8,1 >= 0
 R2135: Classic_commodity_inflow_0,0,0,8,2 >= 0
 R2136: Classic_commodity_inflow_0,0,0,8,3 >= 0
 R2137: Classic_commodity_inflow_0,0,0,8,4 >= 0
 R2138: sc_commodity_outflow_0,0,0,8 >= 0
 R2139: sc_commodity_inflow_0,0,0,8 >= 0
 R2140: Classic_commodity_outflow_0,0,0,9,0 >= 0
 R2141: Classic_commodity_outflow_0,0,0,9,1 >= 0
 R2142: Classic_commodity_outflow_0,0,0,9,2 >= 0
 R2143: Classic_commodity_outflow_0,0,0,9,3 >= 0
 R2144: Classic_commodity_outflow_0,0,0,9,4 >= 0
 R2145: Classic_commodity_inflow_0,0,0,9,0 >= 0
 R2146: Classic_commodity_inflow_0,0,0,9,1 >= 0
 R2147: Classic_commodity_inflow_0,0,0,9,2 >= 0
 R2148: Classic_commodity_inflow_0,0,0,9,3 >= 0
 R2149: Classic_commodity_inflow_0,0,0,9,4 >= 0
 R2150: sc_commodity_outflow_0,0,0,9 >= 0
 R2151: sc_commodity_inflow_0,0,0,9 >= 0
 R2152: Classic_commodity_outflow_0,0,0,10,0 >= 0
 R2153: Classic_commodity_outflow_0,0,0,10,1 >= 0
 R2154: Classic_commodity_outflow_0,0,0,10,2 >= 0
 R2155: Classic_commodity_outflow_0,0,0,10,3 >= 0
 R2156: Classic_commodity_outflow_0,0,0,10,4 >= 0
 R2157: Classic_commodity_inflow_0,0,0,10,0 >= 0
 R2158: Classic_commodity_inflow_0,0,0,10,1 >= 0
 R2159: Classic_commodity_inflow_0,0,0,10,2 >= 0
 R2160: Classic_commodity_inflow_0,0,0,10,3 >= 0
 R2161: Classic_commodity_inflow_0,0,0,10,4 >= 0
 R2162: sc_commodity_outflow_0,0,0,10 >= 0
 R2163: sc_commodity_inflow_0,0,0,10 >= 0
 R2164: Classic_commodity_outflow_0,0,1,0,0 >= 0
 R2165: Classic_commodity_outflow_0,0,1,0,1 >= 0
 R2166: Classic_commodity_outflow_0,0,1,0,2 >= 0
 R2167: Classic_commodity_outflow_0,0,1,0,3 >= 0
 R2168: Classic_commodity_outflow_0,0,1,0,4 >= 0
 R2169: Classic_commodity_inflow_0,0,1,0,0 >= 0
 R2170: Classic_commodity_inflow_0,0,1,0,1 >= 0
 R2171: Classic_commodity_inflow_0,0,1,0,2 >= 0
 R2172: Classic_commodity_inflow_0,0,1,0,3 >= 0
 R2173: Classic_commodity_inflow_0,0,1,0,4 >= 0
 R2174: sc_commodity_outflow_0,0,1,0 >= 0
 R2175: sc_commodity_inflow_0,0,1,0 >= 0
 R2176: Classic_commodity_outflow_0,0,1,1,0 >= 0
 R2177: Classic_commodity_outflow_0,0,1,1,1 >= 0
 R2178: Classic_commodity_outflow_0,0,1,1,2 >= 0
 R2179: Classic_commodity_outflow_0,0,1,1,3 >= 0
 R2180: Classic_commodity_outflow_0,0,1,1,4 >= 0
 R2181: Classic_commodity_inflow_0,0,1,1,0 >= 0
 R2182: Classic_commodity_inflow_0,0,1,1,1 >= 0
 R2183: Classic_commodity_inflow_0,0,1,1,2 >= 0
 R2184: Classic_commodity_inflow_0,0,1,1,3 >= 0
 R2185: Classic_commodity_inflow_0,0,1,1,4 >= 0
 R2186: sc_commodity_outflow_0,0,1,1 >= 0
 R2187: sc_commodity_inflow_0,0,1,1 >= 0
 R2188: Classic_commodity_outflow_0,0,1,2,0 >= 0
 R2189: Classic_commodity_outflow_0,0,1,2,1 >= 0
 R2190: Classic_commodity_outflow_0,0,1,2,2 >= 0
 R2191: Classic_commodity_outflow_0,0,1,2,3 >= 0
 R2192: Classic_commodity_outflow_0,0,1,2,4 >= 0
 R2193: Classic_commodity_inflow_0,0,1,2,0 >= 0
 R2194: Classic_commodity_inflow_0,0,1,2,1 >= 0
 R2195: Classic_commodity_inflow_0,0,1,2,2 >= 0
 R2196: Classic_commodity_inflow_0,0,1,2,3 >= 0
 R2197: Classic_commodity_inflow_0,0,1,2,4 >= 0
 R2198: sc_commodity_outflow_0,0,1,2 >= 0
 R2199: sc_commodity_inflow_0,0,1,2 >= 0
 R2200: Classic_commodity_outflow_0,0,1,3,0 >= 0
 R2201: Classic_commodity_outflow_0,0,1,3,1 >= 0
 R2202: Classic_commodity_outflow_0,0,1,3,2 >= 0
 R2203: Classic_commodity_outflow_0,0,1,3,3 >= 0
 R2204: Classic_commodity_outflow_0,0,1,3,4 >= 0
 R2205: Classic_commodity_inflow_0,0,1,3,0 >= 0
 R2206: Classic_commodity_inflow_0,0,1,3,1 >= 0
 R2207: Classic_commodity_inflow_0,0,1,3,2 >= 0
 R2208: Classic_commodity_inflow_0,0,1,3,3 >= 0
 R2209: Classic_commodity_inflow_0,0,1,3,4 >= 0
 R2210: sc_commodity_outflow_0,0,1,3 >= 0
 R2211: sc_commodity_inflow_0,0,1,3 >= 0
 R2212: Classic_commodity_outflow_0,0,1,4,0 >= 0
 R2213: Classic_commodity_outflow_0,0,1,4,1 >= 0
 R2214: Classic_commodity_outflow_0,0,1,4,2 >= 0
 R2215: Classic_commodity_outflow_0,0,1,4,3 >= 0
 R2216: Classic_commodity_outflow_0,0,1,4,4 >= 0
 R2217: Classic_commodity_inflow_0,0,1,4,0 >= 0
 R2218: Classic_commodity_inflow_0,0,1,4,1 >= 0
 R2219: Classic_commodity_inflow_0,0,1,4,2 >= 0
 R2220: Classic_commodity_inflow_0,0,1,4,3 >= 0
 R2221: Classic_commodity_inflow_0,0,1,4,4 >= 0
 R2222: sc_commodity_outflow_0,0,1,4 >= 0
 R2223: sc_commodity_inflow_0,0,1,4 >= 0
 R2224: Classic_commodity_outflow_0,0,1,5,0 >= 0
 R2225: Classic_commodity_outflow_0,0,1,5,1 >= 0
 R2226: Classic_commodity_outflow_0,0,1,5,2 >= 0
 R2227: Classic_commodity_outflow_0,0,1,5,3 >= 0
 R2228: Classic_commodity_outflow_0,0,1,5,4 >= 0
 R2229: Classic_commodity_inflow_0,0,1,5,0 >= 0
 R2230: Classic_commodity_inflow_0,0,1,5,1 >= 0
 R2231: Classic_commodity_inflow_0,0,1,5,2 >= 0
 R2232: Classic_commodity_inflow_0,0,1,5,3 >= 0
 R2233: Classic_commodity_inflow_0,0,1,5,4 >= 0
 R2234: sc_commodity_outflow_0,0,1,5 >= 0
 R2235: sc_commodity_inflow_0,0,1,5 >= 0
 R2236: Classic_commodity_outflow_0,0,1,6,0 >= 0
 R2237: Classic_commodity_outflow_0,0,1,6,1 >= 0
 R2238: Classic_commodity_outflow_0,0,1,6,2 >= 0
 R2239: Classic_commodity_outflow_0,0,1,6,3 >= 0
 R2240: Classic_commodity_outflow_0,0,1,6,4 >= 0
 R2241: Classic_commodity_inflow_0,0,1,6,0 >= 0
 R2242: Classic_commodity_inflow_0,0,1,6,1 >= 0
 R2243: Classic_commodity_inflow_0,0,1,6,2 >= 0
 R2244: Classic_commodity_inflow_0,0,1,6,3 >= 0
 R2245: Classic_commodity_inflow_0,0,1,6,4 >= 0
 R2246: sc_commodity_outflow_0,0,1,6 >= 0
 R2247: sc_commodity_inflow_0,0,1,6 >= 0
 R2248: Classic_commodity_outflow_0,0,1,7,0 >= 0
 R2249: Classic_commodity_outflow_0,0,1,7,1 >= 0
 R2250: Classic_commodity_outflow_0,0,1,7,2 >= 0
 R2251: Classic_commodity_outflow_0,0,1,7,3 >= 0
 R2252: Classic_commodity_outflow_0,0,1,7,4 >= 0
 R2253: Classic_commodity_inflow_0,0,1,7,0 >= 0
 R2254: Classic_commodity_inflow_0,0,1,7,1 >= 0
 R2255: Classic_commodity_inflow_0,0,1,7,2 >= 0
 R2256: Classic_commodity_inflow_0,0,1,7,3 >= 0
 R2257: Classic_commodity_inflow_0,0,1,7,4 >= 0
 R2258: sc_commodity_outflow_0,0,1,7 >= 0
 R2259: sc_commodity_inflow_0,0,1,7 >= 0
 R2260: Classic_commodity_outflow_0,0,1,8,0 >= 0
 R2261: Classic_commodity_outflow_0,0,1,8,1 >= 0
 R2262: Classic_commodity_outflow_0,0,1,8,2 >= 0
 R2263: Classic_commodity_outflow_0,0,1,8,3 >= 0
 R2264: Classic_commodity_outflow_0,0,1,8,4 >= 0
 R2265: Classic_commodity_inflow_0,0,1,8,0 >= 0
 R2266: Classic_commodity_inflow_0,0,1,8,1 >= 0
 R2267: Classic_commodity_inflow_0,0,1,8,2 >= 0
 R2268: Classic_commodity_inflow_0,0,1,8,3 >= 0
 R2269: Classic_commodity_inflow_0,0,1,8,4 >= 0
 R2270: sc_commodity_outflow_0,0,1,8 >= 0
 R2271: sc_commodity_inflow_0,0,1,8 >= 0
 R2272: Classic_commodity_outflow_0,0,1,9,0 >= 0
 R2273: Classic_commodity_outflow_0,0,1,9,1 >= 0
 R2274: Classic_commodity_outflow_0,0,1,9,2 >= 0
 R2275: Classic_commodity_outflow_0,0,1,9,3 >= 0
 R2276: Classic_commodity_outflow_0,0,1,9,4 >= 0
 R2277: Classic_commodity_inflow_0,0,1,9,0 >= 0
 R2278: Classic_commodity_inflow_0,0,1,9,1 >= 0
 R2279: Classic_commodity_inflow_0,0,1,9,2 >= 0
 R2280: Classic_commodity_inflow_0,0,1,9,3 >= 0
 R2281: Classic_commodity_inflow_0,0,1,9,4 >= 0
 R2282: sc_commodity_outflow_0,0,1,9 >= 0
 R2283: sc_commodity_inflow_0,0,1,9 >= 0
 R2284: Classic_commodity_outflow_0,0,1,10,0 >= 0
 R2285: Classic_commodity_outflow_0,0,1,10,1 >= 0
 R2286: Classic_commodity_outflow_0,0,1,10,2 >= 0
 R2287: Classic_commodity_outflow_0,0,1,10,3 >= 0
 R2288: Classic_commodity_outflow_0,0,1,10,4 >= 0
 R2289: Classic_commodity_inflow_0,0,1,10,0 >= 0
 R2290: Classic_commodity_inflow_0,0,1,10,1 >= 0
 R2291: Classic_commodity_inflow_0,0,1,10,2 >= 0
 R2292: Classic_commodity_inflow_0,0,1,10,3 >= 0
 R2293: Classic_commodity_inflow_0,0,1,10,4 >= 0
 R2294: sc_commodity_outflow_0,0,1,10 >= 0
 R2295: sc_commodity_inflow_0,0,1,10 >= 0
 R2296: Classic_commodity_outflow_0,1,0,0,0 >= 0
 R2297: Classic_commodity_outflow_0,1,0,0,1 >= 0
 R2298: Classic_commodity_outflow_0,1,0,0,2 >= 0
 R2299: Classic_commodity_outflow_0,1,0,0,3 >= 0
 R2300: Classic_commodity_outflow_0,1,0,0,4 >= 0
 R2301: Classic_commodity_inflow_0,1,0,0,0 >= 0
 R2302: Classic_commodity_inflow_0,1,0,0,1 >= 0
 R2303: Classic_commodity_inflow_0,1,0,0,2 >= 0
 R2304: Classic_commodity_inflow_0,1,0,0,3 >= 0
 R2305: Classic_commodity_inflow_0,1,0,0,4 >= 0
 R2306: sc_commodity_outflow_0,1,0,0 >= 0
 R2307: sc_commodity_inflow_0,1,0,0 >= 0
 R2308: Classic_commodity_outflow_0,1,0,1,0 >= 0
 R2309: Classic_commodity_outflow_0,1,0,1,1 >= 0
 R2310: Classic_commodity_outflow_0,1,0,1,2 >= 0
 R2311: Classic_commodity_outflow_0,1,0,1,3 >= 0
 R2312: Classic_commodity_outflow_0,1,0,1,4 >= 0
 R2313: Classic_commodity_inflow_0,1,0,1,0 >= 0
 R2314: Classic_commodity_inflow_0,1,0,1,1 >= 0
 R2315: Classic_commodity_inflow_0,1,0,1,2 >= 0
 R2316: Classic_commodity_inflow_0,1,0,1,3 >= 0
 R2317: Classic_commodity_inflow_0,1,0,1,4 >= 0
 R2318: sc_commodity_outflow_0,1,0,1 >= 0
 R2319: sc_commodity_inflow_0,1,0,1 >= 0
 R2320: Classic_commodity_outflow_0,1,0,2,0 >= 0
 R2321: Classic_commodity_outflow_0,1,0,2,1 >= 0
 R2322: Classic_commodity_outflow_0,1,0,2,2 >= 0
 R2323: Classic_commodity_outflow_0,1,0,2,3 >= 0
 R2324: Classic_commodity_outflow_0,1,0,2,4 >= 0
 R2325: Classic_commodity_inflow_0,1,0,2,0 >= 0
 R2326: Classic_commodity_inflow_0,1,0,2,1 >= 0
 R2327: Classic_commodity_inflow_0,1,0,2,2 >= 0
 R2328: Classic_commodity_inflow_0,1,0,2,3 >= 0
 R2329: Classic_commodity_inflow_0,1,0,2,4 >= 0
 R2330: sc_commodity_outflow_0,1,0,2 >= 0
 R2331: sc_commodity_inflow_0,1,0,2 >= 0
 R2332: Classic_commodity_outflow_0,1,0,3,0 >= 0
 R2333: Classic_commodity_outflow_0,1,0,3,1 >= 0
 R2334: Classic_commodity_outflow_0,1,0,3,2 >= 0
 R2335: Classic_commodity_outflow_0,1,0,3,3 >= 0
 R2336: Classic_commodity_outflow_0,1,0,3,4 >= 0
 R2337: Classic_commodity_inflow_0,1,0,3,0 >= 0
 R2338: Classic_commodity_inflow_0,1,0,3,1 >= 0
 R2339: Classic_commodity_inflow_0,1,0,3,2 >= 0
 R2340: Classic_commodity_inflow_0,1,0,3,3 >= 0
 R2341: Classic_commodity_inflow_0,1,0,3,4 >= 0
 R2342: sc_commodity_outflow_0,1,0,3 >= 0
 R2343: sc_commodity_inflow_0,1,0,3 >= 0
 R2344: Classic_commodity_outflow_0,1,0,4,0 >= 0
 R2345: Classic_commodity_outflow_0,1,0,4,1 >= 0
 R2346: Classic_commodity_outflow_0,1,0,4,2 >= 0
 R2347: Classic_commodity_outflow_0,1,0,4,3 >= 0
 R2348: Classic_commodity_outflow_0,1,0,4,4 >= 0
 R2349: Classic_commodity_inflow_0,1,0,4,0 >= 0
 R2350: Classic_commodity_inflow_0,1,0,4,1 >= 0
 R2351: Classic_commodity_inflow_0,1,0,4,2 >= 0
 R2352: Classic_commodity_inflow_0,1,0,4,3 >= 0
 R2353: Classic_commodity_inflow_0,1,0,4,4 >= 0
 R2354: sc_commodity_outflow_0,1,0,4 >= 0
 R2355: sc_commodity_inflow_0,1,0,4 >= 0
 R2356: Classic_commodity_outflow_0,1,0,5,0 >= 0
 R2357: Classic_commodity_outflow_0,1,0,5,1 >= 0
 R2358: Classic_commodity_outflow_0,1,0,5,2 >= 0
 R2359: Classic_commodity_outflow_0,1,0,5,3 >= 0
 R2360: Classic_commodity_outflow_0,1,0,5,4 >= 0
 R2361: Classic_commodity_inflow_0,1,0,5,0 >= 0
 R2362: Classic_commodity_inflow_0,1,0,5,1 >= 0
 R2363: Classic_commodity_inflow_0,1,0,5,2 >= 0
 R2364: Classic_commodity_inflow_0,1,0,5,3 >= 0
 R2365: Classic_commodity_inflow_0,1,0,5,4 >= 0
 R2366: sc_commodity_outflow_0,1,0,5 >= 0
 R2367: sc_commodity_inflow_0,1,0,5 >= 0
 R2368: Classic_commodity_outflow_0,1,0,6,0 >= 0
 R2369: Classic_commodity_outflow_0,1,0,6,1 >= 0
 R2370: Classic_commodity_outflow_0,1,0,6,2 >= 0
 R2371: Classic_commodity_outflow_0,1,0,6,3 >= 0
 R2372: Classic_commodity_outflow_0,1,0,6,4 >= 0
 R2373: Classic_commodity_inflow_0,1,0,6,0 >= 0
 R2374: Classic_commodity_inflow_0,1,0,6,1 >= 0
 R2375: Classic_commodity_inflow_0,1,0,6,2 >= 0
 R2376: Classic_commodity_inflow_0,1,0,6,3 >= 0
 R2377: Classic_commodity_inflow_0,1,0,6,4 >= 0
 R2378: sc_commodity_outflow_0,1,0,6 >= 0
 R2379: sc_commodity_inflow_0,1,0,6 >= 0
 R2380: Classic_commodity_outflow_0,1,0,7,0 >= 0
 R2381: Classic_commodity_outflow_0,1,0,7,1 >= 0
 R2382: Classic_commodity_outflow_0,1,0,7,2 >= 0
 R2383: Classic_commodity_outflow_0,1,0,7,3 >= 0
 R2384: Classic_commodity_outflow_0,1,0,7,4 >= 0
 R2385: Classic_commodity_inflow_0,1,0,7,0 >= 0
 R2386: Classic_commodity_inflow_0,1,0,7,1 >= 0
 R2387: Classic_commodity_inflow_0,1,0,7,2 >= 0
 R2388: Classic_commodity_inflow_0,1,0,7,3 >= 0
 R2389: Classic_commodity_inflow_0,1,0,7,4 >= 0
 R2390: sc_commodity_outflow_0,1,0,7 >= 0
 R2391: sc_commodity_inflow_0,1,0,7 >= 0
 R2392: Classic_commodity_outflow_0,1,0,8,0 >= 0
 R2393: Classic_commodity_outflow_0,1,0,8,1 >= 0
 R2394: Classic_commodity_outflow_0,1,0,8,2 >= 0
 R2395: Classic_commodity_outflow_0,1,0,8,3 >= 0
 R2396: Classic_commodity_outflow_0,1,0,8,4 >= 0
 R2397: Classic_commodity_inflow_0,1,0,8,0 >= 0
 R2398: Classic_commodity_inflow_0,1,0,8,1 >= 0
 R2399: Classic_commodity_inflow_0,1,0,8,2 >= 0
 R2400: Classic_commodity_inflow_0,1,0,8,3 >= 0
 R2401: Classic_commodity_inflow_0,1,0,8,4 >= 0
 R2402: sc_commodity_outflow_0,1,0,8 >= 0
 R2403: sc_commodity_inflow_0,1,0,8 >= 0
 R2404: Classic_commodity_outflow_0,1,0,9,0 >= 0
 R2405: Classic_commodity_outflow_0,1,0,9,1 >= 0
 R2406: Classic_commodity_outflow_0,1,0,9,2 >= 0
 R2407: Classic_commodity_outflow_0,1,0,9,3 >= 0
 R2408: Classic_commodity_outflow_0,1,0,9,4 >= 0
 R2409: Classic_commodity_inflow_0,1,0,9,0 >= 0
 R2410: Classic_commodity_inflow_0,1,0,9,1 >= 0
 R2411: Classic_commodity_inflow_0,1,0,9,2 >= 0
 R2412: Classic_commodity_inflow_0,1,0,9,3 >= 0
 R2413: Classic_commodity_inflow_0,1,0,9,4 >= 0
 R2414: sc_commodity_outflow_0,1,0,9 >= 0
 R2415: sc_commodity_inflow_0,1,0,9 >= 0
 R2416: Classic_commodity_outflow_0,1,0,10,0 >= 0
 R2417: Classic_commodity_outflow_0,1,0,10,1 >= 0
 R2418: Classic_commodity_outflow_0,1,0,10,2 >= 0
 R2419: Classic_commodity_outflow_0,1,0,10,3 >= 0
 R2420: Classic_commodity_outflow_0,1,0,10,4 >= 0
 R2421: Classic_commodity_inflow_0,1,0,10,0 >= 0
 R2422: Classic_commodity_inflow_0,1,0,10,1 >= 0
 R2423: Classic_commodity_inflow_0,1,0,10,2 >= 0
 R2424: Classic_commodity_inflow_0,1,0,10,3 >= 0
 R2425: Classic_commodity_inflow_0,1,0,10,4 >= 0
 R2426: sc_commodity_outflow_0,1,0,10 >= 0
 R2427: sc_commodity_inflow_0,1,0,10 >= 0
 R2428: Classic_commodity_outflow_0,1,1,0,0 >= 0
 R2429: Classic_commodity_outflow_0,1,1,0,1 >= 0
 R2430: Classic_commodity_outflow_0,1,1,0,2 >= 0
 R2431: Classic_commodity_outflow_0,1,1,0,3 >= 0
 R2432: Classic_commodity_outflow_0,1,1,0,4 >= 0
 R2433: Classic_commodity_inflow_0,1,1,0,0 >= 0
 R2434: Classic_commodity_inflow_0,1,1,0,1 >= 0
 R2435: Classic_commodity_inflow_0,1,1,0,2 >= 0
 R2436: Classic_commodity_inflow_0,1,1,0,3 >= 0
 R2437: Classic_commodity_inflow_0,1,1,0,4 >= 0
 R2438: sc_commodity_outflow_0,1,1,0 >= 0
 R2439: sc_commodity_inflow_0,1,1,0 >= 0
 R2440: Classic_commodity_outflow_0,1,1,1,0 >= 0
 R2441: Classic_commodity_outflow_0,1,1,1,1 >= 0
 R2442: Classic_commodity_outflow_0,1,1,1,2 >= 0
 R2443: Classic_commodity_outflow_0,1,1,1,3 >= 0
 R2444: Classic_commodity_outflow_0,1,1,1,4 >= 0
 R2445: Classic_commodity_inflow_0,1,1,1,0 >= 0
 R2446: Classic_commodity_inflow_0,1,1,1,1 >= 0
 R2447: Classic_commodity_inflow_0,1,1,1,2 >= 0
 R2448: Classic_commodity_inflow_0,1,1,1,3 >= 0
 R2449: Classic_commodity_inflow_0,1,1,1,4 >= 0
 R2450: sc_commodity_outflow_0,1,1,1 >= 0
 R2451: sc_commodity_inflow_0,1,1,1 >= 0
 R2452: Classic_commodity_outflow_0,1,1,2,0 >= 0
 R2453: Classic_commodity_outflow_0,1,1,2,1 >= 0
 R2454: Classic_commodity_outflow_0,1,1,2,2 >= 0
 R2455: Classic_commodity_outflow_0,1,1,2,3 >= 0
 R2456: Classic_commodity_outflow_0,1,1,2,4 >= 0
 R2457: Classic_commodity_inflow_0,1,1,2,0 >= 0
 R2458: Classic_commodity_inflow_0,1,1,2,1 >= 0
 R2459: Classic_commodity_inflow_0,1,1,2,2 >= 0
 R2460: Classic_commodity_inflow_0,1,1,2,3 >= 0
 R2461: Classic_commodity_inflow_0,1,1,2,4 >= 0
 R2462: sc_commodity_outflow_0,1,1,2 >= 0
 R2463: sc_commodity_inflow_0,1,1,2 >= 0
 R2464: Classic_commodity_outflow_0,1,1,3,0 >= 0
 R2465: Classic_commodity_outflow_0,1,1,3,1 >= 0
 R2466: Classic_commodity_outflow_0,1,1,3,2 >= 0
 R2467: Classic_commodity_outflow_0,1,1,3,3 >= 0
 R2468: Classic_commodity_outflow_0,1,1,3,4 >= 0
 R2469: Classic_commodity_inflow_0,1,1,3,0 >= 0
 R2470: Classic_commodity_inflow_0,1,1,3,1 >= 0
 R2471: Classic_commodity_inflow_0,1,1,3,2 >= 0
 R2472: Classic_commodity_inflow_0,1,1,3,3 >= 0
 R2473: Classic_commodity_inflow_0,1,1,3,4 >= 0
 R2474: sc_commodity_outflow_0,1,1,3 >= 0
 R2475: sc_commodity_inflow_0,1,1,3 >= 0
 R2476: Classic_commodity_outflow_0,1,1,4,0 >= 0
 R2477: Classic_commodity_outflow_0,1,1,4,1 >= 0
 R2478: Classic_commodity_outflow_0,1,1,4,2 >= 0
 R2479: Classic_commodity_outflow_0,1,1,4,3 >= 0
 R2480: Classic_commodity_outflow_0,1,1,4,4 >= 0
 R2481: Classic_commodity_inflow_0,1,1,4,0 >= 0
 R2482: Classic_commodity_inflow_0,1,1,4,1 >= 0
 R2483: Classic_commodity_inflow_0,1,1,4,2 >= 0
 R2484: Classic_commodity_inflow_0,1,1,4,3 >= 0
 R2485: Classic_commodity_inflow_0,1,1,4,4 >= 0
 R2486: sc_commodity_outflow_0,1,1,4 >= 0
 R2487: sc_commodity_inflow_0,1,1,4 >= 0
 R2488: Classic_commodity_outflow_0,1,1,5,0 >= 0
 R2489: Classic_commodity_outflow_0,1,1,5,1 >= 0
 R2490: Classic_commodity_outflow_0,1,1,5,2 >= 0
 R2491: Classic_commodity_outflow_0,1,1,5,3 >= 0
 R2492: Classic_commodity_outflow_0,1,1,5,4 >= 0
 R2493: Classic_commodity_inflow_0,1,1,5,0 >= 0
 R2494: Classic_commodity_inflow_0,1,1,5,1 >= 0
 R2495: Classic_commodity_inflow_0,1,1,5,2 >= 0
 R2496: Classic_commodity_inflow_0,1,1,5,3 >= 0
 R2497: Classic_commodity_inflow_0,1,1,5,4 >= 0
 R2498: sc_commodity_outflow_0,1,1,5 >= 0
 R2499: sc_commodity_inflow_0,1,1,5 >= 0
 R2500: Classic_commodity_outflow_0,1,1,6,0 >= 0
 R2501: Classic_commodity_outflow_0,1,1,6,1 >= 0
 R2502: Classic_commodity_outflow_0,1,1,6,2 >= 0
 R2503: Classic_commodity_outflow_0,1,1,6,3 >= 0
 R2504: Classic_commodity_outflow_0,1,1,6,4 >= 0
 R2505: Classic_commodity_inflow_0,1,1,6,0 >= 0
 R2506: Classic_commodity_inflow_0,1,1,6,1 >= 0
 R2507: Classic_commodity_inflow_0,1,1,6,2 >= 0
 R2508: Classic_commodity_inflow_0,1,1,6,3 >= 0
 R2509: Classic_commodity_inflow_0,1,1,6,4 >= 0
 R2510: sc_commodity_outflow_0,1,1,6 >= 0
 R2511: sc_commodity_inflow_0,1,1,6 >= 0
 R2512: Classic_commodity_outflow_0,1,1,7,0 >= 0
 R2513: Classic_commodity_outflow_0,1,1,7,1 >= 0
 R2514: Classic_commodity_outflow_0,1,1,7,2 >= 0
 R2515: Classic_commodity_outflow_0,1,1,7,3 >= 0
 R2516: Classic_commodity_outflow_0,1,1,7,4 >= 0
 R2517: Classic_commodity_inflow_0,1,1,7,0 >= 0
 R2518: Classic_commodity_inflow_0,1,1,7,1 >= 0
 R2519: Classic_commodity_inflow_0,1,1,7,2 >= 0
 R2520: Classic_commodity_inflow_0,1,1,7,3 >= 0
 R2521: Classic_commodity_inflow_0,1,1,7,4 >= 0
 R2522: sc_commodity_outflow_0,1,1,7 >= 0
 R2523: sc_commodity_inflow_0,1,1,7 >= 0
 R2524: Classic_commodity_outflow_0,1,1,8,0 >= 0
 R2525: Classic_commodity_outflow_0,1,1,8,1 >= 0
 R2526: Classic_commodity_outflow_0,1,1,8,2 >= 0
 R2527: Classic_commodity_outflow_0,1,1,8,3 >= 0
 R2528: Classic_commodity_outflow_0,1,1,8,4 >= 0
 R2529: Classic_commodity_inflow_0,1,1,8,0 >= 0
 R2530: Classic_commodity_inflow_0,1,1,8,1 >= 0
 R2531: Classic_commodity_inflow_0,1,1,8,2 >= 0
 R2532: Classic_commodity_inflow_0,1,1,8,3 >= 0
 R2533: Classic_commodity_inflow_0,1,1,8,4 >= 0
 R2534: sc_commodity_outflow_0,1,1,8 >= 0
 R2535: sc_commodity_inflow_0,1,1,8 >= 0
 R2536: Classic_commodity_outflow_0,1,1,9,0 >= 0
 R2537: Classic_commodity_outflow_0,1,1,9,1 >= 0
 R2538: Classic_commodity_outflow_0,1,1,9,2 >= 0
 R2539: Classic_commodity_outflow_0,1,1,9,3 >= 0
 R2540: Classic_commodity_outflow_0,1,1,9,4 >= 0
 R2541: Classic_commodity_inflow_0,1,1,9,0 >= 0
 R2542: Classic_commodity_inflow_0,1,1,9,1 >= 0
 R2543: Classic_commodity_inflow_0,1,1,9,2 >= 0
 R2544: Classic_commodity_inflow_0,1,1,9,3 >= 0
 R2545: Classic_commodity_inflow_0,1,1,9,4 >= 0
 R2546: sc_commodity_outflow_0,1,1,9 >= 0
 R2547: sc_commodity_inflow_0,1,1,9 >= 0
 R2548: Classic_commodity_outflow_0,1,1,10,0 >= 0
 R2549: Classic_commodity_outflow_0,1,1,10,1 >= 0
 R2550: Classic_commodity_outflow_0,1,1,10,2 >= 0
 R2551: Classic_commodity_outflow_0,1,1,10,3 >= 0
 R2552: Classic_commodity_outflow_0,1,1,10,4 >= 0
 R2553: Classic_commodity_inflow_0,1,1,10,0 >= 0
 R2554: Classic_commodity_inflow_0,1,1,10,1 >= 0
 R2555: Classic_commodity_inflow_0,1,1,10,2 >= 0
 R2556: Classic_commodity_inflow_0,1,1,10,3 >= 0
 R2557: Classic_commodity_inflow_0,1,1,10,4 >= 0
 R2558: sc_commodity_outflow_0,1,1,10 >= 0
 R2559: sc_commodity_inflow_0,1,1,10 >= 0
 R2560: Classic_commodity_outflow_0,1,2,0,0 >= 0
 R2561: Classic_commodity_outflow_0,1,2,0,1 >= 0
 R2562: Classic_commodity_outflow_0,1,2,0,2 >= 0
 R2563: Classic_commodity_outflow_0,1,2,0,3 >= 0
 R2564: Classic_commodity_outflow_0,1,2,0,4 >= 0
 R2565: Classic_commodity_inflow_0,1,2,0,0 >= 0
 R2566: Classic_commodity_inflow_0,1,2,0,1 >= 0
 R2567: Classic_commodity_inflow_0,1,2,0,2 >= 0
 R2568: Classic_commodity_inflow_0,1,2,0,3 >= 0
 R2569: Classic_commodity_inflow_0,1,2,0,4 >= 0
 R2570: sc_commodity_outflow_0,1,2,0 >= 0
 R2571: sc_commodity_inflow_0,1,2,0 >= 0
 R2572: Classic_commodity_outflow_0,1,2,1,0 >= 0
 R2573: Classic_commodity_outflow_0,1,2,1,1 >= 0
 R2574: Classic_commodity_outflow_0,1,2,1,2 >= 0
 R2575: Classic_commodity_outflow_0,1,2,1,3 >= 0
 R2576: Classic_commodity_outflow_0,1,2,1,4 >= 0
 R2577: Classic_commodity_inflow_0,1,2,1,0 >= 0
 R2578: Classic_commodity_inflow_0,1,2,1,1 >= 0
 R2579: Classic_commodity_inflow_0,1,2,1,2 >= 0
 R2580: Classic_commodity_inflow_0,1,2,1,3 >= 0
 R2581: Classic_commodity_inflow_0,1,2,1,4 >= 0
 R2582: sc_commodity_outflow_0,1,2,1 >= 0
 R2583: sc_commodity_inflow_0,1,2,1 >= 0
 R2584: Classic_commodity_outflow_0,1,2,2,0 >= 0
 R2585: Classic_commodity_outflow_0,1,2,2,1 >= 0
 R2586: Classic_commodity_outflow_0,1,2,2,2 >= 0
 R2587: Classic_commodity_outflow_0,1,2,2,3 >= 0
 R2588: Classic_commodity_outflow_0,1,2,2,4 >= 0
 R2589: Classic_commodity_inflow_0,1,2,2,0 >= 0
 R2590: Classic_commodity_inflow_0,1,2,2,1 >= 0
 R2591: Classic_commodity_inflow_0,1,2,2,2 >= 0
 R2592: Classic_commodity_inflow_0,1,2,2,3 >= 0
 R2593: Classic_commodity_inflow_0,1,2,2,4 >= 0
 R2594: sc_commodity_outflow_0,1,2,2 >= 0
 R2595: sc_commodity_inflow_0,1,2,2 >= 0
 R2596: Classic_commodity_outflow_0,1,2,3,0 >= 0
 R2597: Classic_commodity_outflow_0,1,2,3,1 >= 0
 R2598: Classic_commodity_outflow_0,1,2,3,2 >= 0
 R2599: Classic_commodity_outflow_0,1,2,3,3 >= 0
 R2600: Classic_commodity_outflow_0,1,2,3,4 >= 0
 R2601: Classic_commodity_inflow_0,1,2,3,0 >= 0
 R2602: Classic_commodity_inflow_0,1,2,3,1 >= 0
 R2603: Classic_commodity_inflow_0,1,2,3,2 >= 0
 R2604: Classic_commodity_inflow_0,1,2,3,3 >= 0
 R2605: Classic_commodity_inflow_0,1,2,3,4 >= 0
 R2606: sc_commodity_outflow_0,1,2,3 >= 0
 R2607: sc_commodity_inflow_0,1,2,3 >= 0
 R2608: Classic_commodity_outflow_0,1,2,4,0 >= 0
 R2609: Classic_commodity_outflow_0,1,2,4,1 >= 0
 R2610: Classic_commodity_outflow_0,1,2,4,2 >= 0
 R2611: Classic_commodity_outflow_0,1,2,4,3 >= 0
 R2612: Classic_commodity_outflow_0,1,2,4,4 >= 0
 R2613: Classic_commodity_inflow_0,1,2,4,0 >= 0
 R2614: Classic_commodity_inflow_0,1,2,4,1 >= 0
 R2615: Classic_commodity_inflow_0,1,2,4,2 >= 0
 R2616: Classic_commodity_inflow_0,1,2,4,3 >= 0
 R2617: Classic_commodity_inflow_0,1,2,4,4 >= 0
 R2618: sc_commodity_outflow_0,1,2,4 >= 0
 R2619: sc_commodity_inflow_0,1,2,4 >= 0
 R2620: Classic_commodity_outflow_0,1,2,5,0 >= 0
 R2621: Classic_commodity_outflow_0,1,2,5,1 >= 0
 R2622: Classic_commodity_outflow_0,1,2,5,2 >= 0
 R2623: Classic_commodity_outflow_0,1,2,5,3 >= 0
 R2624: Classic_commodity_outflow_0,1,2,5,4 >= 0
 R2625: Classic_commodity_inflow_0,1,2,5,0 >= 0
 R2626: Classic_commodity_inflow_0,1,2,5,1 >= 0
 R2627: Classic_commodity_inflow_0,1,2,5,2 >= 0
 R2628: Classic_commodity_inflow_0,1,2,5,3 >= 0
 R2629: Classic_commodity_inflow_0,1,2,5,4 >= 0
 R2630: sc_commodity_outflow_0,1,2,5 >= 0
 R2631: sc_commodity_inflow_0,1,2,5 >= 0
 R2632: Classic_commodity_outflow_0,1,2,6,0 >= 0
 R2633: Classic_commodity_outflow_0,1,2,6,1 >= 0
 R2634: Classic_commodity_outflow_0,1,2,6,2 >= 0
 R2635: Classic_commodity_outflow_0,1,2,6,3 >= 0
 R2636: Classic_commodity_outflow_0,1,2,6,4 >= 0
 R2637: Classic_commodity_inflow_0,1,2,6,0 >= 0
 R2638: Classic_commodity_inflow_0,1,2,6,1 >= 0
 R2639: Classic_commodity_inflow_0,1,2,6,2 >= 0
 R2640: Classic_commodity_inflow_0,1,2,6,3 >= 0
 R2641: Classic_commodity_inflow_0,1,2,6,4 >= 0
 R2642: sc_commodity_outflow_0,1,2,6 >= 0
 R2643: sc_commodity_inflow_0,1,2,6 >= 0
 R2644: Classic_commodity_outflow_0,1,2,7,0 >= 0
 R2645: Classic_commodity_outflow_0,1,2,7,1 >= 0
 R2646: Classic_commodity_outflow_0,1,2,7,2 >= 0
 R2647: Classic_commodity_outflow_0,1,2,7,3 >= 0
 R2648: Classic_commodity_outflow_0,1,2,7,4 >= 0
 R2649: Classic_commodity_inflow_0,1,2,7,0 >= 0
 R2650: Classic_commodity_inflow_0,1,2,7,1 >= 0
 R2651: Classic_commodity_inflow_0,1,2,7,2 >= 0
 R2652: Classic_commodity_inflow_0,1,2,7,3 >= 0
 R2653: Classic_commodity_inflow_0,1,2,7,4 >= 0
 R2654: sc_commodity_outflow_0,1,2,7 >= 0
 R2655: sc_commodity_inflow_0,1,2,7 >= 0
 R2656: Classic_commodity_outflow_0,1,2,8,0 >= 0
 R2657: Classic_commodity_outflow_0,1,2,8,1 >= 0
 R2658: Classic_commodity_outflow_0,1,2,8,2 >= 0
 R2659: Classic_commodity_outflow_0,1,2,8,3 >= 0
 R2660: Classic_commodity_outflow_0,1,2,8,4 >= 0
 R2661: Classic_commodity_inflow_0,1,2,8,0 >= 0
 R2662: Classic_commodity_inflow_0,1,2,8,1 >= 0
 R2663: Classic_commodity_inflow_0,1,2,8,2 >= 0
 R2664: Classic_commodity_inflow_0,1,2,8,3 >= 0
 R2665: Classic_commodity_inflow_0,1,2,8,4 >= 0
 R2666: sc_commodity_outflow_0,1,2,8 >= 0
 R2667: sc_commodity_inflow_0,1,2,8 >= 0
 R2668: Classic_commodity_outflow_0,2,1,0,0 >= 0
 R2669: Classic_commodity_outflow_0,2,1,0,1 >= 0
 R2670: Classic_commodity_outflow_0,2,1,0,2 >= 0
 R2671: Classic_commodity_outflow_0,2,1,0,3 >= 0
 R2672: Classic_commodity_outflow_0,2,1,0,4 >= 0
 R2673: Classic_commodity_inflow_0,2,1,0,0 >= 0
 R2674: Classic_commodity_inflow_0,2,1,0,1 >= 0
 R2675: Classic_commodity_inflow_0,2,1,0,2 >= 0
 R2676: Classic_commodity_inflow_0,2,1,0,3 >= 0
 R2677: Classic_commodity_inflow_0,2,1,0,4 >= 0
 R2678: sc_commodity_outflow_0,2,1,0 >= 0
 R2679: sc_commodity_inflow_0,2,1,0 >= 0
 R2680: Classic_commodity_outflow_0,2,1,1,0 >= 0
 R2681: Classic_commodity_outflow_0,2,1,1,1 >= 0
 R2682: Classic_commodity_outflow_0,2,1,1,2 >= 0
 R2683: Classic_commodity_outflow_0,2,1,1,3 >= 0
 R2684: Classic_commodity_outflow_0,2,1,1,4 >= 0
 R2685: Classic_commodity_inflow_0,2,1,1,0 >= 0
 R2686: Classic_commodity_inflow_0,2,1,1,1 >= 0
 R2687: Classic_commodity_inflow_0,2,1,1,2 >= 0
 R2688: Classic_commodity_inflow_0,2,1,1,3 >= 0
 R2689: Classic_commodity_inflow_0,2,1,1,4 >= 0
 R2690: sc_commodity_outflow_0,2,1,1 >= 0
 R2691: sc_commodity_inflow_0,2,1,1 >= 0
 R2692: Classic_commodity_outflow_0,2,1,2,0 >= 0
 R2693: Classic_commodity_outflow_0,2,1,2,1 >= 0
 R2694: Classic_commodity_outflow_0,2,1,2,2 >= 0
 R2695: Classic_commodity_outflow_0,2,1,2,3 >= 0
 R2696: Classic_commodity_outflow_0,2,1,2,4 >= 0
 R2697: Classic_commodity_inflow_0,2,1,2,0 >= 0
 R2698: Classic_commodity_inflow_0,2,1,2,1 >= 0
 R2699: Classic_commodity_inflow_0,2,1,2,2 >= 0
 R2700: Classic_commodity_inflow_0,2,1,2,3 >= 0
 R2701: Classic_commodity_inflow_0,2,1,2,4 >= 0
 R2702: sc_commodity_outflow_0,2,1,2 >= 0
 R2703: sc_commodity_inflow_0,2,1,2 >= 0
 R2704: Classic_commodity_outflow_0,2,1,3,0 >= 0
 R2705: Classic_commodity_outflow_0,2,1,3,1 >= 0
 R2706: Classic_commodity_outflow_0,2,1,3,2 >= 0
 R2707: Classic_commodity_outflow_0,2,1,3,3 >= 0
 R2708: Classic_commodity_outflow_0,2,1,3,4 >= 0
 R2709: Classic_commodity_inflow_0,2,1,3,0 >= 0
 R2710: Classic_commodity_inflow_0,2,1,3,1 >= 0
 R2711: Classic_commodity_inflow_0,2,1,3,2 >= 0
 R2712: Classic_commodity_inflow_0,2,1,3,3 >= 0
 R2713: Classic_commodity_inflow_0,2,1,3,4 >= 0
 R2714: sc_commodity_outflow_0,2,1,3 >= 0
 R2715: sc_commodity_inflow_0,2,1,3 >= 0
 R2716: Classic_commodity_outflow_0,2,1,4,0 >= 0
 R2717: Classic_commodity_outflow_0,2,1,4,1 >= 0
 R2718: Classic_commodity_outflow_0,2,1,4,2 >= 0
 R2719: Classic_commodity_outflow_0,2,1,4,3 >= 0
 R2720: Classic_commodity_outflow_0,2,1,4,4 >= 0
 R2721: Classic_commodity_inflow_0,2,1,4,0 >= 0
 R2722: Classic_commodity_inflow_0,2,1,4,1 >= 0
 R2723: Classic_commodity_inflow_0,2,1,4,2 >= 0
 R2724: Classic_commodity_inflow_0,2,1,4,3 >= 0
 R2725: Classic_commodity_inflow_0,2,1,4,4 >= 0
 R2726: sc_commodity_outflow_0,2,1,4 >= 0
 R2727: sc_commodity_inflow_0,2,1,4 >= 0
 R2728: Classic_commodity_outflow_0,2,1,5,0 >= 0
 R2729: Classic_commodity_outflow_0,2,1,5,1 >= 0
 R2730: Classic_commodity_outflow_0,2,1,5,2 >= 0
 R2731: Classic_commodity_outflow_0,2,1,5,3 >= 0
 R2732: Classic_commodity_outflow_0,2,1,5,4 >= 0
 R2733: Classic_commodity_inflow_0,2,1,5,0 >= 0
 R2734: Classic_commodity_inflow_0,2,1,5,1 >= 0
 R2735: Classic_commodity_inflow_0,2,1,5,2 >= 0
 R2736: Classic_commodity_inflow_0,2,1,5,3 >= 0
 R2737: Classic_commodity_inflow_0,2,1,5,4 >= 0
 R2738: sc_commodity_outflow_0,2,1,5 >= 0
 R2739: sc_commodity_inflow_0,2,1,5 >= 0
 R2740: Classic_commodity_outflow_0,2,1,6,0 >= 0
 R2741: Classic_commodity_outflow_0,2,1,6,1 >= 0
 R2742: Classic_commodity_outflow_0,2,1,6,2 >= 0
 R2743: Classic_commodity_outflow_0,2,1,6,3 >= 0
 R2744: Classic_commodity_outflow_0,2,1,6,4 >= 0
 R2745: Classic_commodity_inflow_0,2,1,6,0 >= 0
 R2746: Classic_commodity_inflow_0,2,1,6,1 >= 0
 R2747: Classic_commodity_inflow_0,2,1,6,2 >= 0
 R2748: Classic_commodity_inflow_0,2,1,6,3 >= 0
 R2749: Classic_commodity_inflow_0,2,1,6,4 >= 0
 R2750: sc_commodity_outflow_0,2,1,6 >= 0
 R2751: sc_commodity_inflow_0,2,1,6 >= 0
 R2752: Classic_commodity_outflow_0,2,1,7,0 >= 0
 R2753: Classic_commodity_outflow_0,2,1,7,1 >= 0
 R2754: Classic_commodity_outflow_0,2,1,7,2 >= 0
 R2755: Classic_commodity_outflow_0,2,1,7,3 >= 0
 R2756: Classic_commodity_outflow_0,2,1,7,4 >= 0
 R2757: Classic_commodity_inflow_0,2,1,7,0 >= 0
 R2758: Classic_commodity_inflow_0,2,1,7,1 >= 0
 R2759: Classic_commodity_inflow_0,2,1,7,2 >= 0
 R2760: Classic_commodity_inflow_0,2,1,7,3 >= 0
 R2761: Classic_commodity_inflow_0,2,1,7,4 >= 0
 R2762: sc_commodity_outflow_0,2,1,7 >= 0
 R2763: sc_commodity_inflow_0,2,1,7 >= 0
 R2764: Classic_commodity_outflow_0,2,1,8,0 >= 0
 R2765: Classic_commodity_outflow_0,2,1,8,1 >= 0
 R2766: Classic_commodity_outflow_0,2,1,8,2 >= 0
 R2767: Classic_commodity_outflow_0,2,1,8,3 >= 0
 R2768: Classic_commodity_outflow_0,2,1,8,4 >= 0
 R2769: Classic_commodity_inflow_0,2,1,8,0 >= 0
 R2770: Classic_commodity_inflow_0,2,1,8,1 >= 0
 R2771: Classic_commodity_inflow_0,2,1,8,2 >= 0
 R2772: Classic_commodity_inflow_0,2,1,8,3 >= 0
 R2773: Classic_commodity_inflow_0,2,1,8,4 >= 0
 R2774: sc_commodity_outflow_0,2,1,8 >= 0
 R2775: sc_commodity_inflow_0,2,1,8 >= 0
 R2776: Classic_commodity_outflow_0,2,2,0,0 >= 0
 R2777: Classic_commodity_outflow_0,2,2,0,1 >= 0
 R2778: Classic_commodity_outflow_0,2,2,0,2 >= 0
 R2779: Classic_commodity_outflow_0,2,2,0,3 >= 0
 R2780: Classic_commodity_outflow_0,2,2,0,4 >= 0
 R2781: Classic_commodity_inflow_0,2,2,0,0 >= 0
 R2782: Classic_commodity_inflow_0,2,2,0,1 >= 0
 R2783: Classic_commodity_inflow_0,2,2,0,2 >= 0
 R2784: Classic_commodity_inflow_0,2,2,0,3 >= 0
 R2785: Classic_commodity_inflow_0,2,2,0,4 >= 0
 R2786: sc_commodity_outflow_0,2,2,0 >= 0
 R2787: sc_commodity_inflow_0,2,2,0 >= 0
 R2788: Classic_commodity_outflow_0,2,2,1,0 >= 0
 R2789: Classic_commodity_outflow_0,2,2,1,1 >= 0
 R2790: Classic_commodity_outflow_0,2,2,1,2 >= 0
 R2791: Classic_commodity_outflow_0,2,2,1,3 >= 0
 R2792: Classic_commodity_outflow_0,2,2,1,4 >= 0
 R2793: Classic_commodity_inflow_0,2,2,1,0 >= 0
 R2794: Classic_commodity_inflow_0,2,2,1,1 >= 0
 R2795: Classic_commodity_inflow_0,2,2,1,2 >= 0
 R2796: Classic_commodity_inflow_0,2,2,1,3 >= 0
 R2797: Classic_commodity_inflow_0,2,2,1,4 >= 0
 R2798: sc_commodity_outflow_0,2,2,1 >= 0
 R2799: sc_commodity_inflow_0,2,2,1 >= 0
 R2800: Classic_commodity_outflow_0,2,2,2,0 >= 0
 R2801: Classic_commodity_outflow_0,2,2,2,1 >= 0
 R2802: Classic_commodity_outflow_0,2,2,2,2 >= 0
 R2803: Classic_commodity_outflow_0,2,2,2,3 >= 0
 R2804: Classic_commodity_outflow_0,2,2,2,4 >= 0
 R2805: Classic_commodity_inflow_0,2,2,2,0 >= 0
 R2806: Classic_commodity_inflow_0,2,2,2,1 >= 0
 R2807: Classic_commodity_inflow_0,2,2,2,2 >= 0
 R2808: Classic_commodity_inflow_0,2,2,2,3 >= 0
 R2809: Classic_commodity_inflow_0,2,2,2,4 >= 0
 R2810: sc_commodity_outflow_0,2,2,2 >= 0
 R2811: sc_commodity_inflow_0,2,2,2 >= 0
 R2812: Classic_commodity_outflow_0,2,2,3,0 >= 0
 R2813: Classic_commodity_outflow_0,2,2,3,1 >= 0
 R2814: Classic_commodity_outflow_0,2,2,3,2 >= 0
 R2815: Classic_commodity_outflow_0,2,2,3,3 >= 0
 R2816: Classic_commodity_outflow_0,2,2,3,4 >= 0
 R2817: Classic_commodity_inflow_0,2,2,3,0 >= 0
 R2818: Classic_commodity_inflow_0,2,2,3,1 >= 0
 R2819: Classic_commodity_inflow_0,2,2,3,2 >= 0
 R2820: Classic_commodity_inflow_0,2,2,3,3 >= 0
 R2821: Classic_commodity_inflow_0,2,2,3,4 >= 0
 R2822: sc_commodity_outflow_0,2,2,3 >= 0
 R2823: sc_commodity_inflow_0,2,2,3 >= 0
 R2824: Classic_commodity_outflow_0,2,2,4,0 >= 0
 R2825: Classic_commodity_outflow_0,2,2,4,1 >= 0
 R2826: Classic_commodity_outflow_0,2,2,4,2 >= 0
 R2827: Classic_commodity_outflow_0,2,2,4,3 >= 0
 R2828: Classic_commodity_outflow_0,2,2,4,4 >= 0
 R2829: Classic_commodity_inflow_0,2,2,4,0 >= 0
 R2830: Classic_commodity_inflow_0,2,2,4,1 >= 0
 R2831: Classic_commodity_inflow_0,2,2,4,2 >= 0
 R2832: Classic_commodity_inflow_0,2,2,4,3 >= 0
 R2833: Classic_commodity_inflow_0,2,2,4,4 >= 0
 R2834: sc_commodity_outflow_0,2,2,4 >= 0
 R2835: sc_commodity_inflow_0,2,2,4 >= 0
 R2836: Classic_commodity_outflow_0,2,2,5,0 >= 0
 R2837: Classic_commodity_outflow_0,2,2,5,1 >= 0
 R2838: Classic_commodity_outflow_0,2,2,5,2 >= 0
 R2839: Classic_commodity_outflow_0,2,2,5,3 >= 0
 R2840: Classic_commodity_outflow_0,2,2,5,4 >= 0
 R2841: Classic_commodity_inflow_0,2,2,5,0 >= 0
 R2842: Classic_commodity_inflow_0,2,2,5,1 >= 0
 R2843: Classic_commodity_inflow_0,2,2,5,2 >= 0
 R2844: Classic_commodity_inflow_0,2,2,5,3 >= 0
 R2845: Classic_commodity_inflow_0,2,2,5,4 >= 0
 R2846: sc_commodity_outflow_0,2,2,5 >= 0
 R2847: sc_commodity_inflow_0,2,2,5 >= 0
 R2848: Classic_commodity_outflow_0,2,2,6,0 >= 0
 R2849: Classic_commodity_outflow_0,2,2,6,1 >= 0
 R2850: Classic_commodity_outflow_0,2,2,6,2 >= 0
 R2851: Classic_commodity_outflow_0,2,2,6,3 >= 0
 R2852: Classic_commodity_outflow_0,2,2,6,4 >= 0
 R2853: Classic_commodity_inflow_0,2,2,6,0 >= 0
 R2854: Classic_commodity_inflow_0,2,2,6,1 >= 0
 R2855: Classic_commodity_inflow_0,2,2,6,2 >= 0
 R2856: Classic_commodity_inflow_0,2,2,6,3 >= 0
 R2857: Classic_commodity_inflow_0,2,2,6,4 >= 0
 R2858: sc_commodity_outflow_0,2,2,6 >= 0
 R2859: sc_commodity_inflow_0,2,2,6 >= 0
 R2860: Classic_commodity_outflow_0,2,2,7,0 >= 0
 R2861: Classic_commodity_outflow_0,2,2,7,1 >= 0
 R2862: Classic_commodity_outflow_0,2,2,7,2 >= 0
 R2863: Classic_commodity_outflow_0,2,2,7,3 >= 0
 R2864: Classic_commodity_outflow_0,2,2,7,4 >= 0
 R2865: Classic_commodity_inflow_0,2,2,7,0 >= 0
 R2866: Classic_commodity_inflow_0,2,2,7,1 >= 0
 R2867: Classic_commodity_inflow_0,2,2,7,2 >= 0
 R2868: Classic_commodity_inflow_0,2,2,7,3 >= 0
 R2869: Classic_commodity_inflow_0,2,2,7,4 >= 0
 R2870: sc_commodity_outflow_0,2,2,7 >= 0
 R2871: sc_commodity_inflow_0,2,2,7 >= 0
 R2872: Classic_commodity_outflow_0,2,2,8,0 >= 0
 R2873: Classic_commodity_outflow_0,2,2,8,1 >= 0
 R2874: Classic_commodity_outflow_0,2,2,8,2 >= 0
 R2875: Classic_commodity_outflow_0,2,2,8,3 >= 0
 R2876: Classic_commodity_outflow_0,2,2,8,4 >= 0
 R2877: Classic_commodity_inflow_0,2,2,8,0 >= 0
 R2878: Classic_commodity_inflow_0,2,2,8,1 >= 0
 R2879: Classic_commodity_inflow_0,2,2,8,2 >= 0
 R2880: Classic_commodity_inflow_0,2,2,8,3 >= 0
 R2881: Classic_commodity_inflow_0,2,2,8,4 >= 0
 R2882: sc_commodity_outflow_0,2,2,8 >= 0
 R2883: sc_commodity_inflow_0,2,2,8 >= 0
 R2884: Classic_commodity_outflow_0,2,2,9,0 >= 0
 R2885: Classic_commodity_outflow_0,2,2,9,1 >= 0
 R2886: Classic_commodity_outflow_0,2,2,9,2 >= 0
 R2887: Classic_commodity_outflow_0,2,2,9,3 >= 0
 R2888: Classic_commodity_outflow_0,2,2,9,4 >= 0
 R2889: Classic_commodity_inflow_0,2,2,9,0 >= 0
 R2890: Classic_commodity_inflow_0,2,2,9,1 >= 0
 R2891: Classic_commodity_inflow_0,2,2,9,2 >= 0
 R2892: Classic_commodity_inflow_0,2,2,9,3 >= 0
 R2893: Classic_commodity_inflow_0,2,2,9,4 >= 0
 R2894: sc_commodity_outflow_0,2,2,9 >= 0
 R2895: sc_commodity_inflow_0,2,2,9 >= 0
 R2896: Classic_commodity_outflow_0,2,2,10,0 >= 0
 R2897: Classic_commodity_outflow_0,2,2,10,1 >= 0
 R2898: Classic_commodity_outflow_0,2,2,10,2 >= 0
 R2899: Classic_commodity_outflow_0,2,2,10,3 >= 0
 R2900: Classic_commodity_outflow_0,2,2,10,4 >= 0
 R2901: Classic_commodity_inflow_0,2,2,10,0 >= 0
 R2902: Classic_commodity_inflow_0,2,2,10,1 >= 0
 R2903: Classic_commodity_inflow_0,2,2,10,2 >= 0
 R2904: Classic_commodity_inflow_0,2,2,10,3 >= 0
 R2905: Classic_commodity_inflow_0,2,2,10,4 >= 0
 R2906: sc_commodity_outflow_0,2,2,10 >= 0
 R2907: sc_commodity_inflow_0,2,2,10 >= 0
 R2908: Classic_commodity_outflow_0,2,3,0,0 >= 0
 R2909: Classic_commodity_outflow_0,2,3,0,1 >= 0
 R2910: Classic_commodity_outflow_0,2,3,0,2 >= 0
 R2911: Classic_commodity_outflow_0,2,3,0,3 >= 0
 R2912: Classic_commodity_outflow_0,2,3,0,4 >= 0
 R2913: Classic_commodity_inflow_0,2,3,0,0 >= 0
 R2914: Classic_commodity_inflow_0,2,3,0,1 >= 0
 R2915: Classic_commodity_inflow_0,2,3,0,2 >= 0
 R2916: Classic_commodity_inflow_0,2,3,0,3 >= 0
 R2917: Classic_commodity_inflow_0,2,3,0,4 >= 0
 R2918: sc_commodity_outflow_0,2,3,0 >= 0
 R2919: sc_commodity_inflow_0,2,3,0 >= 0
 R2920: Classic_commodity_outflow_0,2,3,1,0 >= 0
 R2921: Classic_commodity_outflow_0,2,3,1,1 >= 0
 R2922: Classic_commodity_outflow_0,2,3,1,2 >= 0
 R2923: Classic_commodity_outflow_0,2,3,1,3 >= 0
 R2924: Classic_commodity_outflow_0,2,3,1,4 >= 0
 R2925: Classic_commodity_inflow_0,2,3,1,0 >= 0
 R2926: Classic_commodity_inflow_0,2,3,1,1 >= 0
 R2927: Classic_commodity_inflow_0,2,3,1,2 >= 0
 R2928: Classic_commodity_inflow_0,2,3,1,3 >= 0
 R2929: Classic_commodity_inflow_0,2,3,1,4 >= 0
 R2930: sc_commodity_outflow_0,2,3,1 >= 0
 R2931: sc_commodity_inflow_0,2,3,1 >= 0
 R2932: Classic_commodity_outflow_0,2,3,2,0 >= 0
 R2933: Classic_commodity_outflow_0,2,3,2,1 >= 0
 R2934: Classic_commodity_outflow_0,2,3,2,2 >= 0
 R2935: Classic_commodity_outflow_0,2,3,2,3 >= 0
 R2936: Classic_commodity_outflow_0,2,3,2,4 >= 0
 R2937: Classic_commodity_inflow_0,2,3,2,0 >= 0
 R2938: Classic_commodity_inflow_0,2,3,2,1 >= 0
 R2939: Classic_commodity_inflow_0,2,3,2,2 >= 0
 R2940: Classic_commodity_inflow_0,2,3,2,3 >= 0
 R2941: Classic_commodity_inflow_0,2,3,2,4 >= 0
 R2942: sc_commodity_outflow_0,2,3,2 >= 0
 R2943: sc_commodity_inflow_0,2,3,2 >= 0
 R2944: Classic_commodity_outflow_0,2,3,3,0 >= 0
 R2945: Classic_commodity_outflow_0,2,3,3,1 >= 0
 R2946: Classic_commodity_outflow_0,2,3,3,2 >= 0
 R2947: Classic_commodity_outflow_0,2,3,3,3 >= 0
 R2948: Classic_commodity_outflow_0,2,3,3,4 >= 0
 R2949: Classic_commodity_inflow_0,2,3,3,0 >= 0
 R2950: Classic_commodity_inflow_0,2,3,3,1 >= 0
 R2951: Classic_commodity_inflow_0,2,3,3,2 >= 0
 R2952: Classic_commodity_inflow_0,2,3,3,3 >= 0
 R2953: Classic_commodity_inflow_0,2,3,3,4 >= 0
 R2954: sc_commodity_outflow_0,2,3,3 >= 0
 R2955: sc_commodity_inflow_0,2,3,3 >= 0
 R2956: Classic_commodity_outflow_0,2,3,4,0 >= 0
 R2957: Classic_commodity_outflow_0,2,3,4,1 >= 0
 R2958: Classic_commodity_outflow_0,2,3,4,2 >= 0
 R2959: Classic_commodity_outflow_0,2,3,4,3 >= 0
 R2960: Classic_commodity_outflow_0,2,3,4,4 >= 0
 R2961: Classic_commodity_inflow_0,2,3,4,0 >= 0
 R2962: Classic_commodity_inflow_0,2,3,4,1 >= 0
 R2963: Classic_commodity_inflow_0,2,3,4,2 >= 0
 R2964: Classic_commodity_inflow_0,2,3,4,3 >= 0
 R2965: Classic_commodity_inflow_0,2,3,4,4 >= 0
 R2966: sc_commodity_outflow_0,2,3,4 >= 0
 R2967: sc_commodity_inflow_0,2,3,4 >= 0
 R2968: Classic_commodity_outflow_0,2,3,5,0 >= 0
 R2969: Classic_commodity_outflow_0,2,3,5,1 >= 0
 R2970: Classic_commodity_outflow_0,2,3,5,2 >= 0
 R2971: Classic_commodity_outflow_0,2,3,5,3 >= 0
 R2972: Classic_commodity_outflow_0,2,3,5,4 >= 0
 R2973: Classic_commodity_inflow_0,2,3,5,0 >= 0
 R2974: Classic_commodity_inflow_0,2,3,5,1 >= 0
 R2975: Classic_commodity_inflow_0,2,3,5,2 >= 0
 R2976: Classic_commodity_inflow_0,2,3,5,3 >= 0
 R2977: Classic_commodity_inflow_0,2,3,5,4 >= 0
 R2978: sc_commodity_outflow_0,2,3,5 >= 0
 R2979: sc_commodity_inflow_0,2,3,5 >= 0
 R2980: Classic_commodity_outflow_0,2,3,6,0 >= 0
 R2981: Classic_commodity_outflow_0,2,3,6,1 >= 0
 R2982: Classic_commodity_outflow_0,2,3,6,2 >= 0
 R2983: Classic_commodity_outflow_0,2,3,6,3 >= 0
 R2984: Classic_commodity_outflow_0,2,3,6,4 >= 0
 R2985: Classic_commodity_inflow_0,2,3,6,0 >= 0
 R2986: Classic_commodity_inflow_0,2,3,6,1 >= 0
 R2987: Classic_commodity_inflow_0,2,3,6,2 >= 0
 R2988: Classic_commodity_inflow_0,2,3,6,3 >= 0
 R2989: Classic_commodity_inflow_0,2,3,6,4 >= 0
 R2990: sc_commodity_outflow_0,2,3,6 >= 0
 R2991: sc_commodity_inflow_0,2,3,6 >= 0
 R2992: Classic_commodity_outflow_0,2,3,7,0 >= 0
 R2993: Classic_commodity_outflow_0,2,3,7,1 >= 0
 R2994: Classic_commodity_outflow_0,2,3,7,2 >= 0
 R2995: Classic_commodity_outflow_0,2,3,7,3 >= 0
 R2996: Classic_commodity_outflow_0,2,3,7,4 >= 0
 R2997: Classic_commodity_inflow_0,2,3,7,0 >= 0
 R2998: Classic_commodity_inflow_0,2,3,7,1 >= 0
 R2999: Classic_commodity_inflow_0,2,3,7,2 >= 0
 R3000: Classic_commodity_inflow_0,2,3,7,3 >= 0
 R3001: Classic_commodity_inflow_0,2,3,7,4 >= 0
 R3002: sc_commodity_outflow_0,2,3,7 >= 0
 R3003: sc_commodity_inflow_0,2,3,7 >= 0
 R3004: Classic_commodity_outflow_0,2,3,8,0 >= 0
 R3005: Classic_commodity_outflow_0,2,3,8,1 >= 0
 R3006: Classic_commodity_outflow_0,2,3,8,2 >= 0
 R3007: Classic_commodity_outflow_0,2,3,8,3 >= 0
 R3008: Classic_commodity_outflow_0,2,3,8,4 >= 0
 R3009: Classic_commodity_inflow_0,2,3,8,0 >= 0
 R3010: Classic_commodity_inflow_0,2,3,8,1 >= 0
 R3011: Classic_commodity_inflow_0,2,3,8,2 >= 0
 R3012: Classic_commodity_inflow_0,2,3,8,3 >= 0
 R3013: Classic_commodity_inflow_0,2,3,8,4 >= 0
 R3014: sc_commodity_outflow_0,2,3,8 >= 0
 R3015: sc_commodity_inflow_0,2,3,8 >= 0
 R3016: Classic_commodity_outflow_0,2,3,9,0 >= 0
 R3017: Classic_commodity_outflow_0,2,3,9,1 >= 0
 R3018: Classic_commodity_outflow_0,2,3,9,2 >= 0
 R3019: Classic_commodity_outflow_0,2,3,9,3 >= 0
 R3020: Classic_commodity_outflow_0,2,3,9,4 >= 0
 R3021: Classic_commodity_inflow_0,2,3,9,0 >= 0
 R3022: Classic_commodity_inflow_0,2,3,9,1 >= 0
 R3023: Classic_commodity_inflow_0,2,3,9,2 >= 0
 R3024: Classic_commodity_inflow_0,2,3,9,3 >= 0
 R3025: Classic_commodity_inflow_0,2,3,9,4 >= 0
 R3026: sc_commodity_outflow_0,2,3,9 >= 0
 R3027: sc_commodity_inflow_0,2,3,9 >= 0
 R3028: Classic_commodity_outflow_0,2,3,10,0 >= 0
 R3029: Classic_commodity_outflow_0,2,3,10,1 >= 0
 R3030: Classic_commodity_outflow_0,2,3,10,2 >= 0
 R3031: Classic_commodity_outflow_0,2,3,10,3 >= 0
 R3032: Classic_commodity_outflow_0,2,3,10,4 >= 0
 R3033: Classic_commodity_inflow_0,2,3,10,0 >= 0
 R3034: Classic_commodity_inflow_0,2,3,10,1 >= 0
 R3035: Classic_commodity_inflow_0,2,3,10,2 >= 0
 R3036: Classic_commodity_inflow_0,2,3,10,3 >= 0
 R3037: Classic_commodity_inflow_0,2,3,10,4 >= 0
 R3038: sc_commodity_outflow_0,2,3,10 >= 0
 R3039: sc_commodity_inflow_0,2,3,10 >= 0
 R3040: Classic_commodity_outflow_0,3,2,0,0 >= 0
 R3041: Classic_commodity_outflow_0,3,2,0,1 >= 0
 R3042: Classic_commodity_outflow_0,3,2,0,2 >= 0
 R3043: Classic_commodity_outflow_0,3,2,0,3 >= 0
 R3044: Classic_commodity_outflow_0,3,2,0,4 >= 0
 R3045: Classic_commodity_inflow_0,3,2,0,0 >= 0
 R3046: Classic_commodity_inflow_0,3,2,0,1 >= 0
 R3047: Classic_commodity_inflow_0,3,2,0,2 >= 0
 R3048: Classic_commodity_inflow_0,3,2,0,3 >= 0
 R3049: Classic_commodity_inflow_0,3,2,0,4 >= 0
 R3050: sc_commodity_outflow_0,3,2,0 >= 0
 R3051: sc_commodity_inflow_0,3,2,0 >= 0
 R3052: Classic_commodity_outflow_0,3,2,1,0 >= 0
 R3053: Classic_commodity_outflow_0,3,2,1,1 >= 0
 R3054: Classic_commodity_outflow_0,3,2,1,2 >= 0
 R3055: Classic_commodity_outflow_0,3,2,1,3 >= 0
 R3056: Classic_commodity_outflow_0,3,2,1,4 >= 0
 R3057: Classic_commodity_inflow_0,3,2,1,0 >= 0
 R3058: Classic_commodity_inflow_0,3,2,1,1 >= 0
 R3059: Classic_commodity_inflow_0,3,2,1,2 >= 0
 R3060: Classic_commodity_inflow_0,3,2,1,3 >= 0
 R3061: Classic_commodity_inflow_0,3,2,1,4 >= 0
 R3062: sc_commodity_outflow_0,3,2,1 >= 0
 R3063: sc_commodity_inflow_0,3,2,1 >= 0
 R3064: Classic_commodity_outflow_0,3,2,2,0 >= 0
 R3065: Classic_commodity_outflow_0,3,2,2,1 >= 0
 R3066: Classic_commodity_outflow_0,3,2,2,2 >= 0
 R3067: Classic_commodity_outflow_0,3,2,2,3 >= 0
 R3068: Classic_commodity_outflow_0,3,2,2,4 >= 0
 R3069: Classic_commodity_inflow_0,3,2,2,0 >= 0
 R3070: Classic_commodity_inflow_0,3,2,2,1 >= 0
 R3071: Classic_commodity_inflow_0,3,2,2,2 >= 0
 R3072: Classic_commodity_inflow_0,3,2,2,3 >= 0
 R3073: Classic_commodity_inflow_0,3,2,2,4 >= 0
 R3074: sc_commodity_outflow_0,3,2,2 >= 0
 R3075: sc_commodity_inflow_0,3,2,2 >= 0
 R3076: Classic_commodity_outflow_0,3,2,3,0 >= 0
 R3077: Classic_commodity_outflow_0,3,2,3,1 >= 0
 R3078: Classic_commodity_outflow_0,3,2,3,2 >= 0
 R3079: Classic_commodity_outflow_0,3,2,3,3 >= 0
 R3080: Classic_commodity_outflow_0,3,2,3,4 >= 0
 R3081: Classic_commodity_inflow_0,3,2,3,0 >= 0
 R3082: Classic_commodity_inflow_0,3,2,3,1 >= 0
 R3083: Classic_commodity_inflow_0,3,2,3,2 >= 0
 R3084: Classic_commodity_inflow_0,3,2,3,3 >= 0
 R3085: Classic_commodity_inflow_0,3,2,3,4 >= 0
 R3086: sc_commodity_outflow_0,3,2,3 >= 0
 R3087: sc_commodity_inflow_0,3,2,3 >= 0
 R3088: Classic_commodity_outflow_0,3,2,4,0 >= 0
 R3089: Classic_commodity_outflow_0,3,2,4,1 >= 0
 R3090: Classic_commodity_outflow_0,3,2,4,2 >= 0
 R3091: Classic_commodity_outflow_0,3,2,4,3 >= 0
 R3092: Classic_commodity_outflow_0,3,2,4,4 >= 0
 R3093: Classic_commodity_inflow_0,3,2,4,0 >= 0
 R3094: Classic_commodity_inflow_0,3,2,4,1 >= 0
 R3095: Classic_commodity_inflow_0,3,2,4,2 >= 0
 R3096: Classic_commodity_inflow_0,3,2,4,3 >= 0
 R3097: Classic_commodity_inflow_0,3,2,4,4 >= 0
 R3098: sc_commodity_outflow_0,3,2,4 >= 0
 R3099: sc_commodity_inflow_0,3,2,4 >= 0
 R3100: Classic_commodity_outflow_0,3,2,5,0 >= 0
 R3101: Classic_commodity_outflow_0,3,2,5,1 >= 0
 R3102: Classic_commodity_outflow_0,3,2,5,2 >= 0
 R3103: Classic_commodity_outflow_0,3,2,5,3 >= 0
 R3104: Classic_commodity_outflow_0,3,2,5,4 >= 0
 R3105: Classic_commodity_inflow_0,3,2,5,0 >= 0
 R3106: Classic_commodity_inflow_0,3,2,5,1 >= 0
 R3107: Classic_commodity_inflow_0,3,2,5,2 >= 0
 R3108: Classic_commodity_inflow_0,3,2,5,3 >= 0
 R3109: Classic_commodity_inflow_0,3,2,5,4 >= 0
 R3110: sc_commodity_outflow_0,3,2,5 >= 0
 R3111: sc_commodity_inflow_0,3,2,5 >= 0
 R3112: Classic_commodity_outflow_0,3,2,6,0 >= 0
 R3113: Classic_commodity_outflow_0,3,2,6,1 >= 0
 R3114: Classic_commodity_outflow_0,3,2,6,2 >= 0
 R3115: Classic_commodity_outflow_0,3,2,6,3 >= 0
 R3116: Classic_commodity_outflow_0,3,2,6,4 >= 0
 R3117: Classic_commodity_inflow_0,3,2,6,0 >= 0
 R3118: Classic_commodity_inflow_0,3,2,6,1 >= 0
 R3119: Classic_commodity_inflow_0,3,2,6,2 >= 0
 R3120: Classic_commodity_inflow_0,3,2,6,3 >= 0
 R3121: Classic_commodity_inflow_0,3,2,6,4 >= 0
 R3122: sc_commodity_outflow_0,3,2,6 >= 0
 R3123: sc_commodity_inflow_0,3,2,6 >= 0
 R3124: Classic_commodity_outflow_0,3,2,7,0 >= 0
 R3125: Classic_commodity_outflow_0,3,2,7,1 >= 0
 R3126: Classic_commodity_outflow_0,3,2,7,2 >= 0
 R3127: Classic_commodity_outflow_0,3,2,7,3 >= 0
 R3128: Classic_commodity_outflow_0,3,2,7,4 >= 0
 R3129: Classic_commodity_inflow_0,3,2,7,0 >= 0
 R3130: Classic_commodity_inflow_0,3,2,7,1 >= 0
 R3131: Classic_commodity_inflow_0,3,2,7,2 >= 0
 R3132: Classic_commodity_inflow_0,3,2,7,3 >= 0
 R3133: Classic_commodity_inflow_0,3,2,7,4 >= 0
 R3134: sc_commodity_outflow_0,3,2,7 >= 0
 R3135: sc_commodity_inflow_0,3,2,7 >= 0
 R3136: Classic_commodity_outflow_0,3,2,8,0 >= 0
 R3137: Classic_commodity_outflow_0,3,2,8,1 >= 0
 R3138: Classic_commodity_outflow_0,3,2,8,2 >= 0
 R3139: Classic_commodity_outflow_0,3,2,8,3 >= 0
 R3140: Classic_commodity_outflow_0,3,2,8,4 >= 0
 R3141: Classic_commodity_inflow_0,3,2,8,0 >= 0
 R3142: Classic_commodity_inflow_0,3,2,8,1 >= 0
 R3143: Classic_commodity_inflow_0,3,2,8,2 >= 0
 R3144: Classic_commodity_inflow_0,3,2,8,3 >= 0
 R3145: Classic_commodity_inflow_0,3,2,8,4 >= 0
 R3146: sc_commodity_outflow_0,3,2,8 >= 0
 R3147: sc_commodity_inflow_0,3,2,8 >= 0
 R3148: Classic_commodity_outflow_0,3,2,9,0 >= 0
 R3149: Classic_commodity_outflow_0,3,2,9,1 >= 0
 R3150: Classic_commodity_outflow_0,3,2,9,2 >= 0
 R3151: Classic_commodity_outflow_0,3,2,9,3 >= 0
 R3152: Classic_commodity_outflow_0,3,2,9,4 >= 0
 R3153: Classic_commodity_inflow_0,3,2,9,0 >= 0
 R3154: Classic_commodity_inflow_0,3,2,9,1 >= 0
 R3155: Classic_commodity_inflow_0,3,2,9,2 >= 0
 R3156: Classic_commodity_inflow_0,3,2,9,3 >= 0
 R3157: Classic_commodity_inflow_0,3,2,9,4 >= 0
 R3158: sc_commodity_outflow_0,3,2,9 >= 0
 R3159: sc_commodity_inflow_0,3,2,9 >= 0
 R3160: Classic_commodity_outflow_0,3,2,10,0 >= 0
 R3161: Classic_commodity_outflow_0,3,2,10,1 >= 0
 R3162: Classic_commodity_outflow_0,3,2,10,2 >= 0
 R3163: Classic_commodity_outflow_0,3,2,10,3 >= 0
 R3164: Classic_commodity_outflow_0,3,2,10,4 >= 0
 R3165: Classic_commodity_inflow_0,3,2,10,0 >= 0
 R3166: Classic_commodity_inflow_0,3,2,10,1 >= 0
 R3167: Classic_commodity_inflow_0,3,2,10,2 >= 0
 R3168: Classic_commodity_inflow_0,3,2,10,3 >= 0
 R3169: Classic_commodity_inflow_0,3,2,10,4 >= 0
 R3170: sc_commodity_outflow_0,3,2,10 >= 0
 R3171: sc_commodity_inflow_0,3,2,10 >= 0
 R3172: Classic_commodity_outflow_0,3,3,0,0 >= 0
 R3173: Classic_commodity_outflow_0,3,3,0,1 >= 0
 R3174: Classic_commodity_outflow_0,3,3,0,2 >= 0
 R3175: Classic_commodity_outflow_0,3,3,0,3 >= 0
 R3176: Classic_commodity_outflow_0,3,3,0,4 >= 0
 R3177: Classic_commodity_inflow_0,3,3,0,0 >= 0
 R3178: Classic_commodity_inflow_0,3,3,0,1 >= 0
 R3179: Classic_commodity_inflow_0,3,3,0,2 >= 0
 R3180: Classic_commodity_inflow_0,3,3,0,3 >= 0
 R3181: Classic_commodity_inflow_0,3,3,0,4 >= 0
 R3182: sc_commodity_outflow_0,3,3,0 >= 0
 R3183: sc_commodity_inflow_0,3,3,0 >= 0
 R3184: Classic_commodity_outflow_0,3,3,1,0 >= 0
 R3185: Classic_commodity_outflow_0,3,3,1,1 >= 0
 R3186: Classic_commodity_outflow_0,3,3,1,2 >= 0
 R3187: Classic_commodity_outflow_0,3,3,1,3 >= 0
 R3188: Classic_commodity_outflow_0,3,3,1,4 >= 0
 R3189: Classic_commodity_inflow_0,3,3,1,0 >= 0
 R3190: Classic_commodity_inflow_0,3,3,1,1 >= 0
 R3191: Classic_commodity_inflow_0,3,3,1,2 >= 0
 R3192: Classic_commodity_inflow_0,3,3,1,3 >= 0
 R3193: Classic_commodity_inflow_0,3,3,1,4 >= 0
 R3194: sc_commodity_outflow_0,3,3,1 >= 0
 R3195: sc_commodity_inflow_0,3,3,1 >= 0
 R3196: Classic_commodity_outflow_0,3,3,2,0 >= 0
 R3197: Classic_commodity_outflow_0,3,3,2,1 >= 0
 R3198: Classic_commodity_outflow_0,3,3,2,2 >= 0
 R3199: Classic_commodity_outflow_0,3,3,2,3 >= 0
 R3200: Classic_commodity_outflow_0,3,3,2,4 >= 0
 R3201: Classic_commodity_inflow_0,3,3,2,0 >= 0
 R3202: Classic_commodity_inflow_0,3,3,2,1 >= 0
 R3203: Classic_commodity_inflow_0,3,3,2,2 >= 0
 R3204: Classic_commodity_inflow_0,3,3,2,3 >= 0
 R3205: Classic_commodity_inflow_0,3,3,2,4 >= 0
 R3206: sc_commodity_outflow_0,3,3,2 >= 0
 R3207: sc_commodity_inflow_0,3,3,2 >= 0
 R3208: Classic_commodity_outflow_0,3,3,3,0 >= 0
 R3209: Classic_commodity_outflow_0,3,3,3,1 >= 0
 R3210: Classic_commodity_outflow_0,3,3,3,2 >= 0
 R3211: Classic_commodity_outflow_0,3,3,3,3 >= 0
 R3212: Classic_commodity_outflow_0,3,3,3,4 >= 0
 R3213: Classic_commodity_inflow_0,3,3,3,0 >= 0
 R3214: Classic_commodity_inflow_0,3,3,3,1 >= 0
 R3215: Classic_commodity_inflow_0,3,3,3,2 >= 0
 R3216: Classic_commodity_inflow_0,3,3,3,3 >= 0
 R3217: Classic_commodity_inflow_0,3,3,3,4 >= 0
 R3218: sc_commodity_outflow_0,3,3,3 >= 0
 R3219: sc_commodity_inflow_0,3,3,3 >= 0
 R3220: Classic_commodity_outflow_0,3,3,4,0 >= 0
 R3221: Classic_commodity_outflow_0,3,3,4,1 >= 0
 R3222: Classic_commodity_outflow_0,3,3,4,2 >= 0
 R3223: Classic_commodity_outflow_0,3,3,4,3 >= 0
 R3224: Classic_commodity_outflow_0,3,3,4,4 >= 0
 R3225: Classic_commodity_inflow_0,3,3,4,0 >= 0
 R3226: Classic_commodity_inflow_0,3,3,4,1 >= 0
 R3227: Classic_commodity_inflow_0,3,3,4,2 >= 0
 R3228: Classic_commodity_inflow_0,3,3,4,3 >= 0
 R3229: Classic_commodity_inflow_0,3,3,4,4 >= 0
 R3230: sc_commodity_outflow_0,3,3,4 >= 0
 R3231: sc_commodity_inflow_0,3,3,4 >= 0
 R3232: Classic_commodity_outflow_0,3,3,5,0 >= 0
 R3233: Classic_commodity_outflow_0,3,3,5,1 >= 0
 R3234: Classic_commodity_outflow_0,3,3,5,2 >= 0
 R3235: Classic_commodity_outflow_0,3,3,5,3 >= 0
 R3236: Classic_commodity_outflow_0,3,3,5,4 >= 0
 R3237: Classic_commodity_inflow_0,3,3,5,0 >= 0
 R3238: Classic_commodity_inflow_0,3,3,5,1 >= 0
 R3239: Classic_commodity_inflow_0,3,3,5,2 >= 0
 R3240: Classic_commodity_inflow_0,3,3,5,3 >= 0
 R3241: Classic_commodity_inflow_0,3,3,5,4 >= 0
 R3242: sc_commodity_outflow_0,3,3,5 >= 0
 R3243: sc_commodity_inflow_0,3,3,5 >= 0
 R3244: Classic_commodity_outflow_0,3,3,6,0 >= 0
 R3245: Classic_commodity_outflow_0,3,3,6,1 >= 0
 R3246: Classic_commodity_outflow_0,3,3,6,2 >= 0
 R3247: Classic_commodity_outflow_0,3,3,6,3 >= 0
 R3248: Classic_commodity_outflow_0,3,3,6,4 >= 0
 R3249: Classic_commodity_inflow_0,3,3,6,0 >= 0
 R3250: Classic_commodity_inflow_0,3,3,6,1 >= 0
 R3251: Classic_commodity_inflow_0,3,3,6,2 >= 0
 R3252: Classic_commodity_inflow_0,3,3,6,3 >= 0
 R3253: Classic_commodity_inflow_0,3,3,6,4 >= 0
 R3254: sc_commodity_outflow_0,3,3,6 >= 0
 R3255: sc_commodity_inflow_0,3,3,6 >= 0
 R3256: Classic_commodity_outflow_0,3,3,7,0 >= 0
 R3257: Classic_commodity_outflow_0,3,3,7,1 >= 0
 R3258: Classic_commodity_outflow_0,3,3,7,2 >= 0
 R3259: Classic_commodity_outflow_0,3,3,7,3 >= 0
 R3260: Classic_commodity_outflow_0,3,3,7,4 >= 0
 R3261: Classic_commodity_inflow_0,3,3,7,0 >= 0
 R3262: Classic_commodity_inflow_0,3,3,7,1 >= 0
 R3263: Classic_commodity_inflow_0,3,3,7,2 >= 0
 R3264: Classic_commodity_inflow_0,3,3,7,3 >= 0
 R3265: Classic_commodity_inflow_0,3,3,7,4 >= 0
 R3266: sc_commodity_outflow_0,3,3,7 >= 0
 R3267: sc_commodity_inflow_0,3,3,7 >= 0
 R3268: Classic_commodity_outflow_0,3,3,8,0 >= 0
 R3269: Classic_commodity_outflow_0,3,3,8,1 >= 0
 R3270: Classic_commodity_outflow_0,3,3,8,2 >= 0
 R3271: Classic_commodity_outflow_0,3,3,8,3 >= 0
 R3272: Classic_commodity_outflow_0,3,3,8,4 >= 0
 R3273: Classic_commodity_inflow_0,3,3,8,0 >= 0
 R3274: Classic_commodity_inflow_0,3,3,8,1 >= 0
 R3275: Classic_commodity_inflow_0,3,3,8,2 >= 0
 R3276: Classic_commodity_inflow_0,3,3,8,3 >= 0
 R3277: Classic_commodity_inflow_0,3,3,8,4 >= 0
 R3278: sc_commodity_outflow_0,3,3,8 >= 0
 R3279: sc_commodity_inflow_0,3,3,8 >= 0
 R3280: Classic_commodity_outflow_0,3,3,9,0 >= 0
 R3281: Classic_commodity_outflow_0,3,3,9,1 >= 0
 R3282: Classic_commodity_outflow_0,3,3,9,2 >= 0
 R3283: Classic_commodity_outflow_0,3,3,9,3 >= 0
 R3284: Classic_commodity_outflow_0,3,3,9,4 >= 0
 R3285: Classic_commodity_inflow_0,3,3,9,0 >= 0
 R3286: Classic_commodity_inflow_0,3,3,9,1 >= 0
 R3287: Classic_commodity_inflow_0,3,3,9,2 >= 0
 R3288: Classic_commodity_inflow_0,3,3,9,3 >= 0
 R3289: Classic_commodity_inflow_0,3,3,9,4 >= 0
 R3290: sc_commodity_outflow_0,3,3,9 >= 0
 R3291: sc_commodity_inflow_0,3,3,9 >= 0
 R3292: Classic_commodity_outflow_0,3,3,10,0 >= 0
 R3293: Classic_commodity_outflow_0,3,3,10,1 >= 0
 R3294: Classic_commodity_outflow_0,3,3,10,2 >= 0
 R3295: Classic_commodity_outflow_0,3,3,10,3 >= 0
 R3296: Classic_commodity_outflow_0,3,3,10,4 >= 0
 R3297: Classic_commodity_inflow_0,3,3,10,0 >= 0
 R3298: Classic_commodity_inflow_0,3,3,10,1 >= 0
 R3299: Classic_commodity_inflow_0,3,3,10,2 >= 0
 R3300: Classic_commodity_inflow_0,3,3,10,3 >= 0
 R3301: Classic_commodity_inflow_0,3,3,10,4 >= 0
 R3302: sc_commodity_outflow_0,3,3,10 >= 0
 R3303: sc_commodity_inflow_0,3,3,10 >= 0
 R3304: Classic_commodity_outflow_1,0,0,0,0 >= 0
 R3305: Classic_commodity_outflow_1,0,0,0,1 >= 0
 R3306: Classic_commodity_outflow_1,0,0,0,2 >= 0
 R3307: Classic_commodity_outflow_1,0,0,0,3 >= 0
 R3308: Classic_commodity_outflow_1,0,0,0,4 >= 0
 R3309: Classic_commodity_inflow_1,0,0,0,0 >= 0
 R3310: Classic_commodity_inflow_1,0,0,0,1 >= 0
 R3311: Classic_commodity_inflow_1,0,0,0,2 >= 0
 R3312: Classic_commodity_inflow_1,0,0,0,3 >= 0
 R3313: Classic_commodity_inflow_1,0,0,0,4 >= 0
 R3314: sc_commodity_outflow_1,0,0,0 >= 0
 R3315: sc_commodity_inflow_1,0,0,0 >= 0
 R3316: Classic_commodity_outflow_1,0,0,1,0 >= 0
 R3317: Classic_commodity_outflow_1,0,0,1,1 >= 0
 R3318: Classic_commodity_outflow_1,0,0,1,2 >= 0
 R3319: Classic_commodity_outflow_1,0,0,1,3 >= 0
 R3320: Classic_commodity_outflow_1,0,0,1,4 >= 0
 R3321: Classic_commodity_inflow_1,0,0,1,0 >= 0
 R3322: Classic_commodity_inflow_1,0,0,1,1 >= 0
 R3323: Classic_commodity_inflow_1,0,0,1,2 >= 0
 R3324: Classic_commodity_inflow_1,0,0,1,3 >= 0
 R3325: Classic_commodity_inflow_1,0,0,1,4 >= 0
 R3326: sc_commodity_outflow_1,0,0,1 >= 0
 R3327: sc_commodity_inflow_1,0,0,1 >= 0
 R3328: Classic_commodity_outflow_1,0,0,2,0 >= 0
 R3329: Classic_commodity_outflow_1,0,0,2,1 >= 0
 R3330: Classic_commodity_outflow_1,0,0,2,2 >= 0
 R3331: Classic_commodity_outflow_1,0,0,2,3 >= 0
 R3332: Classic_commodity_outflow_1,0,0,2,4 >= 0
 R3333: Classic_commodity_inflow_1,0,0,2,0 >= 0
 R3334: Classic_commodity_inflow_1,0,0,2,1 >= 0
 R3335: Classic_commodity_inflow_1,0,0,2,2 >= 0
 R3336: Classic_commodity_inflow_1,0,0,2,3 >= 0
 R3337: Classic_commodity_inflow_1,0,0,2,4 >= 0
 R3338: sc_commodity_outflow_1,0,0,2 >= 0
 R3339: sc_commodity_inflow_1,0,0,2 >= 0
 R3340: Classic_commodity_outflow_1,0,0,3,0 >= 0
 R3341: Classic_commodity_outflow_1,0,0,3,1 >= 0
 R3342: Classic_commodity_outflow_1,0,0,3,2 >= 0
 R3343: Classic_commodity_outflow_1,0,0,3,3 >= 0
 R3344: Classic_commodity_outflow_1,0,0,3,4 >= 0
 R3345: Classic_commodity_inflow_1,0,0,3,0 >= 0
 R3346: Classic_commodity_inflow_1,0,0,3,1 >= 0
 R3347: Classic_commodity_inflow_1,0,0,3,2 >= 0
 R3348: Classic_commodity_inflow_1,0,0,3,3 >= 0
 R3349: Classic_commodity_inflow_1,0,0,3,4 >= 0
 R3350: sc_commodity_outflow_1,0,0,3 >= 0
 R3351: sc_commodity_inflow_1,0,0,3 >= 0
 R3352: Classic_commodity_outflow_1,0,0,4,0 >= 0
 R3353: Classic_commodity_outflow_1,0,0,4,1 >= 0
 R3354: Classic_commodity_outflow_1,0,0,4,2 >= 0
 R3355: Classic_commodity_outflow_1,0,0,4,3 >= 0
 R3356: Classic_commodity_outflow_1,0,0,4,4 >= 0
 R3357: Classic_commodity_inflow_1,0,0,4,0 >= 0
 R3358: Classic_commodity_inflow_1,0,0,4,1 >= 0
 R3359: Classic_commodity_inflow_1,0,0,4,2 >= 0
 R3360: Classic_commodity_inflow_1,0,0,4,3 >= 0
 R3361: Classic_commodity_inflow_1,0,0,4,4 >= 0
 R3362: sc_commodity_outflow_1,0,0,4 >= 0
 R3363: sc_commodity_inflow_1,0,0,4 >= 0
 R3364: Classic_commodity_outflow_1,0,0,5,0 >= 0
 R3365: Classic_commodity_outflow_1,0,0,5,1 >= 0
 R3366: Classic_commodity_outflow_1,0,0,5,2 >= 0
 R3367: Classic_commodity_outflow_1,0,0,5,3 >= 0
 R3368: Classic_commodity_outflow_1,0,0,5,4 >= 0
 R3369: Classic_commodity_inflow_1,0,0,5,0 >= 0
 R3370: Classic_commodity_inflow_1,0,0,5,1 >= 0
 R3371: Classic_commodity_inflow_1,0,0,5,2 >= 0
 R3372: Classic_commodity_inflow_1,0,0,5,3 >= 0
 R3373: Classic_commodity_inflow_1,0,0,5,4 >= 0
 R3374: sc_commodity_outflow_1,0,0,5 >= 0
 R3375: sc_commodity_inflow_1,0,0,5 >= 0
 R3376: Classic_commodity_outflow_1,0,0,6,0 >= 0
 R3377: Classic_commodity_outflow_1,0,0,6,1 >= 0
 R3378: Classic_commodity_outflow_1,0,0,6,2 >= 0
 R3379: Classic_commodity_outflow_1,0,0,6,3 >= 0
 R3380: Classic_commodity_outflow_1,0,0,6,4 >= 0
 R3381: Classic_commodity_inflow_1,0,0,6,0 >= 0
 R3382: Classic_commodity_inflow_1,0,0,6,1 >= 0
 R3383: Classic_commodity_inflow_1,0,0,6,2 >= 0
 R3384: Classic_commodity_inflow_1,0,0,6,3 >= 0
 R3385: Classic_commodity_inflow_1,0,0,6,4 >= 0
 R3386: sc_commodity_outflow_1,0,0,6 >= 0
 R3387: sc_commodity_inflow_1,0,0,6 >= 0
 R3388: Classic_commodity_outflow_1,0,0,7,0 >= 0
 R3389: Classic_commodity_outflow_1,0,0,7,1 >= 0
 R3390: Classic_commodity_outflow_1,0,0,7,2 >= 0
 R3391: Classic_commodity_outflow_1,0,0,7,3 >= 0
 R3392: Classic_commodity_outflow_1,0,0,7,4 >= 0
 R3393: Classic_commodity_inflow_1,0,0,7,0 >= 0
 R3394: Classic_commodity_inflow_1,0,0,7,1 >= 0
 R3395: Classic_commodity_inflow_1,0,0,7,2 >= 0
 R3396: Classic_commodity_inflow_1,0,0,7,3 >= 0
 R3397: Classic_commodity_inflow_1,0,0,7,4 >= 0
 R3398: sc_commodity_outflow_1,0,0,7 >= 0
 R3399: sc_commodity_inflow_1,0,0,7 >= 0
 R3400: Classic_commodity_outflow_1,0,0,8,0 >= 0
 R3401: Classic_commodity_outflow_1,0,0,8,1 >= 0
 R3402: Classic_commodity_outflow_1,0,0,8,2 >= 0
 R3403: Classic_commodity_outflow_1,0,0,8,3 >= 0
 R3404: Classic_commodity_outflow_1,0,0,8,4 >= 0
 R3405: Classic_commodity_inflow_1,0,0,8,0 >= 0
 R3406: Classic_commodity_inflow_1,0,0,8,1 >= 0
 R3407: Classic_commodity_inflow_1,0,0,8,2 >= 0
 R3408: Classic_commodity_inflow_1,0,0,8,3 >= 0
 R3409: Classic_commodity_inflow_1,0,0,8,4 >= 0
 R3410: sc_commodity_outflow_1,0,0,8 >= 0
 R3411: sc_commodity_inflow_1,0,0,8 >= 0
 R3412: Classic_commodity_outflow_1,0,0,9,0 >= 0
 R3413: Classic_commodity_outflow_1,0,0,9,1 >= 0
 R3414: Classic_commodity_outflow_1,0,0,9,2 >= 0
 R3415: Classic_commodity_outflow_1,0,0,9,3 >= 0
 R3416: Classic_commodity_outflow_1,0,0,9,4 >= 0
 R3417: Classic_commodity_inflow_1,0,0,9,0 >= 0
 R3418: Classic_commodity_inflow_1,0,0,9,1 >= 0
 R3419: Classic_commodity_inflow_1,0,0,9,2 >= 0
 R3420: Classic_commodity_inflow_1,0,0,9,3 >= 0
 R3421: Classic_commodity_inflow_1,0,0,9,4 >= 0
 R3422: sc_commodity_outflow_1,0,0,9 >= 0
 R3423: sc_commodity_inflow_1,0,0,9 >= 0
 R3424: Classic_commodity_outflow_1,0,0,10,0 >= 0
 R3425: Classic_commodity_outflow_1,0,0,10,1 >= 0
 R3426: Classic_commodity_outflow_1,0,0,10,2 >= 0
 R3427: Classic_commodity_outflow_1,0,0,10,3 >= 0
 R3428: Classic_commodity_outflow_1,0,0,10,4 >= 0
 R3429: Classic_commodity_inflow_1,0,0,10,0 >= 0
 R3430: Classic_commodity_inflow_1,0,0,10,1 >= 0
 R3431: Classic_commodity_inflow_1,0,0,10,2 >= 0
 R3432: Classic_commodity_inflow_1,0,0,10,3 >= 0
 R3433: Classic_commodity_inflow_1,0,0,10,4 >= 0
 R3434: sc_commodity_outflow_1,0,0,10 >= 0
 R3435: sc_commodity_inflow_1,0,0,10 >= 0
 R3436: Classic_commodity_outflow_1,0,1,0,0 >= 0
 R3437: Classic_commodity_outflow_1,0,1,0,1 >= 0
 R3438: Classic_commodity_outflow_1,0,1,0,2 >= 0
 R3439: Classic_commodity_outflow_1,0,1,0,3 >= 0
 R3440: Classic_commodity_outflow_1,0,1,0,4 >= 0
 R3441: Classic_commodity_inflow_1,0,1,0,0 >= 0
 R3442: Classic_commodity_inflow_1,0,1,0,1 >= 0
 R3443: Classic_commodity_inflow_1,0,1,0,2 >= 0
 R3444: Classic_commodity_inflow_1,0,1,0,3 >= 0
 R3445: Classic_commodity_inflow_1,0,1,0,4 >= 0
 R3446: sc_commodity_outflow_1,0,1,0 >= 0
 R3447: sc_commodity_inflow_1,0,1,0 >= 0
 R3448: Classic_commodity_outflow_1,0,1,1,0 >= 0
 R3449: Classic_commodity_outflow_1,0,1,1,1 >= 0
 R3450: Classic_commodity_outflow_1,0,1,1,2 >= 0
 R3451: Classic_commodity_outflow_1,0,1,1,3 >= 0
 R3452: Classic_commodity_outflow_1,0,1,1,4 >= 0
 R3453: Classic_commodity_inflow_1,0,1,1,0 >= 0
 R3454: Classic_commodity_inflow_1,0,1,1,1 >= 0
 R3455: Classic_commodity_inflow_1,0,1,1,2 >= 0
 R3456: Classic_commodity_inflow_1,0,1,1,3 >= 0
 R3457: Classic_commodity_inflow_1,0,1,1,4 >= 0
 R3458: sc_commodity_outflow_1,0,1,1 >= 0
 R3459: sc_commodity_inflow_1,0,1,1 >= 0
 R3460: Classic_commodity_outflow_1,0,1,2,0 >= 0
 R3461: Classic_commodity_outflow_1,0,1,2,1 >= 0
 R3462: Classic_commodity_outflow_1,0,1,2,2 >= 0
 R3463: Classic_commodity_outflow_1,0,1,2,3 >= 0
 R3464: Classic_commodity_outflow_1,0,1,2,4 >= 0
 R3465: Classic_commodity_inflow_1,0,1,2,0 >= 0
 R3466: Classic_commodity_inflow_1,0,1,2,1 >= 0
 R3467: Classic_commodity_inflow_1,0,1,2,2 >= 0
 R3468: Classic_commodity_inflow_1,0,1,2,3 >= 0
 R3469: Classic_commodity_inflow_1,0,1,2,4 >= 0
 R3470: sc_commodity_outflow_1,0,1,2 >= 0
 R3471: sc_commodity_inflow_1,0,1,2 >= 0
 R3472: Classic_commodity_outflow_1,0,1,3,0 >= 0
 R3473: Classic_commodity_outflow_1,0,1,3,1 >= 0
 R3474: Classic_commodity_outflow_1,0,1,3,2 >= 0
 R3475: Classic_commodity_outflow_1,0,1,3,3 >= 0
 R3476: Classic_commodity_outflow_1,0,1,3,4 >= 0
 R3477: Classic_commodity_inflow_1,0,1,3,0 >= 0
 R3478: Classic_commodity_inflow_1,0,1,3,1 >= 0
 R3479: Classic_commodity_inflow_1,0,1,3,2 >= 0
 R3480: Classic_commodity_inflow_1,0,1,3,3 >= 0
 R3481: Classic_commodity_inflow_1,0,1,3,4 >= 0
 R3482: sc_commodity_outflow_1,0,1,3 >= 0
 R3483: sc_commodity_inflow_1,0,1,3 >= 0
 R3484: Classic_commodity_outflow_1,0,1,4,0 >= 0
 R3485: Classic_commodity_outflow_1,0,1,4,1 >= 0
 R3486: Classic_commodity_outflow_1,0,1,4,2 >= 0
 R3487: Classic_commodity_outflow_1,0,1,4,3 >= 0
 R3488: Classic_commodity_outflow_1,0,1,4,4 >= 0
 R3489: Classic_commodity_inflow_1,0,1,4,0 >= 0
 R3490: Classic_commodity_inflow_1,0,1,4,1 >= 0
 R3491: Classic_commodity_inflow_1,0,1,4,2 >= 0
 R3492: Classic_commodity_inflow_1,0,1,4,3 >= 0
 R3493: Classic_commodity_inflow_1,0,1,4,4 >= 0
 R3494: sc_commodity_outflow_1,0,1,4 >= 0
 R3495: sc_commodity_inflow_1,0,1,4 >= 0
 R3496: Classic_commodity_outflow_1,0,1,5,0 >= 0
 R3497: Classic_commodity_outflow_1,0,1,5,1 >= 0
 R3498: Classic_commodity_outflow_1,0,1,5,2 >= 0
 R3499: Classic_commodity_outflow_1,0,1,5,3 >= 0
 R3500: Classic_commodity_outflow_1,0,1,5,4 >= 0
 R3501: Classic_commodity_inflow_1,0,1,5,0 >= 0
 R3502: Classic_commodity_inflow_1,0,1,5,1 >= 0
 R3503: Classic_commodity_inflow_1,0,1,5,2 >= 0
 R3504: Classic_commodity_inflow_1,0,1,5,3 >= 0
 R3505: Classic_commodity_inflow_1,0,1,5,4 >= 0
 R3506: sc_commodity_outflow_1,0,1,5 >= 0
 R3507: sc_commodity_inflow_1,0,1,5 >= 0
 R3508: Classic_commodity_outflow_1,0,1,6,0 >= 0
 R3509: Classic_commodity_outflow_1,0,1,6,1 >= 0
 R3510: Classic_commodity_outflow_1,0,1,6,2 >= 0
 R3511: Classic_commodity_outflow_1,0,1,6,3 >= 0
 R3512: Classic_commodity_outflow_1,0,1,6,4 >= 0
 R3513: Classic_commodity_inflow_1,0,1,6,0 >= 0
 R3514: Classic_commodity_inflow_1,0,1,6,1 >= 0
 R3515: Classic_commodity_inflow_1,0,1,6,2 >= 0
 R3516: Classic_commodity_inflow_1,0,1,6,3 >= 0
 R3517: Classic_commodity_inflow_1,0,1,6,4 >= 0
 R3518: sc_commodity_outflow_1,0,1,6 >= 0
 R3519: sc_commodity_inflow_1,0,1,6 >= 0
 R3520: Classic_commodity_outflow_1,0,1,7,0 >= 0
 R3521: Classic_commodity_outflow_1,0,1,7,1 >= 0
 R3522: Classic_commodity_outflow_1,0,1,7,2 >= 0
 R3523: Classic_commodity_outflow_1,0,1,7,3 >= 0
 R3524: Classic_commodity_outflow_1,0,1,7,4 >= 0
 R3525: Classic_commodity_inflow_1,0,1,7,0 >= 0
 R3526: Classic_commodity_inflow_1,0,1,7,1 >= 0
 R3527: Classic_commodity_inflow_1,0,1,7,2 >= 0
 R3528: Classic_commodity_inflow_1,0,1,7,3 >= 0
 R3529: Classic_commodity_inflow_1,0,1,7,4 >= 0
 R3530: sc_commodity_outflow_1,0,1,7 >= 0
 R3531: sc_commodity_inflow_1,0,1,7 >= 0
 R3532: Classic_commodity_outflow_1,0,1,8,0 >= 0
 R3533: Classic_commodity_outflow_1,0,1,8,1 >= 0
 R3534: Classic_commodity_outflow_1,0,1,8,2 >= 0
 R3535: Classic_commodity_outflow_1,0,1,8,3 >= 0
 R3536: Classic_commodity_outflow_1,0,1,8,4 >= 0
 R3537: Classic_commodity_inflow_1,0,1,8,0 >= 0
 R3538: Classic_commodity_inflow_1,0,1,8,1 >= 0
 R3539: Classic_commodity_inflow_1,0,1,8,2 >= 0
 R3540: Classic_commodity_inflow_1,0,1,8,3 >= 0
 R3541: Classic_commodity_inflow_1,0,1,8,4 >= 0
 R3542: sc_commodity_outflow_1,0,1,8 >= 0
 R3543: sc_commodity_inflow_1,0,1,8 >= 0
 R3544: Classic_commodity_outflow_1,0,1,9,0 >= 0
 R3545: Classic_commodity_outflow_1,0,1,9,1 >= 0
 R3546: Classic_commodity_outflow_1,0,1,9,2 >= 0
 R3547: Classic_commodity_outflow_1,0,1,9,3 >= 0
 R3548: Classic_commodity_outflow_1,0,1,9,4 >= 0
 R3549: Classic_commodity_inflow_1,0,1,9,0 >= 0
 R3550: Classic_commodity_inflow_1,0,1,9,1 >= 0
 R3551: Classic_commodity_inflow_1,0,1,9,2 >= 0
 R3552: Classic_commodity_inflow_1,0,1,9,3 >= 0
 R3553: Classic_commodity_inflow_1,0,1,9,4 >= 0
 R3554: sc_commodity_outflow_1,0,1,9 >= 0
 R3555: sc_commodity_inflow_1,0,1,9 >= 0
 R3556: Classic_commodity_outflow_1,0,1,10,0 >= 0
 R3557: Classic_commodity_outflow_1,0,1,10,1 >= 0
 R3558: Classic_commodity_outflow_1,0,1,10,2 >= 0
 R3559: Classic_commodity_outflow_1,0,1,10,3 >= 0
 R3560: Classic_commodity_outflow_1,0,1,10,4 >= 0
 R3561: Classic_commodity_inflow_1,0,1,10,0 >= 0
 R3562: Classic_commodity_inflow_1,0,1,10,1 >= 0
 R3563: Classic_commodity_inflow_1,0,1,10,2 >= 0
 R3564: Classic_commodity_inflow_1,0,1,10,3 >= 0
 R3565: Classic_commodity_inflow_1,0,1,10,4 >= 0
 R3566: sc_commodity_outflow_1,0,1,10 >= 0
 R3567: sc_commodity_inflow_1,0,1,10 >= 0
 R3568: Classic_commodity_outflow_1,1,0,0,0 >= 0
 R3569: Classic_commodity_outflow_1,1,0,0,1 >= 0
 R3570: Classic_commodity_outflow_1,1,0,0,2 >= 0
 R3571: Classic_commodity_outflow_1,1,0,0,3 >= 0
 R3572: Classic_commodity_outflow_1,1,0,0,4 >= 0
 R3573: Classic_commodity_inflow_1,1,0,0,0 >= 0
 R3574: Classic_commodity_inflow_1,1,0,0,1 >= 0
 R3575: Classic_commodity_inflow_1,1,0,0,2 >= 0
 R3576: Classic_commodity_inflow_1,1,0,0,3 >= 0
 R3577: Classic_commodity_inflow_1,1,0,0,4 >= 0
 R3578: sc_commodity_outflow_1,1,0,0 >= 0
 R3579: sc_commodity_inflow_1,1,0,0 >= 0
 R3580: Classic_commodity_outflow_1,1,0,1,0 >= 0
 R3581: Classic_commodity_outflow_1,1,0,1,1 >= 0
 R3582: Classic_commodity_outflow_1,1,0,1,2 >= 0
 R3583: Classic_commodity_outflow_1,1,0,1,3 >= 0
 R3584: Classic_commodity_outflow_1,1,0,1,4 >= 0
 R3585: Classic_commodity_inflow_1,1,0,1,0 >= 0
 R3586: Classic_commodity_inflow_1,1,0,1,1 >= 0
 R3587: Classic_commodity_inflow_1,1,0,1,2 >= 0
 R3588: Classic_commodity_inflow_1,1,0,1,3 >= 0
 R3589: Classic_commodity_inflow_1,1,0,1,4 >= 0
 R3590: sc_commodity_outflow_1,1,0,1 >= 0
 R3591: sc_commodity_inflow_1,1,0,1 >= 0
 R3592: Classic_commodity_outflow_1,1,0,2,0 >= 0
 R3593: Classic_commodity_outflow_1,1,0,2,1 >= 0
 R3594: Classic_commodity_outflow_1,1,0,2,2 >= 0
 R3595: Classic_commodity_outflow_1,1,0,2,3 >= 0
 R3596: Classic_commodity_outflow_1,1,0,2,4 >= 0
 R3597: Classic_commodity_inflow_1,1,0,2,0 >= 0
 R3598: Classic_commodity_inflow_1,1,0,2,1 >= 0
 R3599: Classic_commodity_inflow_1,1,0,2,2 >= 0
 R3600: Classic_commodity_inflow_1,1,0,2,3 >= 0
 R3601: Classic_commodity_inflow_1,1,0,2,4 >= 0
 R3602: sc_commodity_outflow_1,1,0,2 >= 0
 R3603: sc_commodity_inflow_1,1,0,2 >= 0
 R3604: Classic_commodity_outflow_1,1,0,3,0 >= 0
 R3605: Classic_commodity_outflow_1,1,0,3,1 >= 0
 R3606: Classic_commodity_outflow_1,1,0,3,2 >= 0
 R3607: Classic_commodity_outflow_1,1,0,3,3 >= 0
 R3608: Classic_commodity_outflow_1,1,0,3,4 >= 0
 R3609: Classic_commodity_inflow_1,1,0,3,0 >= 0
 R3610: Classic_commodity_inflow_1,1,0,3,1 >= 0
 R3611: Classic_commodity_inflow_1,1,0,3,2 >= 0
 R3612: Classic_commodity_inflow_1,1,0,3,3 >= 0
 R3613: Classic_commodity_inflow_1,1,0,3,4 >= 0
 R3614: sc_commodity_outflow_1,1,0,3 >= 0
 R3615: sc_commodity_inflow_1,1,0,3 >= 0
 R3616: Classic_commodity_outflow_1,1,0,4,0 >= 0
 R3617: Classic_commodity_outflow_1,1,0,4,1 >= 0
 R3618: Classic_commodity_outflow_1,1,0,4,2 >= 0
 R3619: Classic_commodity_outflow_1,1,0,4,3 >= 0
 R3620: Classic_commodity_outflow_1,1,0,4,4 >= 0
 R3621: Classic_commodity_inflow_1,1,0,4,0 >= 0
 R3622: Classic_commodity_inflow_1,1,0,4,1 >= 0
 R3623: Classic_commodity_inflow_1,1,0,4,2 >= 0
 R3624: Classic_commodity_inflow_1,1,0,4,3 >= 0
 R3625: Classic_commodity_inflow_1,1,0,4,4 >= 0
 R3626: sc_commodity_outflow_1,1,0,4 >= 0
 R3627: sc_commodity_inflow_1,1,0,4 >= 0
 R3628: Classic_commodity_outflow_1,1,0,5,0 >= 0
 R3629: Classic_commodity_outflow_1,1,0,5,1 >= 0
 R3630: Classic_commodity_outflow_1,1,0,5,2 >= 0
 R3631: Classic_commodity_outflow_1,1,0,5,3 >= 0
 R3632: Classic_commodity_outflow_1,1,0,5,4 >= 0
 R3633: Classic_commodity_inflow_1,1,0,5,0 >= 0
 R3634: Classic_commodity_inflow_1,1,0,5,1 >= 0
 R3635: Classic_commodity_inflow_1,1,0,5,2 >= 0
 R3636: Classic_commodity_inflow_1,1,0,5,3 >= 0
 R3637: Classic_commodity_inflow_1,1,0,5,4 >= 0
 R3638: sc_commodity_outflow_1,1,0,5 >= 0
 R3639: sc_commodity_inflow_1,1,0,5 >= 0
 R3640: Classic_commodity_outflow_1,1,0,6,0 >= 0
 R3641: Classic_commodity_outflow_1,1,0,6,1 >= 0
 R3642: Classic_commodity_outflow_1,1,0,6,2 >= 0
 R3643: Classic_commodity_outflow_1,1,0,6,3 >= 0
 R3644: Classic_commodity_outflow_1,1,0,6,4 >= 0
 R3645: Classic_commodity_inflow_1,1,0,6,0 >= 0
 R3646: Classic_commodity_inflow_1,1,0,6,1 >= 0
 R3647: Classic_commodity_inflow_1,1,0,6,2 >= 0
 R3648: Classic_commodity_inflow_1,1,0,6,3 >= 0
 R3649: Classic_commodity_inflow_1,1,0,6,4 >= 0
 R3650: sc_commodity_outflow_1,1,0,6 >= 0
 R3651: sc_commodity_inflow_1,1,0,6 >= 0
 R3652: Classic_commodity_outflow_1,1,0,7,0 >= 0
 R3653: Classic_commodity_outflow_1,1,0,7,1 >= 0
 R3654: Classic_commodity_outflow_1,1,0,7,2 >= 0
 R3655: Classic_commodity_outflow_1,1,0,7,3 >= 0
 R3656: Classic_commodity_outflow_1,1,0,7,4 >= 0
 R3657: Classic_commodity_inflow_1,1,0,7,0 >= 0
 R3658: Classic_commodity_inflow_1,1,0,7,1 >= 0
 R3659: Classic_commodity_inflow_1,1,0,7,2 >= 0
 R3660: Classic_commodity_inflow_1,1,0,7,3 >= 0
 R3661: Classic_commodity_inflow_1,1,0,7,4 >= 0
 R3662: sc_commodity_outflow_1,1,0,7 >= 0
 R3663: sc_commodity_inflow_1,1,0,7 >= 0
 R3664: Classic_commodity_outflow_1,1,0,8,0 >= 0
 R3665: Classic_commodity_outflow_1,1,0,8,1 >= 0
 R3666: Classic_commodity_outflow_1,1,0,8,2 >= 0
 R3667: Classic_commodity_outflow_1,1,0,8,3 >= 0
 R3668: Classic_commodity_outflow_1,1,0,8,4 >= 0
 R3669: Classic_commodity_inflow_1,1,0,8,0 >= 0
 R3670: Classic_commodity_inflow_1,1,0,8,1 >= 0
 R3671: Classic_commodity_inflow_1,1,0,8,2 >= 0
 R3672: Classic_commodity_inflow_1,1,0,8,3 >= 0
 R3673: Classic_commodity_inflow_1,1,0,8,4 >= 0
 R3674: sc_commodity_outflow_1,1,0,8 >= 0
 R3675: sc_commodity_inflow_1,1,0,8 >= 0
 R3676: Classic_commodity_outflow_1,1,0,9,0 >= 0
 R3677: Classic_commodity_outflow_1,1,0,9,1 >= 0
 R3678: Classic_commodity_outflow_1,1,0,9,2 >= 0
 R3679: Classic_commodity_outflow_1,1,0,9,3 >= 0
 R3680: Classic_commodity_outflow_1,1,0,9,4 >= 0
 R3681: Classic_commodity_inflow_1,1,0,9,0 >= 0
 R3682: Classic_commodity_inflow_1,1,0,9,1 >= 0
 R3683: Classic_commodity_inflow_1,1,0,9,2 >= 0
 R3684: Classic_commodity_inflow_1,1,0,9,3 >= 0
 R3685: Classic_commodity_inflow_1,1,0,9,4 >= 0
 R3686: sc_commodity_outflow_1,1,0,9 >= 0
 R3687: sc_commodity_inflow_1,1,0,9 >= 0
 R3688: Classic_commodity_outflow_1,1,0,10,0 >= 0
 R3689: Classic_commodity_outflow_1,1,0,10,1 >= 0
 R3690: Classic_commodity_outflow_1,1,0,10,2 >= 0
 R3691: Classic_commodity_outflow_1,1,0,10,3 >= 0
 R3692: Classic_commodity_outflow_1,1,0,10,4 >= 0
 R3693: Classic_commodity_inflow_1,1,0,10,0 >= 0
 R3694: Classic_commodity_inflow_1,1,0,10,1 >= 0
 R3695: Classic_commodity_inflow_1,1,0,10,2 >= 0
 R3696: Classic_commodity_inflow_1,1,0,10,3 >= 0
 R3697: Classic_commodity_inflow_1,1,0,10,4 >= 0
 R3698: sc_commodity_outflow_1,1,0,10 >= 0
 R3699: sc_commodity_inflow_1,1,0,10 >= 0
 R3700: Classic_commodity_outflow_1,1,1,0,0 >= 0
 R3701: Classic_commodity_outflow_1,1,1,0,1 >= 0
 R3702: Classic_commodity_outflow_1,1,1,0,2 >= 0
 R3703: Classic_commodity_outflow_1,1,1,0,3 >= 0
 R3704: Classic_commodity_outflow_1,1,1,0,4 >= 0
 R3705: Classic_commodity_inflow_1,1,1,0,0 >= 0
 R3706: Classic_commodity_inflow_1,1,1,0,1 >= 0
 R3707: Classic_commodity_inflow_1,1,1,0,2 >= 0
 R3708: Classic_commodity_inflow_1,1,1,0,3 >= 0
 R3709: Classic_commodity_inflow_1,1,1,0,4 >= 0
 R3710: sc_commodity_outflow_1,1,1,0 >= 0
 R3711: sc_commodity_inflow_1,1,1,0 >= 0
 R3712: Classic_commodity_outflow_1,1,1,1,0 >= 0
 R3713: Classic_commodity_outflow_1,1,1,1,1 >= 0
 R3714: Classic_commodity_outflow_1,1,1,1,2 >= 0
 R3715: Classic_commodity_outflow_1,1,1,1,3 >= 0
 R3716: Classic_commodity_outflow_1,1,1,1,4 >= 0
 R3717: Classic_commodity_inflow_1,1,1,1,0 >= 0
 R3718: Classic_commodity_inflow_1,1,1,1,1 >= 0
 R3719: Classic_commodity_inflow_1,1,1,1,2 >= 0
 R3720: Classic_commodity_inflow_1,1,1,1,3 >= 0
 R3721: Classic_commodity_inflow_1,1,1,1,4 >= 0
 R3722: sc_commodity_outflow_1,1,1,1 >= 0
 R3723: sc_commodity_inflow_1,1,1,1 >= 0
 R3724: Classic_commodity_outflow_1,1,1,2,0 >= 0
 R3725: Classic_commodity_outflow_1,1,1,2,1 >= 0
 R3726: Classic_commodity_outflow_1,1,1,2,2 >= 0
 R3727: Classic_commodity_outflow_1,1,1,2,3 >= 0
 R3728: Classic_commodity_outflow_1,1,1,2,4 >= 0
 R3729: Classic_commodity_inflow_1,1,1,2,0 >= 0
 R3730: Classic_commodity_inflow_1,1,1,2,1 >= 0
 R3731: Classic_commodity_inflow_1,1,1,2,2 >= 0
 R3732: Classic_commodity_inflow_1,1,1,2,3 >= 0
 R3733: Classic_commodity_inflow_1,1,1,2,4 >= 0
 R3734: sc_commodity_outflow_1,1,1,2 >= 0
 R3735: sc_commodity_inflow_1,1,1,2 >= 0
 R3736: Classic_commodity_outflow_1,1,1,3,0 >= 0
 R3737: Classic_commodity_outflow_1,1,1,3,1 >= 0
 R3738: Classic_commodity_outflow_1,1,1,3,2 >= 0
 R3739: Classic_commodity_outflow_1,1,1,3,3 >= 0
 R3740: Classic_commodity_outflow_1,1,1,3,4 >= 0
 R3741: Classic_commodity_inflow_1,1,1,3,0 >= 0
 R3742: Classic_commodity_inflow_1,1,1,3,1 >= 0
 R3743: Classic_commodity_inflow_1,1,1,3,2 >= 0
 R3744: Classic_commodity_inflow_1,1,1,3,3 >= 0
 R3745: Classic_commodity_inflow_1,1,1,3,4 >= 0
 R3746: sc_commodity_outflow_1,1,1,3 >= 0
 R3747: sc_commodity_inflow_1,1,1,3 >= 0
 R3748: Classic_commodity_outflow_1,1,1,4,0 >= 0
 R3749: Classic_commodity_outflow_1,1,1,4,1 >= 0
 R3750: Classic_commodity_outflow_1,1,1,4,2 >= 0
 R3751: Classic_commodity_outflow_1,1,1,4,3 >= 0
 R3752: Classic_commodity_outflow_1,1,1,4,4 >= 0
 R3753: Classic_commodity_inflow_1,1,1,4,0 >= 0
 R3754: Classic_commodity_inflow_1,1,1,4,1 >= 0
 R3755: Classic_commodity_inflow_1,1,1,4,2 >= 0
 R3756: Classic_commodity_inflow_1,1,1,4,3 >= 0
 R3757: Classic_commodity_inflow_1,1,1,4,4 >= 0
 R3758: sc_commodity_outflow_1,1,1,4 >= 0
 R3759: sc_commodity_inflow_1,1,1,4 >= 0
 R3760: Classic_commodity_outflow_1,1,1,5,0 >= 0
 R3761: Classic_commodity_outflow_1,1,1,5,1 >= 0
 R3762: Classic_commodity_outflow_1,1,1,5,2 >= 0
 R3763: Classic_commodity_outflow_1,1,1,5,3 >= 0
 R3764: Classic_commodity_outflow_1,1,1,5,4 >= 0
 R3765: Classic_commodity_inflow_1,1,1,5,0 >= 0
 R3766: Classic_commodity_inflow_1,1,1,5,1 >= 0
 R3767: Classic_commodity_inflow_1,1,1,5,2 >= 0
 R3768: Classic_commodity_inflow_1,1,1,5,3 >= 0
 R3769: Classic_commodity_inflow_1,1,1,5,4 >= 0
 R3770: sc_commodity_outflow_1,1,1,5 >= 0
 R3771: sc_commodity_inflow_1,1,1,5 >= 0
 R3772: Classic_commodity_outflow_1,1,1,6,0 >= 0
 R3773: Classic_commodity_outflow_1,1,1,6,1 >= 0
 R3774: Classic_commodity_outflow_1,1,1,6,2 >= 0
 R3775: Classic_commodity_outflow_1,1,1,6,3 >= 0
 R3776: Classic_commodity_outflow_1,1,1,6,4 >= 0
 R3777: Classic_commodity_inflow_1,1,1,6,0 >= 0
 R3778: Classic_commodity_inflow_1,1,1,6,1 >= 0
 R3779: Classic_commodity_inflow_1,1,1,6,2 >= 0
 R3780: Classic_commodity_inflow_1,1,1,6,3 >= 0
 R3781: Classic_commodity_inflow_1,1,1,6,4 >= 0
 R3782: sc_commodity_outflow_1,1,1,6 >= 0
 R3783: sc_commodity_inflow_1,1,1,6 >= 0
 R3784: Classic_commodity_outflow_1,1,1,7,0 >= 0
 R3785: Classic_commodity_outflow_1,1,1,7,1 >= 0
 R3786: Classic_commodity_outflow_1,1,1,7,2 >= 0
 R3787: Classic_commodity_outflow_1,1,1,7,3 >= 0
 R3788: Classic_commodity_outflow_1,1,1,7,4 >= 0
 R3789: Classic_commodity_inflow_1,1,1,7,0 >= 0
 R3790: Classic_commodity_inflow_1,1,1,7,1 >= 0
 R3791: Classic_commodity_inflow_1,1,1,7,2 >= 0
 R3792: Classic_commodity_inflow_1,1,1,7,3 >= 0
 R3793: Classic_commodity_inflow_1,1,1,7,4 >= 0
 R3794: sc_commodity_outflow_1,1,1,7 >= 0
 R3795: sc_commodity_inflow_1,1,1,7 >= 0
 R3796: Classic_commodity_outflow_1,1,1,8,0 >= 0
 R3797: Classic_commodity_outflow_1,1,1,8,1 >= 0
 R3798: Classic_commodity_outflow_1,1,1,8,2 >= 0
 R3799: Classic_commodity_outflow_1,1,1,8,3 >= 0
 R3800: Classic_commodity_outflow_1,1,1,8,4 >= 0
 R3801: Classic_commodity_inflow_1,1,1,8,0 >= 0
 R3802: Classic_commodity_inflow_1,1,1,8,1 >= 0
 R3803: Classic_commodity_inflow_1,1,1,8,2 >= 0
 R3804: Classic_commodity_inflow_1,1,1,8,3 >= 0
 R3805: Classic_commodity_inflow_1,1,1,8,4 >= 0
 R3806: sc_commodity_outflow_1,1,1,8 >= 0
 R3807: sc_commodity_inflow_1,1,1,8 >= 0
 R3808: Classic_commodity_outflow_1,1,1,9,0 >= 0
 R3809: Classic_commodity_outflow_1,1,1,9,1 >= 0
 R3810: Classic_commodity_outflow_1,1,1,9,2 >= 0
 R3811: Classic_commodity_outflow_1,1,1,9,3 >= 0
 R3812: Classic_commodity_outflow_1,1,1,9,4 >= 0
 R3813: Classic_commodity_inflow_1,1,1,9,0 >= 0
 R3814: Classic_commodity_inflow_1,1,1,9,1 >= 0
 R3815: Classic_commodity_inflow_1,1,1,9,2 >= 0
 R3816: Classic_commodity_inflow_1,1,1,9,3 >= 0
 R3817: Classic_commodity_inflow_1,1,1,9,4 >= 0
 R3818: sc_commodity_outflow_1,1,1,9 >= 0
 R3819: sc_commodity_inflow_1,1,1,9 >= 0
 R3820: Classic_commodity_outflow_1,1,1,10,0 >= 0
 R3821: Classic_commodity_outflow_1,1,1,10,1 >= 0
 R3822: Classic_commodity_outflow_1,1,1,10,2 >= 0
 R3823: Classic_commodity_outflow_1,1,1,10,3 >= 0
 R3824: Classic_commodity_outflow_1,1,1,10,4 >= 0
 R3825: Classic_commodity_inflow_1,1,1,10,0 >= 0
 R3826: Classic_commodity_inflow_1,1,1,10,1 >= 0
 R3827: Classic_commodity_inflow_1,1,1,10,2 >= 0
 R3828: Classic_commodity_inflow_1,1,1,10,3 >= 0
 R3829: Classic_commodity_inflow_1,1,1,10,4 >= 0
 R3830: sc_commodity_outflow_1,1,1,10 >= 0
 R3831: sc_commodity_inflow_1,1,1,10 >= 0
 R3832: Classic_commodity_outflow_1,1,2,0,0 >= 0
 R3833: Classic_commodity_outflow_1,1,2,0,1 >= 0
 R3834: Classic_commodity_outflow_1,1,2,0,2 >= 0
 R3835: Classic_commodity_outflow_1,1,2,0,3 >= 0
 R3836: Classic_commodity_outflow_1,1,2,0,4 >= 0
 R3837: Classic_commodity_inflow_1,1,2,0,0 >= 0
 R3838: Classic_commodity_inflow_1,1,2,0,1 >= 0
 R3839: Classic_commodity_inflow_1,1,2,0,2 >= 0
 R3840: Classic_commodity_inflow_1,1,2,0,3 >= 0
 R3841: Classic_commodity_inflow_1,1,2,0,4 >= 0
 R3842: sc_commodity_outflow_1,1,2,0 >= 0
 R3843: sc_commodity_inflow_1,1,2,0 >= 0
 R3844: Classic_commodity_outflow_1,1,2,1,0 >= 0
 R3845: Classic_commodity_outflow_1,1,2,1,1 >= 0
 R3846: Classic_commodity_outflow_1,1,2,1,2 >= 0
 R3847: Classic_commodity_outflow_1,1,2,1,3 >= 0
 R3848: Classic_commodity_outflow_1,1,2,1,4 >= 0
 R3849: Classic_commodity_inflow_1,1,2,1,0 >= 0
 R3850: Classic_commodity_inflow_1,1,2,1,1 >= 0
 R3851: Classic_commodity_inflow_1,1,2,1,2 >= 0
 R3852: Classic_commodity_inflow_1,1,2,1,3 >= 0
 R3853: Classic_commodity_inflow_1,1,2,1,4 >= 0
 R3854: sc_commodity_outflow_1,1,2,1 >= 0
 R3855: sc_commodity_inflow_1,1,2,1 >= 0
 R3856: Classic_commodity_outflow_1,1,2,2,0 >= 0
 R3857: Classic_commodity_outflow_1,1,2,2,1 >= 0
 R3858: Classic_commodity_outflow_1,1,2,2,2 >= 0
 R3859: Classic_commodity_outflow_1,1,2,2,3 >= 0
 R3860: Classic_commodity_outflow_1,1,2,2,4 >= 0
 R3861: Classic_commodity_inflow_1,1,2,2,0 >= 0
 R3862: Classic_commodity_inflow_1,1,2,2,1 >= 0
 R3863: Classic_commodity_inflow_1,1,2,2,2 >= 0
 R3864: Classic_commodity_inflow_1,1,2,2,3 >= 0
 R3865: Classic_commodity_inflow_1,1,2,2,4 >= 0
 R3866: sc_commodity_outflow_1,1,2,2 >= 0
 R3867: sc_commodity_inflow_1,1,2,2 >= 0
 R3868: Classic_commodity_outflow_1,1,2,3,0 >= 0
 R3869: Classic_commodity_outflow_1,1,2,3,1 >= 0
 R3870: Classic_commodity_outflow_1,1,2,3,2 >= 0
 R3871: Classic_commodity_outflow_1,1,2,3,3 >= 0
 R3872: Classic_commodity_outflow_1,1,2,3,4 >= 0
 R3873: Classic_commodity_inflow_1,1,2,3,0 >= 0
 R3874: Classic_commodity_inflow_1,1,2,3,1 >= 0
 R3875: Classic_commodity_inflow_1,1,2,3,2 >= 0
 R3876: Classic_commodity_inflow_1,1,2,3,3 >= 0
 R3877: Classic_commodity_inflow_1,1,2,3,4 >= 0
 R3878: sc_commodity_outflow_1,1,2,3 >= 0
 R3879: sc_commodity_inflow_1,1,2,3 >= 0
 R3880: Classic_commodity_outflow_1,1,2,4,0 >= 0
 R3881: Classic_commodity_outflow_1,1,2,4,1 >= 0
 R3882: Classic_commodity_outflow_1,1,2,4,2 >= 0
 R3883: Classic_commodity_outflow_1,1,2,4,3 >= 0
 R3884: Classic_commodity_outflow_1,1,2,4,4 >= 0
 R3885: Classic_commodity_inflow_1,1,2,4,0 >= 0
 R3886: Classic_commodity_inflow_1,1,2,4,1 >= 0
 R3887: Classic_commodity_inflow_1,1,2,4,2 >= 0
 R3888: Classic_commodity_inflow_1,1,2,4,3 >= 0
 R3889: Classic_commodity_inflow_1,1,2,4,4 >= 0
 R3890: sc_commodity_outflow_1,1,2,4 >= 0
 R3891: sc_commodity_inflow_1,1,2,4 >= 0
 R3892: Classic_commodity_outflow_1,1,2,5,0 >= 0
 R3893: Classic_commodity_outflow_1,1,2,5,1 >= 0
 R3894: Classic_commodity_outflow_1,1,2,5,2 >= 0
 R3895: Classic_commodity_outflow_1,1,2,5,3 >= 0
 R3896: Classic_commodity_outflow_1,1,2,5,4 >= 0
 R3897: Classic_commodity_inflow_1,1,2,5,0 >= 0
 R3898: Classic_commodity_inflow_1,1,2,5,1 >= 0
 R3899: Classic_commodity_inflow_1,1,2,5,2 >= 0
 R3900: Classic_commodity_inflow_1,1,2,5,3 >= 0
 R3901: Classic_commodity_inflow_1,1,2,5,4 >= 0
 R3902: sc_commodity_outflow_1,1,2,5 >= 0
 R3903: sc_commodity_inflow_1,1,2,5 >= 0
 R3904: Classic_commodity_outflow_1,1,2,6,0 >= 0
 R3905: Classic_commodity_outflow_1,1,2,6,1 >= 0
 R3906: Classic_commodity_outflow_1,1,2,6,2 >= 0
 R3907: Classic_commodity_outflow_1,1,2,6,3 >= 0
 R3908: Classic_commodity_outflow_1,1,2,6,4 >= 0
 R3909: Classic_commodity_inflow_1,1,2,6,0 >= 0
 R3910: Classic_commodity_inflow_1,1,2,6,1 >= 0
 R3911: Classic_commodity_inflow_1,1,2,6,2 >= 0
 R3912: Classic_commodity_inflow_1,1,2,6,3 >= 0
 R3913: Classic_commodity_inflow_1,1,2,6,4 >= 0
 R3914: sc_commodity_outflow_1,1,2,6 >= 0
 R3915: sc_commodity_inflow_1,1,2,6 >= 0
 R3916: Classic_commodity_outflow_1,1,2,7,0 >= 0
 R3917: Classic_commodity_outflow_1,1,2,7,1 >= 0
 R3918: Classic_commodity_outflow_1,1,2,7,2 >= 0
 R3919: Classic_commodity_outflow_1,1,2,7,3 >= 0
 R3920: Classic_commodity_outflow_1,1,2,7,4 >= 0
 R3921: Classic_commodity_inflow_1,1,2,7,0 >= 0
 R3922: Classic_commodity_inflow_1,1,2,7,1 >= 0
 R3923: Classic_commodity_inflow_1,1,2,7,2 >= 0
 R3924: Classic_commodity_inflow_1,1,2,7,3 >= 0
 R3925: Classic_commodity_inflow_1,1,2,7,4 >= 0
 R3926: sc_commodity_outflow_1,1,2,7 >= 0
 R3927: sc_commodity_inflow_1,1,2,7 >= 0
 R3928: Classic_commodity_outflow_1,1,2,8,0 >= 0
 R3929: Classic_commodity_outflow_1,1,2,8,1 >= 0
 R3930: Classic_commodity_outflow_1,1,2,8,2 >= 0
 R3931: Classic_commodity_outflow_1,1,2,8,3 >= 0
 R3932: Classic_commodity_outflow_1,1,2,8,4 >= 0
 R3933: Classic_commodity_inflow_1,1,2,8,0 >= 0
 R3934: Classic_commodity_inflow_1,1,2,8,1 >= 0
 R3935: Classic_commodity_inflow_1,1,2,8,2 >= 0
 R3936: Classic_commodity_inflow_1,1,2,8,3 >= 0
 R3937: Classic_commodity_inflow_1,1,2,8,4 >= 0
 R3938: sc_commodity_outflow_1,1,2,8 >= 0
 R3939: sc_commodity_inflow_1,1,2,8 >= 0
 R3940: Classic_commodity_outflow_1,2,1,0,0 >= 0
 R3941: Classic_commodity_outflow_1,2,1,0,1 >= 0
 R3942: Classic_commodity_outflow_1,2,1,0,2 >= 0
 R3943: Classic_commodity_outflow_1,2,1,0,3 >= 0
 R3944: Classic_commodity_outflow_1,2,1,0,4 >= 0
 R3945: Classic_commodity_inflow_1,2,1,0,0 >= 0
 R3946: Classic_commodity_inflow_1,2,1,0,1 >= 0
 R3947: Classic_commodity_inflow_1,2,1,0,2 >= 0
 R3948: Classic_commodity_inflow_1,2,1,0,3 >= 0
 R3949: Classic_commodity_inflow_1,2,1,0,4 >= 0
 R3950: sc_commodity_outflow_1,2,1,0 >= 0
 R3951: sc_commodity_inflow_1,2,1,0 >= 0
 R3952: Classic_commodity_outflow_1,2,1,1,0 >= 0
 R3953: Classic_commodity_outflow_1,2,1,1,1 >= 0
 R3954: Classic_commodity_outflow_1,2,1,1,2 >= 0
 R3955: Classic_commodity_outflow_1,2,1,1,3 >= 0
 R3956: Classic_commodity_outflow_1,2,1,1,4 >= 0
 R3957: Classic_commodity_inflow_1,2,1,1,0 >= 0
 R3958: Classic_commodity_inflow_1,2,1,1,1 >= 0
 R3959: Classic_commodity_inflow_1,2,1,1,2 >= 0
 R3960: Classic_commodity_inflow_1,2,1,1,3 >= 0
 R3961: Classic_commodity_inflow_1,2,1,1,4 >= 0
 R3962: sc_commodity_outflow_1,2,1,1 >= 0
 R3963: sc_commodity_inflow_1,2,1,1 >= 0
 R3964: Classic_commodity_outflow_1,2,1,2,0 >= 0
 R3965: Classic_commodity_outflow_1,2,1,2,1 >= 0
 R3966: Classic_commodity_outflow_1,2,1,2,2 >= 0
 R3967: Classic_commodity_outflow_1,2,1,2,3 >= 0
 R3968: Classic_commodity_outflow_1,2,1,2,4 >= 0
 R3969: Classic_commodity_inflow_1,2,1,2,0 >= 0
 R3970: Classic_commodity_inflow_1,2,1,2,1 >= 0
 R3971: Classic_commodity_inflow_1,2,1,2,2 >= 0
 R3972: Classic_commodity_inflow_1,2,1,2,3 >= 0
 R3973: Classic_commodity_inflow_1,2,1,2,4 >= 0
 R3974: sc_commodity_outflow_1,2,1,2 >= 0
 R3975: sc_commodity_inflow_1,2,1,2 >= 0
 R3976: Classic_commodity_outflow_1,2,1,3,0 >= 0
 R3977: Classic_commodity_outflow_1,2,1,3,1 >= 0
 R3978: Classic_commodity_outflow_1,2,1,3,2 >= 0
 R3979: Classic_commodity_outflow_1,2,1,3,3 >= 0
 R3980: Classic_commodity_outflow_1,2,1,3,4 >= 0
 R3981: Classic_commodity_inflow_1,2,1,3,0 >= 0
 R3982: Classic_commodity_inflow_1,2,1,3,1 >= 0
 R3983: Classic_commodity_inflow_1,2,1,3,2 >= 0
 R3984: Classic_commodity_inflow_1,2,1,3,3 >= 0
 R3985: Classic_commodity_inflow_1,2,1,3,4 >= 0
 R3986: sc_commodity_outflow_1,2,1,3 >= 0
 R3987: sc_commodity_inflow_1,2,1,3 >= 0
 R3988: Classic_commodity_outflow_1,2,1,4,0 >= 0
 R3989: Classic_commodity_outflow_1,2,1,4,1 >= 0
 R3990: Classic_commodity_outflow_1,2,1,4,2 >= 0
 R3991: Classic_commodity_outflow_1,2,1,4,3 >= 0
 R3992: Classic_commodity_outflow_1,2,1,4,4 >= 0
 R3993: Classic_commodity_inflow_1,2,1,4,0 >= 0
 R3994: Classic_commodity_inflow_1,2,1,4,1 >= 0
 R3995: Classic_commodity_inflow_1,2,1,4,2 >= 0
 R3996: Classic_commodity_inflow_1,2,1,4,3 >= 0
 R3997: Classic_commodity_inflow_1,2,1,4,4 >= 0
 R3998: sc_commodity_outflow_1,2,1,4 >= 0
 R3999: sc_commodity_inflow_1,2,1,4 >= 0
 R4000: Classic_commodity_outflow_1,2,1,5,0 >= 0
 R4001: Classic_commodity_outflow_1,2,1,5,1 >= 0
 R4002: Classic_commodity_outflow_1,2,1,5,2 >= 0
 R4003: Classic_commodity_outflow_1,2,1,5,3 >= 0
 R4004: Classic_commodity_outflow_1,2,1,5,4 >= 0
 R4005: Classic_commodity_inflow_1,2,1,5,0 >= 0
 R4006: Classic_commodity_inflow_1,2,1,5,1 >= 0
 R4007: Classic_commodity_inflow_1,2,1,5,2 >= 0
 R4008: Classic_commodity_inflow_1,2,1,5,3 >= 0
 R4009: Classic_commodity_inflow_1,2,1,5,4 >= 0
 R4010: sc_commodity_outflow_1,2,1,5 >= 0
 R4011: sc_commodity_inflow_1,2,1,5 >= 0
 R4012: Classic_commodity_outflow_1,2,1,6,0 >= 0
 R4013: Classic_commodity_outflow_1,2,1,6,1 >= 0
 R4014: Classic_commodity_outflow_1,2,1,6,2 >= 0
 R4015: Classic_commodity_outflow_1,2,1,6,3 >= 0
 R4016: Classic_commodity_outflow_1,2,1,6,4 >= 0
 R4017: Classic_commodity_inflow_1,2,1,6,0 >= 0
 R4018: Classic_commodity_inflow_1,2,1,6,1 >= 0
 R4019: Classic_commodity_inflow_1,2,1,6,2 >= 0
 R4020: Classic_commodity_inflow_1,2,1,6,3 >= 0
 R4021: Classic_commodity_inflow_1,2,1,6,4 >= 0
 R4022: sc_commodity_outflow_1,2,1,6 >= 0
 R4023: sc_commodity_inflow_1,2,1,6 >= 0
 R4024: Classic_commodity_outflow_1,2,1,7,0 >= 0
 R4025: Classic_commodity_outflow_1,2,1,7,1 >= 0
 R4026: Classic_commodity_outflow_1,2,1,7,2 >= 0
 R4027: Classic_commodity_outflow_1,2,1,7,3 >= 0
 R4028: Classic_commodity_outflow_1,2,1,7,4 >= 0
 R4029: Classic_commodity_inflow_1,2,1,7,0 >= 0
 R4030: Classic_commodity_inflow_1,2,1,7,1 >= 0
 R4031: Classic_commodity_inflow_1,2,1,7,2 >= 0
 R4032: Classic_commodity_inflow_1,2,1,7,3 >= 0
 R4033: Classic_commodity_inflow_1,2,1,7,4 >= 0
 R4034: sc_commodity_outflow_1,2,1,7 >= 0
 R4035: sc_commodity_inflow_1,2,1,7 >= 0
 R4036: Classic_commodity_outflow_1,2,1,8,0 >= 0
 R4037: Classic_commodity_outflow_1,2,1,8,1 >= 0
 R4038: Classic_commodity_outflow_1,2,1,8,2 >= 0
 R4039: Classic_commodity_outflow_1,2,1,8,3 >= 0
 R4040: Classic_commodity_outflow_1,2,1,8,4 >= 0
 R4041: Classic_commodity_inflow_1,2,1,8,0 >= 0
 R4042: Classic_commodity_inflow_1,2,1,8,1 >= 0
 R4043: Classic_commodity_inflow_1,2,1,8,2 >= 0
 R4044: Classic_commodity_inflow_1,2,1,8,3 >= 0
 R4045: Classic_commodity_inflow_1,2,1,8,4 >= 0
 R4046: sc_commodity_outflow_1,2,1,8 >= 0
 R4047: sc_commodity_inflow_1,2,1,8 >= 0
 R4048: Classic_commodity_outflow_1,2,2,0,0 >= 0
 R4049: Classic_commodity_outflow_1,2,2,0,1 >= 0
 R4050: Classic_commodity_outflow_1,2,2,0,2 >= 0
 R4051: Classic_commodity_outflow_1,2,2,0,3 >= 0
 R4052: Classic_commodity_outflow_1,2,2,0,4 >= 0
 R4053: Classic_commodity_inflow_1,2,2,0,0 >= 0
 R4054: Classic_commodity_inflow_1,2,2,0,1 >= 0
 R4055: Classic_commodity_inflow_1,2,2,0,2 >= 0
 R4056: Classic_commodity_inflow_1,2,2,0,3 >= 0
 R4057: Classic_commodity_inflow_1,2,2,0,4 >= 0
 R4058: sc_commodity_outflow_1,2,2,0 >= 0
 R4059: sc_commodity_inflow_1,2,2,0 >= 0
 R4060: Classic_commodity_outflow_1,2,2,1,0 >= 0
 R4061: Classic_commodity_outflow_1,2,2,1,1 >= 0
 R4062: Classic_commodity_outflow_1,2,2,1,2 >= 0
 R4063: Classic_commodity_outflow_1,2,2,1,3 >= 0
 R4064: Classic_commodity_outflow_1,2,2,1,4 >= 0
 R4065: Classic_commodity_inflow_1,2,2,1,0 >= 0
 R4066: Classic_commodity_inflow_1,2,2,1,1 >= 0
 R4067: Classic_commodity_inflow_1,2,2,1,2 >= 0
 R4068: Classic_commodity_inflow_1,2,2,1,3 >= 0
 R4069: Classic_commodity_inflow_1,2,2,1,4 >= 0
 R4070: sc_commodity_outflow_1,2,2,1 >= 0
 R4071: sc_commodity_inflow_1,2,2,1 >= 0
 R4072: Classic_commodity_outflow_1,2,2,2,0 >= 0
 R4073: Classic_commodity_outflow_1,2,2,2,1 >= 0
 R4074: Classic_commodity_outflow_1,2,2,2,2 >= 0
 R4075: Classic_commodity_outflow_1,2,2,2,3 >= 0
 R4076: Classic_commodity_outflow_1,2,2,2,4 >= 0
 R4077: Classic_commodity_inflow_1,2,2,2,0 >= 0
 R4078: Classic_commodity_inflow_1,2,2,2,1 >= 0
 R4079: Classic_commodity_inflow_1,2,2,2,2 >= 0
 R4080: Classic_commodity_inflow_1,2,2,2,3 >= 0
 R4081: Classic_commodity_inflow_1,2,2,2,4 >= 0
 R4082: sc_commodity_outflow_1,2,2,2 >= 0
 R4083: sc_commodity_inflow_1,2,2,2 >= 0
 R4084: Classic_commodity_outflow_1,2,2,3,0 >= 0
 R4085: Classic_commodity_outflow_1,2,2,3,1 >= 0
 R4086: Classic_commodity_outflow_1,2,2,3,2 >= 0
 R4087: Classic_commodity_outflow_1,2,2,3,3 >= 0
 R4088: Classic_commodity_outflow_1,2,2,3,4 >= 0
 R4089: Classic_commodity_inflow_1,2,2,3,0 >= 0
 R4090: Classic_commodity_inflow_1,2,2,3,1 >= 0
 R4091: Classic_commodity_inflow_1,2,2,3,2 >= 0
 R4092: Classic_commodity_inflow_1,2,2,3,3 >= 0
 R4093: Classic_commodity_inflow_1,2,2,3,4 >= 0
 R4094: sc_commodity_outflow_1,2,2,3 >= 0
 R4095: sc_commodity_inflow_1,2,2,3 >= 0
 R4096: Classic_commodity_outflow_1,2,2,4,0 >= 0
 R4097: Classic_commodity_outflow_1,2,2,4,1 >= 0
 R4098: Classic_commodity_outflow_1,2,2,4,2 >= 0
 R4099: Classic_commodity_outflow_1,2,2,4,3 >= 0
 R4100: Classic_commodity_outflow_1,2,2,4,4 >= 0
 R4101: Classic_commodity_inflow_1,2,2,4,0 >= 0
 R4102: Classic_commodity_inflow_1,2,2,4,1 >= 0
 R4103: Classic_commodity_inflow_1,2,2,4,2 >= 0
 R4104: Classic_commodity_inflow_1,2,2,4,3 >= 0
 R4105: Classic_commodity_inflow_1,2,2,4,4 >= 0
 R4106: sc_commodity_outflow_1,2,2,4 >= 0
 R4107: sc_commodity_inflow_1,2,2,4 >= 0
 R4108: Classic_commodity_outflow_1,2,2,5,0 >= 0
 R4109: Classic_commodity_outflow_1,2,2,5,1 >= 0
 R4110: Classic_commodity_outflow_1,2,2,5,2 >= 0
 R4111: Classic_commodity_outflow_1,2,2,5,3 >= 0
 R4112: Classic_commodity_outflow_1,2,2,5,4 >= 0
 R4113: Classic_commodity_inflow_1,2,2,5,0 >= 0
 R4114: Classic_commodity_inflow_1,2,2,5,1 >= 0
 R4115: Classic_commodity_inflow_1,2,2,5,2 >= 0
 R4116: Classic_commodity_inflow_1,2,2,5,3 >= 0
 R4117: Classic_commodity_inflow_1,2,2,5,4 >= 0
 R4118: sc_commodity_outflow_1,2,2,5 >= 0
 R4119: sc_commodity_inflow_1,2,2,5 >= 0
 R4120: Classic_commodity_outflow_1,2,2,6,0 >= 0
 R4121: Classic_commodity_outflow_1,2,2,6,1 >= 0
 R4122: Classic_commodity_outflow_1,2,2,6,2 >= 0
 R4123: Classic_commodity_outflow_1,2,2,6,3 >= 0
 R4124: Classic_commodity_outflow_1,2,2,6,4 >= 0
 R4125: Classic_commodity_inflow_1,2,2,6,0 >= 0
 R4126: Classic_commodity_inflow_1,2,2,6,1 >= 0
 R4127: Classic_commodity_inflow_1,2,2,6,2 >= 0
 R4128: Classic_commodity_inflow_1,2,2,6,3 >= 0
 R4129: Classic_commodity_inflow_1,2,2,6,4 >= 0
 R4130: sc_commodity_outflow_1,2,2,6 >= 0
 R4131: sc_commodity_inflow_1,2,2,6 >= 0
 R4132: Classic_commodity_outflow_1,2,2,7,0 >= 0
 R4133: Classic_commodity_outflow_1,2,2,7,1 >= 0
 R4134: Classic_commodity_outflow_1,2,2,7,2 >= 0
 R4135: Classic_commodity_outflow_1,2,2,7,3 >= 0
 R4136: Classic_commodity_outflow_1,2,2,7,4 >= 0
 R4137: Classic_commodity_inflow_1,2,2,7,0 >= 0
 R4138: Classic_commodity_inflow_1,2,2,7,1 >= 0
 R4139: Classic_commodity_inflow_1,2,2,7,2 >= 0
 R4140: Classic_commodity_inflow_1,2,2,7,3 >= 0
 R4141: Classic_commodity_inflow_1,2,2,7,4 >= 0
 R4142: sc_commodity_outflow_1,2,2,7 >= 0
 R4143: sc_commodity_inflow_1,2,2,7 >= 0
 R4144: Classic_commodity_outflow_1,2,2,8,0 >= 0
 R4145: Classic_commodity_outflow_1,2,2,8,1 >= 0
 R4146: Classic_commodity_outflow_1,2,2,8,2 >= 0
 R4147: Classic_commodity_outflow_1,2,2,8,3 >= 0
 R4148: Classic_commodity_outflow_1,2,2,8,4 >= 0
 R4149: Classic_commodity_inflow_1,2,2,8,0 >= 0
 R4150: Classic_commodity_inflow_1,2,2,8,1 >= 0
 R4151: Classic_commodity_inflow_1,2,2,8,2 >= 0
 R4152: Classic_commodity_inflow_1,2,2,8,3 >= 0
 R4153: Classic_commodity_inflow_1,2,2,8,4 >= 0
 R4154: sc_commodity_outflow_1,2,2,8 >= 0
 R4155: sc_commodity_inflow_1,2,2,8 >= 0
 R4156: Classic_commodity_outflow_1,2,2,9,0 >= 0
 R4157: Classic_commodity_outflow_1,2,2,9,1 >= 0
 R4158: Classic_commodity_outflow_1,2,2,9,2 >= 0
 R4159: Classic_commodity_outflow_1,2,2,9,3 >= 0
 R4160: Classic_commodity_outflow_1,2,2,9,4 >= 0
 R4161: Classic_commodity_inflow_1,2,2,9,0 >= 0
 R4162: Classic_commodity_inflow_1,2,2,9,1 >= 0
 R4163: Classic_commodity_inflow_1,2,2,9,2 >= 0
 R4164: Classic_commodity_inflow_1,2,2,9,3 >= 0
 R4165: Classic_commodity_inflow_1,2,2,9,4 >= 0
 R4166: sc_commodity_outflow_1,2,2,9 >= 0
 R4167: sc_commodity_inflow_1,2,2,9 >= 0
 R4168: Classic_commodity_outflow_1,2,2,10,0 >= 0
 R4169: Classic_commodity_outflow_1,2,2,10,1 >= 0
 R4170: Classic_commodity_outflow_1,2,2,10,2 >= 0
 R4171: Classic_commodity_outflow_1,2,2,10,3 >= 0
 R4172: Classic_commodity_outflow_1,2,2,10,4 >= 0
 R4173: Classic_commodity_inflow_1,2,2,10,0 >= 0
 R4174: Classic_commodity_inflow_1,2,2,10,1 >= 0
 R4175: Classic_commodity_inflow_1,2,2,10,2 >= 0
 R4176: Classic_commodity_inflow_1,2,2,10,3 >= 0
 R4177: Classic_commodity_inflow_1,2,2,10,4 >= 0
 R4178: sc_commodity_outflow_1,2,2,10 >= 0
 R4179: sc_commodity_inflow_1,2,2,10 >= 0
 R4180: Classic_commodity_outflow_1,2,3,0,0 >= 0
 R4181: Classic_commodity_outflow_1,2,3,0,1 >= 0
 R4182: Classic_commodity_outflow_1,2,3,0,2 >= 0
 R4183: Classic_commodity_outflow_1,2,3,0,3 >= 0
 R4184: Classic_commodity_outflow_1,2,3,0,4 >= 0
 R4185: Classic_commodity_inflow_1,2,3,0,0 >= 0
 R4186: Classic_commodity_inflow_1,2,3,0,1 >= 0
 R4187: Classic_commodity_inflow_1,2,3,0,2 >= 0
 R4188: Classic_commodity_inflow_1,2,3,0,3 >= 0
 R4189: Classic_commodity_inflow_1,2,3,0,4 >= 0
 R4190: sc_commodity_outflow_1,2,3,0 >= 0
 R4191: sc_commodity_inflow_1,2,3,0 >= 0
 R4192: Classic_commodity_outflow_1,2,3,1,0 >= 0
 R4193: Classic_commodity_outflow_1,2,3,1,1 >= 0
 R4194: Classic_commodity_outflow_1,2,3,1,2 >= 0
 R4195: Classic_commodity_outflow_1,2,3,1,3 >= 0
 R4196: Classic_commodity_outflow_1,2,3,1,4 >= 0
 R4197: Classic_commodity_inflow_1,2,3,1,0 >= 0
 R4198: Classic_commodity_inflow_1,2,3,1,1 >= 0
 R4199: Classic_commodity_inflow_1,2,3,1,2 >= 0
 R4200: Classic_commodity_inflow_1,2,3,1,3 >= 0
 R4201: Classic_commodity_inflow_1,2,3,1,4 >= 0
 R4202: sc_commodity_outflow_1,2,3,1 >= 0
 R4203: sc_commodity_inflow_1,2,3,1 >= 0
 R4204: Classic_commodity_outflow_1,2,3,2,0 >= 0
 R4205: Classic_commodity_outflow_1,2,3,2,1 >= 0
 R4206: Classic_commodity_outflow_1,2,3,2,2 >= 0
 R4207: Classic_commodity_outflow_1,2,3,2,3 >= 0
 R4208: Classic_commodity_outflow_1,2,3,2,4 >= 0
 R4209: Classic_commodity_inflow_1,2,3,2,0 >= 0
 R4210: Classic_commodity_inflow_1,2,3,2,1 >= 0
 R4211: Classic_commodity_inflow_1,2,3,2,2 >= 0
 R4212: Classic_commodity_inflow_1,2,3,2,3 >= 0
 R4213: Classic_commodity_inflow_1,2,3,2,4 >= 0
 R4214: sc_commodity_outflow_1,2,3,2 >= 0
 R4215: sc_commodity_inflow_1,2,3,2 >= 0
 R4216: Classic_commodity_outflow_1,2,3,3,0 >= 0
 R4217: Classic_commodity_outflow_1,2,3,3,1 >= 0
 R4218: Classic_commodity_outflow_1,2,3,3,2 >= 0
 R4219: Classic_commodity_outflow_1,2,3,3,3 >= 0
 R4220: Classic_commodity_outflow_1,2,3,3,4 >= 0
 R4221: Classic_commodity_inflow_1,2,3,3,0 >= 0
 R4222: Classic_commodity_inflow_1,2,3,3,1 >= 0
 R4223: Classic_commodity_inflow_1,2,3,3,2 >= 0
 R4224: Classic_commodity_inflow_1,2,3,3,3 >= 0
 R4225: Classic_commodity_inflow_1,2,3,3,4 >= 0
 R4226: sc_commodity_outflow_1,2,3,3 >= 0
 R4227: sc_commodity_inflow_1,2,3,3 >= 0
 R4228: Classic_commodity_outflow_1,2,3,4,0 >= 0
 R4229: Classic_commodity_outflow_1,2,3,4,1 >= 0
 R4230: Classic_commodity_outflow_1,2,3,4,2 >= 0
 R4231: Classic_commodity_outflow_1,2,3,4,3 >= 0
 R4232: Classic_commodity_outflow_1,2,3,4,4 >= 0
 R4233: Classic_commodity_inflow_1,2,3,4,0 >= 0
 R4234: Classic_commodity_inflow_1,2,3,4,1 >= 0
 R4235: Classic_commodity_inflow_1,2,3,4,2 >= 0
 R4236: Classic_commodity_inflow_1,2,3,4,3 >= 0
 R4237: Classic_commodity_inflow_1,2,3,4,4 >= 0
 R4238: sc_commodity_outflow_1,2,3,4 >= 0
 R4239: sc_commodity_inflow_1,2,3,4 >= 0
 R4240: Classic_commodity_outflow_1,2,3,5,0 >= 0
 R4241: Classic_commodity_outflow_1,2,3,5,1 >= 0
 R4242: Classic_commodity_outflow_1,2,3,5,2 >= 0
 R4243: Classic_commodity_outflow_1,2,3,5,3 >= 0
 R4244: Classic_commodity_outflow_1,2,3,5,4 >= 0
 R4245: Classic_commodity_inflow_1,2,3,5,0 >= 0
 R4246: Classic_commodity_inflow_1,2,3,5,1 >= 0
 R4247: Classic_commodity_inflow_1,2,3,5,2 >= 0
 R4248: Classic_commodity_inflow_1,2,3,5,3 >= 0
 R4249: Classic_commodity_inflow_1,2,3,5,4 >= 0
 R4250: sc_commodity_outflow_1,2,3,5 >= 0
 R4251: sc_commodity_inflow_1,2,3,5 >= 0
 R4252: Classic_commodity_outflow_1,2,3,6,0 >= 0
 R4253: Classic_commodity_outflow_1,2,3,6,1 >= 0
 R4254: Classic_commodity_outflow_1,2,3,6,2 >= 0
 R4255: Classic_commodity_outflow_1,2,3,6,3 >= 0
 R4256: Classic_commodity_outflow_1,2,3,6,4 >= 0
 R4257: Classic_commodity_inflow_1,2,3,6,0 >= 0
 R4258: Classic_commodity_inflow_1,2,3,6,1 >= 0
 R4259: Classic_commodity_inflow_1,2,3,6,2 >= 0
 R4260: Classic_commodity_inflow_1,2,3,6,3 >= 0
 R4261: Classic_commodity_inflow_1,2,3,6,4 >= 0
 R4262: sc_commodity_outflow_1,2,3,6 >= 0
 R4263: sc_commodity_inflow_1,2,3,6 >= 0
 R4264: Classic_commodity_outflow_1,2,3,7,0 >= 0
 R4265: Classic_commodity_outflow_1,2,3,7,1 >= 0
 R4266: Classic_commodity_outflow_1,2,3,7,2 >= 0
 R4267: Classic_commodity_outflow_1,2,3,7,3 >= 0
 R4268: Classic_commodity_outflow_1,2,3,7,4 >= 0
 R4269: Classic_commodity_inflow_1,2,3,7,0 >= 0
 R4270: Classic_commodity_inflow_1,2,3,7,1 >= 0
 R4271: Classic_commodity_inflow_1,2,3,7,2 >= 0
 R4272: Classic_commodity_inflow_1,2,3,7,3 >= 0
 R4273: Classic_commodity_inflow_1,2,3,7,4 >= 0
 R4274: sc_commodity_outflow_1,2,3,7 >= 0
 R4275: sc_commodity_inflow_1,2,3,7 >= 0
 R4276: Classic_commodity_outflow_1,2,3,8,0 >= 0
 R4277: Classic_commodity_outflow_1,2,3,8,1 >= 0
 R4278: Classic_commodity_outflow_1,2,3,8,2 >= 0
 R4279: Classic_commodity_outflow_1,2,3,8,3 >= 0
 R4280: Classic_commodity_outflow_1,2,3,8,4 >= 0
 R4281: Classic_commodity_inflow_1,2,3,8,0 >= 0
 R4282: Classic_commodity_inflow_1,2,3,8,1 >= 0
 R4283: Classic_commodity_inflow_1,2,3,8,2 >= 0
 R4284: Classic_commodity_inflow_1,2,3,8,3 >= 0
 R4285: Classic_commodity_inflow_1,2,3,8,4 >= 0
 R4286: sc_commodity_outflow_1,2,3,8 >= 0
 R4287: sc_commodity_inflow_1,2,3,8 >= 0
 R4288: Classic_commodity_outflow_1,2,3,9,0 >= 0
 R4289: Classic_commodity_outflow_1,2,3,9,1 >= 0
 R4290: Classic_commodity_outflow_1,2,3,9,2 >= 0
 R4291: Classic_commodity_outflow_1,2,3,9,3 >= 0
 R4292: Classic_commodity_outflow_1,2,3,9,4 >= 0
 R4293: Classic_commodity_inflow_1,2,3,9,0 >= 0
 R4294: Classic_commodity_inflow_1,2,3,9,1 >= 0
 R4295: Classic_commodity_inflow_1,2,3,9,2 >= 0
 R4296: Classic_commodity_inflow_1,2,3,9,3 >= 0
 R4297: Classic_commodity_inflow_1,2,3,9,4 >= 0
 R4298: sc_commodity_outflow_1,2,3,9 >= 0
 R4299: sc_commodity_inflow_1,2,3,9 >= 0
 R4300: Classic_commodity_outflow_1,2,3,10,0 >= 0
 R4301: Classic_commodity_outflow_1,2,3,10,1 >= 0
 R4302: Classic_commodity_outflow_1,2,3,10,2 >= 0
 R4303: Classic_commodity_outflow_1,2,3,10,3 >= 0
 R4304: Classic_commodity_outflow_1,2,3,10,4 >= 0
 R4305: Classic_commodity_inflow_1,2,3,10,0 >= 0
 R4306: Classic_commodity_inflow_1,2,3,10,1 >= 0
 R4307: Classic_commodity_inflow_1,2,3,10,2 >= 0
 R4308: Classic_commodity_inflow_1,2,3,10,3 >= 0
 R4309: Classic_commodity_inflow_1,2,3,10,4 >= 0
 R4310: sc_commodity_outflow_1,2,3,10 >= 0
 R4311: sc_commodity_inflow_1,2,3,10 >= 0
 R4312: Classic_commodity_outflow_1,3,2,0,0 >= 0
 R4313: Classic_commodity_outflow_1,3,2,0,1 >= 0
 R4314: Classic_commodity_outflow_1,3,2,0,2 >= 0
 R4315: Classic_commodity_outflow_1,3,2,0,3 >= 0
 R4316: Classic_commodity_outflow_1,3,2,0,4 >= 0
 R4317: Classic_commodity_inflow_1,3,2,0,0 >= 0
 R4318: Classic_commodity_inflow_1,3,2,0,1 >= 0
 R4319: Classic_commodity_inflow_1,3,2,0,2 >= 0
 R4320: Classic_commodity_inflow_1,3,2,0,3 >= 0
 R4321: Classic_commodity_inflow_1,3,2,0,4 >= 0
 R4322: sc_commodity_outflow_1,3,2,0 >= 0
 R4323: sc_commodity_inflow_1,3,2,0 >= 0
 R4324: Classic_commodity_outflow_1,3,2,1,0 >= 0
 R4325: Classic_commodity_outflow_1,3,2,1,1 >= 0
 R4326: Classic_commodity_outflow_1,3,2,1,2 >= 0
 R4327: Classic_commodity_outflow_1,3,2,1,3 >= 0
 R4328: Classic_commodity_outflow_1,3,2,1,4 >= 0
 R4329: Classic_commodity_inflow_1,3,2,1,0 >= 0
 R4330: Classic_commodity_inflow_1,3,2,1,1 >= 0
 R4331: Classic_commodity_inflow_1,3,2,1,2 >= 0
 R4332: Classic_commodity_inflow_1,3,2,1,3 >= 0
 R4333: Classic_commodity_inflow_1,3,2,1,4 >= 0
 R4334: sc_commodity_outflow_1,3,2,1 >= 0
 R4335: sc_commodity_inflow_1,3,2,1 >= 0
 R4336: Classic_commodity_outflow_1,3,2,2,0 >= 0
 R4337: Classic_commodity_outflow_1,3,2,2,1 >= 0
 R4338: Classic_commodity_outflow_1,3,2,2,2 >= 0
 R4339: Classic_commodity_outflow_1,3,2,2,3 >= 0
 R4340: Classic_commodity_outflow_1,3,2,2,4 >= 0
 R4341: Classic_commodity_inflow_1,3,2,2,0 >= 0
 R4342: Classic_commodity_inflow_1,3,2,2,1 >= 0
 R4343: Classic_commodity_inflow_1,3,2,2,2 >= 0
 R4344: Classic_commodity_inflow_1,3,2,2,3 >= 0
 R4345: Classic_commodity_inflow_1,3,2,2,4 >= 0
 R4346: sc_commodity_outflow_1,3,2,2 >= 0
 R4347: sc_commodity_inflow_1,3,2,2 >= 0
 R4348: Classic_commodity_outflow_1,3,2,3,0 >= 0
 R4349: Classic_commodity_outflow_1,3,2,3,1 >= 0
 R4350: Classic_commodity_outflow_1,3,2,3,2 >= 0
 R4351: Classic_commodity_outflow_1,3,2,3,3 >= 0
 R4352: Classic_commodity_outflow_1,3,2,3,4 >= 0
 R4353: Classic_commodity_inflow_1,3,2,3,0 >= 0
 R4354: Classic_commodity_inflow_1,3,2,3,1 >= 0
 R4355: Classic_commodity_inflow_1,3,2,3,2 >= 0
 R4356: Classic_commodity_inflow_1,3,2,3,3 >= 0
 R4357: Classic_commodity_inflow_1,3,2,3,4 >= 0
 R4358: sc_commodity_outflow_1,3,2,3 >= 0
 R4359: sc_commodity_inflow_1,3,2,3 >= 0
 R4360: Classic_commodity_outflow_1,3,2,4,0 >= 0
 R4361: Classic_commodity_outflow_1,3,2,4,1 >= 0
 R4362: Classic_commodity_outflow_1,3,2,4,2 >= 0
 R4363: Classic_commodity_outflow_1,3,2,4,3 >= 0
 R4364: Classic_commodity_outflow_1,3,2,4,4 >= 0
 R4365: Classic_commodity_inflow_1,3,2,4,0 >= 0
 R4366: Classic_commodity_inflow_1,3,2,4,1 >= 0
 R4367: Classic_commodity_inflow_1,3,2,4,2 >= 0
 R4368: Classic_commodity_inflow_1,3,2,4,3 >= 0
 R4369: Classic_commodity_inflow_1,3,2,4,4 >= 0
 R4370: sc_commodity_outflow_1,3,2,4 >= 0
 R4371: sc_commodity_inflow_1,3,2,4 >= 0
 R4372: Classic_commodity_outflow_1,3,2,5,0 >= 0
 R4373: Classic_commodity_outflow_1,3,2,5,1 >= 0
 R4374: Classic_commodity_outflow_1,3,2,5,2 >= 0
 R4375: Classic_commodity_outflow_1,3,2,5,3 >= 0
 R4376: Classic_commodity_outflow_1,3,2,5,4 >= 0
 R4377: Classic_commodity_inflow_1,3,2,5,0 >= 0
 R4378: Classic_commodity_inflow_1,3,2,5,1 >= 0
 R4379: Classic_commodity_inflow_1,3,2,5,2 >= 0
 R4380: Classic_commodity_inflow_1,3,2,5,3 >= 0
 R4381: Classic_commodity_inflow_1,3,2,5,4 >= 0
 R4382: sc_commodity_outflow_1,3,2,5 >= 0
 R4383: sc_commodity_inflow_1,3,2,5 >= 0
 R4384: Classic_commodity_outflow_1,3,2,6,0 >= 0
 R4385: Classic_commodity_outflow_1,3,2,6,1 >= 0
 R4386: Classic_commodity_outflow_1,3,2,6,2 >= 0
 R4387: Classic_commodity_outflow_1,3,2,6,3 >= 0
 R4388: Classic_commodity_outflow_1,3,2,6,4 >= 0
 R4389: Classic_commodity_inflow_1,3,2,6,0 >= 0
 R4390: Classic_commodity_inflow_1,3,2,6,1 >= 0
 R4391: Classic_commodity_inflow_1,3,2,6,2 >= 0
 R4392: Classic_commodity_inflow_1,3,2,6,3 >= 0
 R4393: Classic_commodity_inflow_1,3,2,6,4 >= 0
 R4394: sc_commodity_outflow_1,3,2,6 >= 0
 R4395: sc_commodity_inflow_1,3,2,6 >= 0
 R4396: Classic_commodity_outflow_1,3,2,7,0 >= 0
 R4397: Classic_commodity_outflow_1,3,2,7,1 >= 0
 R4398: Classic_commodity_outflow_1,3,2,7,2 >= 0
 R4399: Classic_commodity_outflow_1,3,2,7,3 >= 0
 R4400: Classic_commodity_outflow_1,3,2,7,4 >= 0
 R4401: Classic_commodity_inflow_1,3,2,7,0 >= 0
 R4402: Classic_commodity_inflow_1,3,2,7,1 >= 0
 R4403: Classic_commodity_inflow_1,3,2,7,2 >= 0
 R4404: Classic_commodity_inflow_1,3,2,7,3 >= 0
 R4405: Classic_commodity_inflow_1,3,2,7,4 >= 0
 R4406: sc_commodity_outflow_1,3,2,7 >= 0
 R4407: sc_commodity_inflow_1,3,2,7 >= 0
 R4408: Classic_commodity_outflow_1,3,2,8,0 >= 0
 R4409: Classic_commodity_outflow_1,3,2,8,1 >= 0
 R4410: Classic_commodity_outflow_1,3,2,8,2 >= 0
 R4411: Classic_commodity_outflow_1,3,2,8,3 >= 0
 R4412: Classic_commodity_outflow_1,3,2,8,4 >= 0
 R4413: Classic_commodity_inflow_1,3,2,8,0 >= 0
 R4414: Classic_commodity_inflow_1,3,2,8,1 >= 0
 R4415: Classic_commodity_inflow_1,3,2,8,2 >= 0
 R4416: Classic_commodity_inflow_1,3,2,8,3 >= 0
 R4417: Classic_commodity_inflow_1,3,2,8,4 >= 0
 R4418: sc_commodity_outflow_1,3,2,8 >= 0
 R4419: sc_commodity_inflow_1,3,2,8 >= 0
 R4420: Classic_commodity_outflow_1,3,2,9,0 >= 0
 R4421: Classic_commodity_outflow_1,3,2,9,1 >= 0
 R4422: Classic_commodity_outflow_1,3,2,9,2 >= 0
 R4423: Classic_commodity_outflow_1,3,2,9,3 >= 0
 R4424: Classic_commodity_outflow_1,3,2,9,4 >= 0
 R4425: Classic_commodity_inflow_1,3,2,9,0 >= 0
 R4426: Classic_commodity_inflow_1,3,2,9,1 >= 0
 R4427: Classic_commodity_inflow_1,3,2,9,2 >= 0
 R4428: Classic_commodity_inflow_1,3,2,9,3 >= 0
 R4429: Classic_commodity_inflow_1,3,2,9,4 >= 0
 R4430: sc_commodity_outflow_1,3,2,9 >= 0
 R4431: sc_commodity_inflow_1,3,2,9 >= 0
 R4432: Classic_commodity_outflow_1,3,2,10,0 >= 0
 R4433: Classic_commodity_outflow_1,3,2,10,1 >= 0
 R4434: Classic_commodity_outflow_1,3,2,10,2 >= 0
 R4435: Classic_commodity_outflow_1,3,2,10,3 >= 0
 R4436: Classic_commodity_outflow_1,3,2,10,4 >= 0
 R4437: Classic_commodity_inflow_1,3,2,10,0 >= 0
 R4438: Classic_commodity_inflow_1,3,2,10,1 >= 0
 R4439: Classic_commodity_inflow_1,3,2,10,2 >= 0
 R4440: Classic_commodity_inflow_1,3,2,10,3 >= 0
 R4441: Classic_commodity_inflow_1,3,2,10,4 >= 0
 R4442: sc_commodity_outflow_1,3,2,10 >= 0
 R4443: sc_commodity_inflow_1,3,2,10 >= 0
 R4444: Classic_commodity_outflow_1,3,3,0,0 >= 0
 R4445: Classic_commodity_outflow_1,3,3,0,1 >= 0
 R4446: Classic_commodity_outflow_1,3,3,0,2 >= 0
 R4447: Classic_commodity_outflow_1,3,3,0,3 >= 0
 R4448: Classic_commodity_outflow_1,3,3,0,4 >= 0
 R4449: Classic_commodity_inflow_1,3,3,0,0 >= 0
 R4450: Classic_commodity_inflow_1,3,3,0,1 >= 0
 R4451: Classic_commodity_inflow_1,3,3,0,2 >= 0
 R4452: Classic_commodity_inflow_1,3,3,0,3 >= 0
 R4453: Classic_commodity_inflow_1,3,3,0,4 >= 0
 R4454: sc_commodity_outflow_1,3,3,0 >= 0
 R4455: sc_commodity_inflow_1,3,3,0 >= 0
 R4456: Classic_commodity_outflow_1,3,3,1,0 >= 0
 R4457: Classic_commodity_outflow_1,3,3,1,1 >= 0
 R4458: Classic_commodity_outflow_1,3,3,1,2 >= 0
 R4459: Classic_commodity_outflow_1,3,3,1,3 >= 0
 R4460: Classic_commodity_outflow_1,3,3,1,4 >= 0
 R4461: Classic_commodity_inflow_1,3,3,1,0 >= 0
 R4462: Classic_commodity_inflow_1,3,3,1,1 >= 0
 R4463: Classic_commodity_inflow_1,3,3,1,2 >= 0
 R4464: Classic_commodity_inflow_1,3,3,1,3 >= 0
 R4465: Classic_commodity_inflow_1,3,3,1,4 >= 0
 R4466: sc_commodity_outflow_1,3,3,1 >= 0
 R4467: sc_commodity_inflow_1,3,3,1 >= 0
 R4468: Classic_commodity_outflow_1,3,3,2,0 >= 0
 R4469: Classic_commodity_outflow_1,3,3,2,1 >= 0
 R4470: Classic_commodity_outflow_1,3,3,2,2 >= 0
 R4471: Classic_commodity_outflow_1,3,3,2,3 >= 0
 R4472: Classic_commodity_outflow_1,3,3,2,4 >= 0
 R4473: Classic_commodity_inflow_1,3,3,2,0 >= 0
 R4474: Classic_commodity_inflow_1,3,3,2,1 >= 0
 R4475: Classic_commodity_inflow_1,3,3,2,2 >= 0
 R4476: Classic_commodity_inflow_1,3,3,2,3 >= 0
 R4477: Classic_commodity_inflow_1,3,3,2,4 >= 0
 R4478: sc_commodity_outflow_1,3,3,2 >= 0
 R4479: sc_commodity_inflow_1,3,3,2 >= 0
 R4480: Classic_commodity_outflow_1,3,3,3,0 >= 0
 R4481: Classic_commodity_outflow_1,3,3,3,1 >= 0
 R4482: Classic_commodity_outflow_1,3,3,3,2 >= 0
 R4483: Classic_commodity_outflow_1,3,3,3,3 >= 0
 R4484: Classic_commodity_outflow_1,3,3,3,4 >= 0
 R4485: Classic_commodity_inflow_1,3,3,3,0 >= 0
 R4486: Classic_commodity_inflow_1,3,3,3,1 >= 0
 R4487: Classic_commodity_inflow_1,3,3,3,2 >= 0
 R4488: Classic_commodity_inflow_1,3,3,3,3 >= 0
 R4489: Classic_commodity_inflow_1,3,3,3,4 >= 0
 R4490: sc_commodity_outflow_1,3,3,3 >= 0
 R4491: sc_commodity_inflow_1,3,3,3 >= 0
 R4492: Classic_commodity_outflow_1,3,3,4,0 >= 0
 R4493: Classic_commodity_outflow_1,3,3,4,1 >= 0
 R4494: Classic_commodity_outflow_1,3,3,4,2 >= 0
 R4495: Classic_commodity_outflow_1,3,3,4,3 >= 0
 R4496: Classic_commodity_outflow_1,3,3,4,4 >= 0
 R4497: Classic_commodity_inflow_1,3,3,4,0 >= 0
 R4498: Classic_commodity_inflow_1,3,3,4,1 >= 0
 R4499: Classic_commodity_inflow_1,3,3,4,2 >= 0
 R4500: Classic_commodity_inflow_1,3,3,4,3 >= 0
 R4501: Classic_commodity_inflow_1,3,3,4,4 >= 0
 R4502: sc_commodity_outflow_1,3,3,4 >= 0
 R4503: sc_commodity_inflow_1,3,3,4 >= 0
 R4504: Classic_commodity_outflow_1,3,3,5,0 >= 0
 R4505: Classic_commodity_outflow_1,3,3,5,1 >= 0
 R4506: Classic_commodity_outflow_1,3,3,5,2 >= 0
 R4507: Classic_commodity_outflow_1,3,3,5,3 >= 0
 R4508: Classic_commodity_outflow_1,3,3,5,4 >= 0
 R4509: Classic_commodity_inflow_1,3,3,5,0 >= 0
 R4510: Classic_commodity_inflow_1,3,3,5,1 >= 0
 R4511: Classic_commodity_inflow_1,3,3,5,2 >= 0
 R4512: Classic_commodity_inflow_1,3,3,5,3 >= 0
 R4513: Classic_commodity_inflow_1,3,3,5,4 >= 0
 R4514: sc_commodity_outflow_1,3,3,5 >= 0
 R4515: sc_commodity_inflow_1,3,3,5 >= 0
 R4516: Classic_commodity_outflow_1,3,3,6,0 >= 0
 R4517: Classic_commodity_outflow_1,3,3,6,1 >= 0
 R4518: Classic_commodity_outflow_1,3,3,6,2 >= 0
 R4519: Classic_commodity_outflow_1,3,3,6,3 >= 0
 R4520: Classic_commodity_outflow_1,3,3,6,4 >= 0
 R4521: Classic_commodity_inflow_1,3,3,6,0 >= 0
 R4522: Classic_commodity_inflow_1,3,3,6,1 >= 0
 R4523: Classic_commodity_inflow_1,3,3,6,2 >= 0
 R4524: Classic_commodity_inflow_1,3,3,6,3 >= 0
 R4525: Classic_commodity_inflow_1,3,3,6,4 >= 0
 R4526: sc_commodity_outflow_1,3,3,6 >= 0
 R4527: sc_commodity_inflow_1,3,3,6 >= 0
 R4528: Classic_commodity_outflow_1,3,3,7,0 >= 0
 R4529: Classic_commodity_outflow_1,3,3,7,1 >= 0
 R4530: Classic_commodity_outflow_1,3,3,7,2 >= 0
 R4531: Classic_commodity_outflow_1,3,3,7,3 >= 0
 R4532: Classic_commodity_outflow_1,3,3,7,4 >= 0
 R4533: Classic_commodity_inflow_1,3,3,7,0 >= 0
 R4534: Classic_commodity_inflow_1,3,3,7,1 >= 0
 R4535: Classic_commodity_inflow_1,3,3,7,2 >= 0
 R4536: Classic_commodity_inflow_1,3,3,7,3 >= 0
 R4537: Classic_commodity_inflow_1,3,3,7,4 >= 0
 R4538: sc_commodity_outflow_1,3,3,7 >= 0
 R4539: sc_commodity_inflow_1,3,3,7 >= 0
 R4540: Classic_commodity_outflow_1,3,3,8,0 >= 0
 R4541: Classic_commodity_outflow_1,3,3,8,1 >= 0
 R4542: Classic_commodity_outflow_1,3,3,8,2 >= 0
 R4543: Classic_commodity_outflow_1,3,3,8,3 >= 0
 R4544: Classic_commodity_outflow_1,3,3,8,4 >= 0
 R4545: Classic_commodity_inflow_1,3,3,8,0 >= 0
 R4546: Classic_commodity_inflow_1,3,3,8,1 >= 0
 R4547: Classic_commodity_inflow_1,3,3,8,2 >= 0
 R4548: Classic_commodity_inflow_1,3,3,8,3 >= 0
 R4549: Classic_commodity_inflow_1,3,3,8,4 >= 0
 R4550: sc_commodity_outflow_1,3,3,8 >= 0
 R4551: sc_commodity_inflow_1,3,3,8 >= 0
 R4552: Classic_commodity_outflow_1,3,3,9,0 >= 0
 R4553: Classic_commodity_outflow_1,3,3,9,1 >= 0
 R4554: Classic_commodity_outflow_1,3,3,9,2 >= 0
 R4555: Classic_commodity_outflow_1,3,3,9,3 >= 0
 R4556: Classic_commodity_outflow_1,3,3,9,4 >= 0
 R4557: Classic_commodity_inflow_1,3,3,9,0 >= 0
 R4558: Classic_commodity_inflow_1,3,3,9,1 >= 0
 R4559: Classic_commodity_inflow_1,3,3,9,2 >= 0
 R4560: Classic_commodity_inflow_1,3,3,9,3 >= 0
 R4561: Classic_commodity_inflow_1,3,3,9,4 >= 0
 R4562: sc_commodity_outflow_1,3,3,9 >= 0
 R4563: sc_commodity_inflow_1,3,3,9 >= 0
 R4564: Classic_commodity_outflow_1,3,3,10,0 >= 0
 R4565: Classic_commodity_outflow_1,3,3,10,1 >= 0
 R4566: Classic_commodity_outflow_1,3,3,10,2 >= 0
 R4567: Classic_commodity_outflow_1,3,3,10,3 >= 0
 R4568: Classic_commodity_outflow_1,3,3,10,4 >= 0
 R4569: Classic_commodity_inflow_1,3,3,10,0 >= 0
 R4570: Classic_commodity_inflow_1,3,3,10,1 >= 0
 R4571: Classic_commodity_inflow_1,3,3,10,2 >= 0
 R4572: Classic_commodity_inflow_1,3,3,10,3 >= 0
 R4573: Classic_commodity_inflow_1,3,3,10,4 >= 0
 R4574: sc_commodity_outflow_1,3,3,10 >= 0
 R4575: sc_commodity_inflow_1,3,3,10 >= 0
Bounds
Generals
 Classic_commodity_outflow_0,0,0,0,0 Classic_commodity_outflow_0,0,0,1,0
 Classic_commodity_outflow_0,0,0,2,0 Classic_commodity_outflow_0,0,0,3,0
 Classic_commodity_outflow_0,0,0,4,0 Classic_commodity_outflow_0,0,0,5,0
 Classic_commodity_outflow_0,0,0,6,0 Classic_commodity_outflow_0,0,0,7,0
 Classic_commodity_outflow_0,0,0,8,0 Classic_commodity_outflow_0,0,0,9,0
 Classic_commodity_outflow_0,0,0,10,0 Classic_commodity_outflow_0,0,1,0,0
 Classic_commodity_outflow_0,0,1,1,0 Classic_commodity_outflow_0,0,1,2,0
 Classic_commodity_outflow_0,0,1,3,0 Classic_commodity_outflow_0,0,1,4,0
 Classic_commodity_outflow_0,0,1,5,0 Classic_commodity_outflow_0,0,1,6,0
 Classic_commodity_outflow_0,0,1,7,0 Classic_commodity_outflow_0,0,1,8,0
 Classic_commodity_outflow_0,0,1,9,0 Classic_commodity_outflow_0,0,1,10,0
 Classic_commodity_outflow_0,1,0,0,0 Classic_commodity_outflow_0,1,0,1,0
 Classic_commodity_outflow_0,1,0,2,0 Classic_commodity_outflow_0,1,0,3,0
 Classic_commodity_outflow_0,1,0,4,0 Classic_commodity_outflow_0,1,0,5,0
 Classic_commodity_outflow_0,1,0,6,0 Classic_commodity_outflow_0,1,0,7,0
 Classic_commodity_outflow_0,1,0,8,0 Classic_commodity_outflow_0,1,0,9,0
 Classic_commodity_outflow_0,1,0,10,0 Classic_commodity_outflow_0,1,1,0,0
 Classic_commodity_outflow_0,1,1,1,0 Classic_commodity_outflow_0,1,1,2,0
 Classic_commodity_outflow_0,1,1,3,0 Classic_commodity_outflow_0,1,1,4,0
 Classic_commodity_outflow_0,1,1,5,0 Classic_commodity_outflow_0,1,1,6,0
 Classic_commodity_outflow_0,1,1,7,0 Classic_commodity_outflow_0,1,1,8,0
 Classic_commodity_outflow_0,1,1,9,0 Classic_commodity_outflow_0,1,1,10,0
 Classic_commodity_outflow_0,1,2,0,0 Classic_commodity_outflow_0,1,2,1,0
 Classic_commodity_outflow_0,1,2,2,0 Classic_commodity_outflow_0,1,2,3,0
 Classic_commodity_outflow_0,1,2,4,0 Classic_commodity_outflow_0,1,2,5,0
 Classic_commodity_outflow_0,1,2,6,0 Classic_commodity_outflow_0,1,2,7,0
 Classic_commodity_outflow_0,1,2,8,0 Classic_commodity_outflow_0,2,1,0,0
 Classic_commodity_outflow_0,2,1,1,0 Classic_commodity_outflow_0,2,1,2,0
 Classic_commodity_outflow_0,2,1,3,0 Classic_commodity_outflow_0,2,1,4,0
 Classic_commodity_outflow_0,2,1,5,0 Classic_commodity_outflow_0,2,1,6,0
 Classic_commodity_outflow_0,2,1,7,0 Classic_commodity_outflow_0,2,1,8,0
 Classic_commodity_outflow_0,2,2,0,0 Classic_commodity_outflow_0,2,2,1,0
 Classic_commodity_outflow_0,2,2,2,0 Classic_commodity_outflow_0,2,2,3,0
 Classic_commodity_outflow_0,2,2,4,0 Classic_commodity_outflow_0,2,2,5,0
 Classic_commodity_outflow_0,2,2,6,0 Classic_commodity_outflow_0,2,2,7,0
 Classic_commodity_outflow_0,2,2,8,0 Classic_commodity_outflow_0,2,2,9,0
 Classic_commodity_outflow_0,2,2,10,0 Classic_commodity_outflow_0,2,3,0,0
 Classic_commodity_outflow_0,2,3,1,0 Classic_commodity_outflow_0,2,3,2,0
 Classic_commodity_outflow_0,2,3,3,0 Classic_commodity_outflow_0,2,3,4,0
 Classic_commodity_outflow_0,2,3,5,0 Classic_commodity_outflow_0,2,3,6,0
 Classic_commodity_outflow_0,2,3,7,0 Classic_commodity_outflow_0,2,3,8,0
 Classic_commodity_outflow_0,2,3,9,0 Classic_commodity_outflow_0,2,3,10,0
 Classic_commodity_outflow_0,3,2,0,0 Classic_commodity_outflow_0,3,2,1,0
 Classic_commodity_outflow_0,3,2,2,0 Classic_commodity_outflow_0,3,2,3,0
 Classic_commodity_outflow_0,3,2,4,0 Classic_commodity_outflow_0,3,2,5,0
 Classic_commodity_outflow_0,3,2,6,0 Classic_commodity_outflow_0,3,2,7,0
 Classic_commodity_outflow_0,3,2,8,0 Classic_commodity_outflow_0,3,2,9,0
 Classic_commodity_outflow_0,3,2,10,0 Classic_commodity_outflow_0,3,3,0,0
 Classic_commodity_outflow_0,3,3,1,0 Classic_commodity_outflow_0,3,3,2,0
 Classic_commodity_outflow_0,3,3,3,0 Classic_commodity_outflow_0,3,3,4,0
 Classic_commodity_outflow_0,3,3,5,0 Classic_commodity_outflow_0,3,3,6,0
 Classic_commodity_outflow_0,3,3,7,0 Classic_commodity_outflow_0,3,3,8,0
 Classic_commodity_outflow_0,3,3,9,0 Classic_commodity_outflow_0,3,3,10,0
 Classic_commodity_outflow_1,0,0,0,0 Classic_commodity_outflow_1,0,0,1,0
 Classic_commodity_outflow_1,0,0,2,0 Classic_commodity_outflow_1,0,0,3,0
 Classic_commodity_outflow_1,0,0,4,0 Classic_commodity_outflow_1,0,0,5,0
 Classic_commodity_outflow_1,0,0,6,0 Classic_commodity_outflow_1,0,0,7,0
 Classic_commodity_outflow_1,0,0,8,0 Classic_commodity_outflow_1,0,0,9,0
 Classic_commodity_outflow_1,0,0,10,0 Classic_commodity_outflow_1,0,1,0,0
 Classic_commodity_outflow_1,0,1,1,0 Classic_commodity_outflow_1,0,1,2,0
 Classic_commodity_outflow_1,0,1,3,0 Classic_commodity_outflow_1,0,1,4,0
 Classic_commodity_outflow_1,0,1,5,0 Classic_commodity_outflow_1,0,1,6,0
 Classic_commodity_outflow_1,0,1,7,0 Classic_commodity_outflow_1,0,1,8,0
 Classic_commodity_outflow_1,0,1,9,0 Classic_commodity_outflow_1,0,1,10,0
 Classic_commodity_outflow_1,1,0,0,0 Classic_commodity_outflow_1,1,0,1,0
 Classic_commodity_outflow_1,1,0,2,0 Classic_commodity_outflow_1,1,0,3,0
 Classic_commodity_outflow_1,1,0,4,0 Classic_commodity_outflow_1,1,0,5,0
 Classic_commodity_outflow_1,1,0,6,0 Classic_commodity_outflow_1,1,0,7,0
 Classic_commodity_outflow_1,1,0,8,0 Classic_commodity_outflow_1,1,0,9,0
 Classic_commodity_outflow_1,1,0,10,0 Classic_commodity_outflow_1,1,1,0,0
 Classic_commodity_outflow_1,1,1,1,0 Classic_commodity_outflow_1,1,1,2,0
 Classic_commodity_outflow_1,1,1,3,0 Classic_commodity_outflow_1,1,1,4,0
 Classic_commodity_outflow_1,1,1,5,0 Classic_commodity_outflow_1,1,1,6,0
 Classic_commodity_outflow_1,1,1,7,0 Classic_commodity_outflow_1,1,1,8,0
 Classic_commodity_outflow_1,1,1,9,0 Classic_commodity_outflow_1,1,1,10,0
 Classic_commodity_outflow_1,1,2,0,0 Classic_commodity_outflow_1,1,2,1,0
 Classic_commodity_outflow_1,1,2,2,0 Classic_commodity_outflow_1,1,2,3,0
 Classic_commodity_outflow_1,1,2,4,0 Classic_commodity_outflow_1,1,2,5,0
 Classic_commodity_outflow_1,1,2,6,0 Classic_commodity_outflow_1,1,2,7,0
 Classic_commodity_outflow_1,1,2,8,0 Classic_commodity_outflow_1,2,1,0,0
 Classic_commodity_outflow_1,2,1,1,0 Classic_commodity_outflow_1,2,1,2,0
 Classic_commodity_outflow_1,2,1,3,0 Classic_commodity_outflow_1,2,1,4,0
 Classic_commodity_outflow_1,2,1,5,0 Classic_commodity_outflow_1,2,1,6,0
 Classic_commodity_outflow_1,2,1,7,0 Classic_commodity_outflow_1,2,1,8,0
 Classic_commodity_outflow_1,2,2,0,0 Classic_commodity_outflow_1,2,2,1,0
 Classic_commodity_outflow_1,2,2,2,0 Classic_commodity_outflow_1,2,2,3,0
 Classic_commodity_outflow_1,2,2,4,0 Classic_commodity_outflow_1,2,2,5,0
 Classic_commodity_outflow_1,2,2,6,0 Classic_commodity_outflow_1,2,2,7,0
 Classic_commodity_outflow_1,2,2,8,0 Classic_commodity_outflow_1,2,2,9,0
 Classic_commodity_outflow_1,2,2,10,0 Classic_commodity_outflow_1,2,3,0,0
 Classic_commodity_outflow_1,2,3,1,0 Classic_commodity_outflow_1,2,3,2,0
 Classic_commodity_outflow_1,2,3,3,0 Classic_commodity_outflow_1,2,3,4,0
 Classic_commodity_outflow_1,2,3,5,0 Classic_commodity_outflow_1,2,3,6,0
 Classic_commodity_outflow_1,2,3,7,0 Classic_commodity_outflow_1,2,3,8,0
 Classic_commodity_outflow_1,2,3,9,0 Classic_commodity_outflow_1,2,3,10,0
 Classic_commodity_outflow_1,3,2,0,0 Classic_commodity_outflow_1,3,2,1,0
 Classic_commodity_outflow_1,3,2,2,0 Classic_commodity_outflow_1,3,2,3,0
 Classic_commodity_outflow_1,3,2,4,0 Classic_commodity_outflow_1,3,2,5,0
 Classic_commodity_outflow_1,3,2,6,0 Classic_commodity_outflow_1,3,2,7,0
 Classic_commodity_outflow_1,3,2,8,0 Classic_commodity_outflow_1,3,2,9,0
 Classic_commodity_outflow_1,3,2,10,0 Classic_commodity_outflow_1,3,3,0,0
 Classic_commodity_outflow_1,3,3,1,0 Classic_commodity_outflow_1,3,3,2,0
 Classic_commodity_outflow_1,3,3,3,0 Classic_commodity_outflow_1,3,3,4,0
 Classic_commodity_outflow_1,3,3,5,0 Classic_commodity_outflow_1,3,3,6,0
 Classic_commodity_outflow_1,3,3,7,0 Classic_commodity_outflow_1,3,3,8,0
 Classic_commodity_outflow_1,3,3,9,0 Classic_commodity_outflow_1,3,3,10,0
 Classic_commodity_inflow_0,0,0,0,0 Classic_commodity_inflow_0,0,0,1,0
 Classic_commodity_inflow_0,0,0,2,0 Classic_commodity_inflow_0,0,0,3,0
 Classic_commodity_inflow_0,0,0,4,0 Classic_commodity_inflow_0,0,0,5,0
 Classic_commodity_inflow_0,0,0,6,0 Classic_commodity_inflow_0,0,0,7,0
 Classic_commodity_inflow_0,0,0,8,0 Classic_commodity_inflow_0,0,0,9,0
 Classic_commodity_inflow_0,0,0,10,0 Classic_commodity_inflow_0,0,1,0,0
 Classic_commodity_inflow_0,0,1,1,0 Classic_commodity_inflow_0,0,1,2,0
 Classic_commodity_inflow_0,0,1,3,0 Classic_commodity_inflow_0,0,1,4,0
 Classic_commodity_inflow_0,0,1,5,0 Classic_commodity_inflow_0,0,1,6,0
 Classic_commodity_inflow_0,0,1,7,0 Classic_commodity_inflow_0,0,1,8,0
 Classic_commodity_inflow_0,0,1,9,0 Classic_commodity_inflow_0,0,1,10,0
 Classic_commodity_inflow_0,1,0,0,0 Classic_commodity_inflow_0,1,0,1,0
 Classic_commodity_inflow_0,1,0,2,0 Classic_commodity_inflow_0,1,0,3,0
 Classic_commodity_inflow_0,1,0,4,0 Classic_commodity_inflow_0,1,0,5,0
 Classic_commodity_inflow_0,1,0,6,0 Classic_commodity_inflow_0,1,0,7,0
 Classic_commodity_inflow_0,1,0,8,0 Classic_commodity_inflow_0,1,0,9,0
 Classic_commodity_inflow_0,1,0,10,0 Classic_commodity_inflow_0,1,1,0,0
 Classic_commodity_inflow_0,1,1,1,0 Classic_commodity_inflow_0,1,1,2,0
 Classic_commodity_inflow_0,1,1,3,0 Classic_commodity_inflow_0,1,1,4,0
 Classic_commodity_inflow_0,1,1,5,0 Classic_commodity_inflow_0,1,1,6,0
 Classic_commodity_inflow_0,1,1,7,0 Classic_commodity_inflow_0,1,1,8,0
 Classic_commodity_inflow_0,1,1,9,0 Classic_commodity_inflow_0,1,1,10,0
 Classic_commodity_inflow_0,1,2,0,0 Classic_commodity_inflow_0,1,2,1,0
 Classic_commodity_inflow_0,1,2,2,0 Classic_commodity_inflow_0,1,2,3,0
 Classic_commodity_inflow_0,1,2,4,0 Classic_commodity_inflow_0,1,2,5,0
 Classic_commodity_inflow_0,1,2,6,0 Classic_commodity_inflow_0,1,2,7,0
 Classic_commodity_inflow_0,1,2,8,0 Classic_commodity_inflow_0,2,1,0,0
 Classic_commodity_inflow_0,2,1,1,0 Classic_commodity_inflow_0,2,1,2,0
 Classic_commodity_inflow_0,2,1,3,0 Classic_commodity_inflow_0,2,1,4,0
 Classic_commodity_inflow_0,2,1,5,0 Classic_commodity_inflow_0,2,1,6,0
 Classic_commodity_inflow_0,2,1,7,0 Classic_commodity_inflow_0,2,1,8,0
 Classic_commodity_inflow_0,2,2,0,0 Classic_commodity_inflow_0,2,2,1,0
 Classic_commodity_inflow_0,2,2,2,0 Classic_commodity_inflow_0,2,2,3,0
 Classic_commodity_inflow_0,2,2,4,0 Classic_commodity_inflow_0,2,2,5,0
 Classic_commodity_inflow_0,2,2,6,0 Classic_commodity_inflow_0,2,2,7,0
 Classic_commodity_inflow_0,2,2,8,0 Classic_commodity_inflow_0,2,2,9,0
 Classic_commodity_inflow_0,2,2,10,0 Classic_commodity_inflow_0,2,3,0,0
 Classic_commodity_inflow_0,2,3,1,0 Classic_commodity_inflow_0,2,3,2,0
 Classic_commodity_inflow_0,2,3,3,0 Classic_commodity_inflow_0,2,3,4,0
 Classic_commodity_inflow_0,2,3,5,0 Classic_commodity_inflow_0,2,3,6,0
 Classic_commodity_inflow_0,2,3,7,0 Classic_commodity_inflow_0,2,3,8,0
 Classic_commodity_inflow_0,2,3,9,0 Classic_commodity_inflow_0,2,3,10,0
 Classic_commodity_inflow_0,3,2,0,0 Classic_commodity_inflow_0,3,2,1,0
 Classic_commodity_inflow_0,3,2,2,0 Classic_commodity_inflow_0,3,2,3,0
 Classic_commodity_inflow_0,3,2,4,0 Classic_commodity_inflow_0,3,2,5,0
 Classic_commodity_inflow_0,3,2,6,0 Classic_commodity_inflow_0,3,2,7,0
 Classic_commodity_inflow_0,3,2,8,0 Classic_commodity_inflow_0,3,2,9,0
 Classic_commodity_inflow_0,3,2,10,0 Classic_commodity_inflow_0,3,3,0,0
 Classic_commodity_inflow_0,3,3,1,0 Classic_commodity_inflow_0,3,3,2,0
 Classic_commodity_inflow_0,3,3,3,0 Classic_commodity_inflow_0,3,3,4,0
 Classic_commodity_inflow_0,3,3,5,0 Classic_commodity_inflow_0,3,3,6,0
 Classic_commodity_inflow_0,3,3,7,0 Classic_commodity_inflow_0,3,3,8,0
 Classic_commodity_inflow_0,3,3,9,0 Classic_commodity_inflow_0,3,3,10,0
 Classic_commodity_inflow_1,0,0,0,0 Classic_commodity_inflow_1,0,0,1,0
 Classic_commodity_inflow_1,0,0,2,0 Classic_commodity_inflow_1,0,0,3,0
 Classic_commodity_inflow_1,0,0,4,0 Classic_commodity_inflow_1,0,0,5,0
 Classic_commodity_inflow_1,0,0,6,0 Classic_commodity_inflow_1,0,0,7,0
 Classic_commodity_inflow_1,0,0,8,0 Classic_commodity_inflow_1,0,0,9,0
 Classic_commodity_inflow_1,0,0,10,0 Classic_commodity_inflow_1,0,1,0,0
 Classic_commodity_inflow_1,0,1,1,0 Classic_commodity_inflow_1,0,1,2,0
 Classic_commodity_inflow_1,0,1,3,0 Classic_commodity_inflow_1,0,1,4,0
 Classic_commodity_inflow_1,0,1,5,0 Classic_commodity_inflow_1,0,1,6,0
 Classic_commodity_inflow_1,0,1,7,0 Classic_commodity_inflow_1,0,1,8,0
 Classic_commodity_inflow_1,0,1,9,0 Classic_commodity_inflow_1,0,1,10,0
 Classic_commodity_inflow_1,1,0,0,0 Classic_commodity_inflow_1,1,0,1,0
 Classic_commodity_inflow_1,1,0,2,0 Classic_commodity_inflow_1,1,0,3,0
 Classic_commodity_inflow_1,1,0,4,0 Classic_commodity_inflow_1,1,0,5,0
 Classic_commodity_inflow_1,1,0,6,0 Classic_commodity_inflow_1,1,0,7,0
 Classic_commodity_inflow_1,1,0,8,0 Classic_commodity_inflow_1,1,0,9,0
 Classic_commodity_inflow_1,1,0,10,0 Classic_commodity_inflow_1,1,1,0,0
 Classic_commodity_inflow_1,1,1,1,0 Classic_commodity_inflow_1,1,1,2,0
 Classic_commodity_inflow_1,1,1,3,0 Classic_commodity_inflow_1,1,1,4,0
 Classic_commodity_inflow_1,1,1,5,0 Classic_commodity_inflow_1,1,1,6,0
 Classic_commodity_inflow_1,1,1,7,0 Classic_commodity_inflow_1,1,1,8,0
 Classic_commodity_inflow_1,1,1,9,0 Classic_commodity_inflow_1,1,1,10,0
 Classic_commodity_inflow_1,1,2,0,0 Classic_commodity_inflow_1,1,2,1,0
 Classic_commodity_inflow_1,1,2,2,0 Classic_commodity_inflow_1,1,2,3,0
 Classic_commodity_inflow_1,1,2,4,0 Classic_commodity_inflow_1,1,2,5,0
 Classic_commodity_inflow_1,1,2,6,0 Classic_commodity_inflow_1,1,2,7,0
 Classic_commodity_inflow_1,1,2,8,0 Classic_commodity_inflow_1,2,1,0,0
 Classic_commodity_inflow_1,2,1,1,0 Classic_commodity_inflow_1,2,1,2,0
 Classic_commodity_inflow_1,2,1,3,0 Classic_commodity_inflow_1,2,1,4,0
 Classic_commodity_inflow_1,2,1,5,0 Classic_commodity_inflow_1,2,1,6,0
 Classic_commodity_inflow_1,2,1,7,0 Classic_commodity_inflow_1,2,1,8,0
 Classic_commodity_inflow_1,2,2,0,0 Classic_commodity_inflow_1,2,2,1,0
 Classic_commodity_inflow_1,2,2,2,0 Classic_commodity_inflow_1,2,2,3,0
 Classic_commodity_inflow_1,2,2,4,0 Classic_commodity_inflow_1,2,2,5,0
 Classic_commodity_inflow_1,2,2,6,0 Classic_commodity_inflow_1,2,2,7,0
 Classic_commodity_inflow_1,2,2,8,0 Classic_commodity_inflow_1,2,2,9,0
 Classic_commodity_inflow_1,2,2,10,0 Classic_commodity_inflow_1,2,3,0,0
 Classic_commodity_inflow_1,2,3,1,0 Classic_commodity_inflow_1,2,3,2,0
 Classic_commodity_inflow_1,2,3,3,0 Classic_commodity_inflow_1,2,3,4,0
 Classic_commodity_inflow_1,2,3,5,0 Classic_commodity_inflow_1,2,3,6,0
 Classic_commodity_inflow_1,2,3,7,0 Classic_commodity_inflow_1,2,3,8,0
 Classic_commodity_inflow_1,2,3,9,0 Classic_commodity_inflow_1,2,3,10,0
 Classic_commodity_inflow_1,3,2,0,0 Classic_commodity_inflow_1,3,2,1,0
 Classic_commodity_inflow_1,3,2,2,0 Classic_commodity_inflow_1,3,2,3,0
 Classic_commodity_inflow_1,3,2,4,0 Classic_commodity_inflow_1,3,2,5,0
 Classic_commodity_inflow_1,3,2,6,0 Classic_commodity_inflow_1,3,2,7,0
 Classic_commodity_inflow_1,3,2,8,0 Classic_commodity_inflow_1,3,2,9,0
 Classic_commodity_inflow_1,3,2,10,0 Classic_commodity_inflow_1,3,3,0,0
 Classic_commodity_inflow_1,3,3,1,0 Classic_commodity_inflow_1,3,3,2,0
 Classic_commodity_inflow_1,3,3,3,0 Classic_commodity_inflow_1,3,3,4,0
 Classic_commodity_inflow_1,3,3,5,0 Classic_commodity_inflow_1,3,3,6,0
 Classic_commodity_inflow_1,3,3,7,0 Classic_commodity_inflow_1,3,3,8,0
 Classic_commodity_inflow_1,3,3,9,0 Classic_commodity_inflow_1,3,3,10,0
 sc_commodity_outflow_0,0,0,0 sc_commodity_outflow_0,0,0,1
 sc_commodity_outflow_0,0,0,2 sc_commodity_outflow_0,0,0,3
 sc_commodity_outflow_0,0,0,4 sc_commodity_outflow_0,0,0,5
 sc_commodity_outflow_0,0,0,6 sc_commodity_outflow_0,0,0,7
 sc_commodity_outflow_0,0,0,8 sc_commodity_outflow_0,0,0,9
 sc_commodity_outflow_0,0,0,10 sc_commodity_outflow_0,0,1,0
 sc_commodity_outflow_0,0,1,1 sc_commodity_outflow_0,0,1,2
 sc_commodity_outflow_0,0,1,3 sc_commodity_outflow_0,0,1,4
 sc_commodity_outflow_0,0,1,5 sc_commodity_outflow_0,0,1,6
 sc_commodity_outflow_0,0,1,7 sc_commodity_outflow_0,0,1,8
 sc_commodity_outflow_0,0,1,9 sc_commodity_outflow_0,0,1,10
 sc_commodity_outflow_0,1,0,0 sc_commodity_outflow_0,1,0,1
 sc_commodity_outflow_0,1,0,2 sc_commodity_outflow_0,1,0,3
 sc_commodity_outflow_0,1,0,4 sc_commodity_outflow_0,1,0,5
 sc_commodity_outflow_0,1,0,6 sc_commodity_outflow_0,1,0,7
 sc_commodity_outflow_0,1,0,8 sc_commodity_outflow_0,1,0,9
 sc_commodity_outflow_0,1,0,10 sc_commodity_outflow_0,1,1,0
 sc_commodity_outflow_0,1,1,1 sc_commodity_outflow_0,1,1,2
 sc_commodity_outflow_0,1,1,3 sc_commodity_outflow_0,1,1,4
 sc_commodity_outflow_0,1,1,5 sc_commodity_outflow_0,1,1,6
 sc_commodity_outflow_0,1,1,7 sc_commodity_outflow_0,1,1,8
 sc_commodity_outflow_0,1,1,9 sc_commodity_outflow_0,1,1,10
 sc_commodity_outflow_0,1,2,0 sc_commodity_outflow_0,1,2,1
 sc_commodity_outflow_0,1,2,2 sc_commodity_outflow_0,1,2,3
 sc_commodity_outflow_0,1,2,4 sc_commodity_outflow_0,1,2,5
 sc_commodity_outflow_0,1,2,6 sc_commodity_outflow_0,1,2,7
 sc_commodity_outflow_0,1,2,8 sc_commodity_outflow_0,2,1,0
 sc_commodity_outflow_0,2,1,1 sc_commodity_outflow_0,2,1,2
 sc_commodity_outflow_0,2,1,3 sc_commodity_outflow_0,2,1,4
 sc_commodity_outflow_0,2,1,5 sc_commodity_outflow_0,2,1,6
 sc_commodity_outflow_0,2,1,7 sc_commodity_outflow_0,2,1,8
 sc_commodity_outflow_0,2,2,0 sc_commodity_outflow_0,2,2,1
 sc_commodity_outflow_0,2,2,2 sc_commodity_outflow_0,2,2,3
 sc_commodity_outflow_0,2,2,4 sc_commodity_outflow_0,2,2,5
 sc_commodity_outflow_0,2,2,6 sc_commodity_outflow_0,2,2,7
 sc_commodity_outflow_0,2,2,8 sc_commodity_outflow_0,2,2,9
 sc_commodity_outflow_0,2,2,10 sc_commodity_outflow_0,2,3,0
 sc_commodity_outflow_0,2,3,1 sc_commodity_outflow_0,2,3,2
 sc_commodity_outflow_0,2,3,3 sc_commodity_outflow_0,2,3,4
 sc_commodity_outflow_0,2,3,5 sc_commodity_outflow_0,2,3,6
 sc_commodity_outflow_0,2,3,7 sc_commodity_outflow_0,2,3,8
 sc_commodity_outflow_0,2,3,9 sc_commodity_outflow_0,2,3,10
 sc_commodity_outflow_0,3,2,0 sc_commodity_outflow_0,3,2,1
 sc_commodity_outflow_0,3,2,2 sc_commodity_outflow_0,3,2,3
 sc_commodity_outflow_0,3,2,4 sc_commodity_outflow_0,3,2,5
 sc_commodity_outflow_0,3,2,6 sc_commodity_outflow_0,3,2,7
 sc_commodity_outflow_0,3,2,8 sc_commodity_outflow_0,3,2,9
 sc_commodity_outflow_0,3,2,10 sc_commodity_outflow_0,3,3,0
 sc_commodity_outflow_0,3,3,1 sc_commodity_outflow_0,3,3,2
 sc_commodity_outflow_0,3,3,3 sc_commodity_outflow_0,3,3,4
 sc_commodity_outflow_0,3,3,5 sc_commodity_outflow_0,3,3,6
 sc_commodity_outflow_0,3,3,7 sc_commodity_outflow_0,3,3,8
 sc_commodity_outflow_0,3,3,9 sc_commodity_outflow_0,3,3,10
 sc_commodity_outflow_1,0,0,0 sc_commodity_outflow_1,0,0,1
 sc_commodity_outflow_1,0,0,2 sc_commodity_outflow_1,0,0,3
 sc_commodity_outflow_1,0,0,4 sc_commodity_outflow_1,0,0,5
 sc_commodity_outflow_1,0,0,6 sc_commodity_outflow_1,0,0,7
 sc_commodity_outflow_1,0,0,8 sc_commodity_outflow_1,0,0,9
 sc_commodity_outflow_1,0,0,10 sc_commodity_outflow_1,0,1,0
 sc_commodity_outflow_1,0,1,1 sc_commodity_outflow_1,0,1,2
 sc_commodity_outflow_1,0,1,3 sc_commodity_outflow_1,0,1,4
 sc_commodity_outflow_1,0,1,5 sc_commodity_outflow_1,0,1,6
 sc_commodity_outflow_1,0,1,7 sc_commodity_outflow_1,0,1,8
 sc_commodity_outflow_1,0,1,9 sc_commodity_outflow_1,0,1,10
 sc_commodity_outflow_1,1,0,0 sc_commodity_outflow_1,1,0,1
 sc_commodity_outflow_1,1,0,2 sc_commodity_outflow_1,1,0,3
 sc_commodity_outflow_1,1,0,4 sc_commodity_outflow_1,1,0,5
 sc_commodity_outflow_1,1,0,6 sc_commodity_outflow_1,1,0,7
 sc_commodity_outflow_1,1,0,8 sc_commodity_outflow_1,1,0,9
 sc_commodity_outflow_1,1,0,10 sc_commodity_outflow_1,1,1,0
 sc_commodity_outflow_1,1,1,1 sc_commodity_outflow_1,1,1,2
 sc_commodity_outflow_1,1,1,3 sc_commodity_outflow_1,1,1,4
 sc_commodity_outflow_1,1,1,5 sc_commodity_outflow_1,1,1,6
 sc_commodity_outflow_1,1,1,7 sc_commodity_outflow_1,1,1,8
 sc_commodity_outflow_1,1,1,9 sc_commodity_outflow_1,1,1,10
 sc_commodity_outflow_1,1,2,0 sc_commodity_outflow_1,1,2,1
 sc_commodity_outflow_1,1,2,2 sc_commodity_outflow_1,1,2,3
 sc_commodity_outflow_1,1,2,4 sc_commodity_outflow_1,1,2,5
 sc_commodity_outflow_1,1,2,6 sc_commodity_outflow_1,1,2,7
 sc_commodity_outflow_1,1,2,8 sc_commodity_outflow_1,2,1,0
 sc_commodity_outflow_1,2,1,1 sc_commodity_outflow_1,2,1,2
 sc_commodity_outflow_1,2,1,3 sc_commodity_outflow_1,2,1,4
 sc_commodity_outflow_1,2,1,5 sc_commodity_outflow_1,2,1,6
 sc_commodity_outflow_1,2,1,7 sc_commodity_outflow_1,2,1,8
 sc_commodity_outflow_1,2,2,0 sc_commodity_outflow_1,2,2,1
 sc_commodity_outflow_1,2,2,2 sc_commodity_outflow_1,2,2,3
 sc_commodity_outflow_1,2,2,4 sc_commodity_outflow_1,2,2,5
 sc_commodity_outflow_1,2,2,6 sc_commodity_outflow_1,2,2,7
 sc_commodity_outflow_1,2,2,8 sc_commodity_outflow_1,2,2,9
 sc_commodity_outflow_1,2,2,10 sc_commodity_outflow_1,2,3,0
 sc_commodity_outflow_1,2,3,1 sc_commodity_outflow_1,2,3,2
 sc_commodity_outflow_1,2,3,3 sc_commodity_outflow_1,2,3,4
 sc_commodity_outflow_1,2,3,5 sc_commodity_outflow_1,2,3,6
 sc_commodity_outflow_1,2,3,7 sc_commodity_outflow_1,2,3,8
 sc_commodity_outflow_1,2,3,9 sc_commodity_outflow_1,2,3,10
 sc_commodity_outflow_1,3,2,0 sc_commodity_outflow_1,3,2,1
 sc_commodity_outflow_1,3,2,2 sc_commodity_outflow_1,3,2,3
 sc_commodity_outflow_1,3,2,4 sc_commodity_outflow_1,3,2,5
 sc_commodity_outflow_1,3,2,6 sc_commodity_outflow_1,3,2,7
 sc_commodity_outflow_1,3,2,8 sc_commodity_outflow_1,3,2,9
 sc_commodity_outflow_1,3,2,10 sc_commodity_outflow_1,3,3,0
 sc_commodity_outflow_1,3,3,1 sc_commodity_outflow_1,3,3,2
 sc_commodity_outflow_1,3,3,3 sc_commodity_outflow_1,3,3,4
 sc_commodity_outflow_1,3,3,5 sc_commodity_outflow_1,3,3,6
 sc_commodity_outflow_1,3,3,7 sc_commodity_outflow_1,3,3,8
 sc_commodity_outflow_1,3,3,9 sc_commodity_outflow_1,3,3,10
 sc_commodity_inflow_0,0,0,0 sc_commodity_inflow_0,0,0,1
 sc_commodity_inflow_0,0,0,2 sc_commodity_inflow_0,0,0,3
 sc_commodity_inflow_0,0,0,4 sc_commodity_inflow_0,0,0,5
 sc_commodity_inflow_0,0,0,6 sc_commodity_inflow_0,0,0,7
 sc_commodity_inflow_0,0,0,8 sc_commodity_inflow_0,0,0,9
 sc_commodity_inflow_0,0,0,10 sc_commodity_inflow_0,0,1,0
 sc_commodity_inflow_0,0,1,1 sc_commodity_inflow_0,0,1,2
 sc_commodity_inflow_0,0,1,3 sc_commodity_inflow_0,0,1,4
 sc_commodity_inflow_0,0,1,5 sc_commodity_inflow_0,0,1,6
 sc_commodity_inflow_0,0,1,7 sc_commodity_inflow_0,0,1,8
 sc_commodity_inflow_0,0,1,9 sc_commodity_inflow_0,0,1,10
 sc_commodity_inflow_0,1,0,0 sc_commodity_inflow_0,1,0,1
 sc_commodity_inflow_0,1,0,2 sc_commodity_inflow_0,1,0,3
 sc_commodity_inflow_0,1,0,4 sc_commodity_inflow_0,1,0,5
 sc_commodity_inflow_0,1,0,6 sc_commodity_inflow_0,1,0,7
 sc_commodity_inflow_0,1,0,8 sc_commodity_inflow_0,1,0,9
 sc_commodity_inflow_0,1,0,10 sc_commodity_inflow_0,1,1,0
 sc_commodity_inflow_0,1,1,1 sc_commodity_inflow_0,1,1,2
 sc_commodity_inflow_0,1,1,3 sc_commodity_inflow_0,1,1,4
 sc_commodity_inflow_0,1,1,5 sc_commodity_inflow_0,1,1,6
 sc_commodity_inflow_0,1,1,7 sc_commodity_inflow_0,1,1,8
 sc_commodity_inflow_0,1,1,9 sc_commodity_inflow_0,1,1,10
 sc_commodity_inflow_0,1,2,0 sc_commodity_inflow_0,1,2,1
 sc_commodity_inflow_0,1,2,2 sc_commodity_inflow_0,1,2,3
 sc_commodity_inflow_0,1,2,4 sc_commodity_inflow_0,1,2,5
 sc_commodity_inflow_0,1,2,6 sc_commodity_inflow_0,1,2,7
 sc_commodity_inflow_0,1,2,8 sc_commodity_inflow_0,2,1,0
 sc_commodity_inflow_0,2,1,1 sc_commodity_inflow_0,2,1,2
 sc_commodity_inflow_0,2,1,3 sc_commodity_inflow_0,2,1,4
 sc_commodity_inflow_0,2,1,5 sc_commodity_inflow_0,2,1,6
 sc_commodity_inflow_0,2,1,7 sc_commodity_inflow_0,2,1,8
 sc_commodity_inflow_0,2,2,0 sc_commodity_inflow_0,2,2,1
 sc_commodity_inflow_0,2,2,2 sc_commodity_inflow_0,2,2,3
 sc_commodity_inflow_0,2,2,4 sc_commodity_inflow_0,2,2,5
 sc_commodity_inflow_0,2,2,6 sc_commodity_inflow_0,2,2,7
 sc_commodity_inflow_0,2,2,8 sc_commodity_inflow_0,2,2,9
 sc_commodity_inflow_0,2,2,10 sc_commodity_inflow_0,2,3,0
 sc_commodity_inflow_0,2,3,1 sc_commodity_inflow_0,2,3,2
 sc_commodity_inflow_0,2,3,3 sc_commodity_inflow_0,2,3,4
 sc_commodity_inflow_0,2,3,5 sc_commodity_inflow_0,2,3,6
 sc_commodity_inflow_0,2,3,7 sc_commodity_inflow_0,2,3,8
 sc_commodity_inflow_0,2,3,9 sc_commodity_inflow_0,2,3,10
 sc_commodity_inflow_0,3,2,0 sc_commodity_inflow_0,3,2,1
 sc_commodity_inflow_0,3,2,2 sc_commodity_inflow_0,3,2,3
 sc_commodity_inflow_0,3,2,4 sc_commodity_inflow_0,3,2,5
 sc_commodity_inflow_0,3,2,6 sc_commodity_inflow_0,3,2,7
 sc_commodity_inflow_0,3,2,8 sc_commodity_inflow_0,3,2,9
 sc_commodity_inflow_0,3,2,10 sc_commodity_inflow_0,3,3,0
 sc_commodity_inflow_0,3,3,1 sc_commodity_inflow_0,3,3,2
 sc_commodity_inflow_0,3,3,3 sc_commodity_inflow_0,3,3,4
 sc_commodity_inflow_0,3,3,5 sc_commodity_inflow_0,3,3,6
 sc_commodity_inflow_0,3,3,7 sc_commodity_inflow_0,3,3,8
 sc_commodity_inflow_0,3,3,9 sc_commodity_inflow_0,3,3,10
 sc_commodity_inflow_1,0,0,0 sc_commodity_inflow_1,0,0,1
 sc_commodity_inflow_1,0,0,2 sc_commodity_inflow_1,0,0,3
 sc_commodity_inflow_1,0,0,4 sc_commodity_inflow_1,0,0,5
 sc_commodity_inflow_1,0,0,6 sc_commodity_inflow_1,0,0,7
 sc_commodity_inflow_1,0,0,8 sc_commodity_inflow_1,0,0,9
 sc_commodity_inflow_1,0,0,10 sc_commodity_inflow_1,0,1,0
 sc_commodity_inflow_1,0,1,1 sc_commodity_inflow_1,0,1,2
 sc_commodity_inflow_1,0,1,3 sc_commodity_inflow_1,0,1,4
 sc_commodity_inflow_1,0,1,5 sc_commodity_inflow_1,0,1,6
 sc_commodity_inflow_1,0,1,7 sc_commodity_inflow_1,0,1,8
 sc_commodity_inflow_1,0,1,9 sc_commodity_inflow_1,0,1,10
 sc_commodity_inflow_1,1,0,0 sc_commodity_inflow_1,1,0,1
 sc_commodity_inflow_1,1,0,2 sc_commodity_inflow_1,1,0,3
 sc_commodity_inflow_1,1,0,4 sc_commodity_inflow_1,1,0,5
 sc_commodity_inflow_1,1,0,6 sc_commodity_inflow_1,1,0,7
 sc_commodity_inflow_1,1,0,8 sc_commodity_inflow_1,1,0,9
 sc_commodity_inflow_1,1,0,10 sc_commodity_inflow_1,1,1,0
 sc_commodity_inflow_1,1,1,1 sc_commodity_inflow_1,1,1,2
 sc_commodity_inflow_1,1,1,3 sc_commodity_inflow_1,1,1,4
 sc_commodity_inflow_1,1,1,5 sc_commodity_inflow_1,1,1,6
 sc_commodity_inflow_1,1,1,7 sc_commodity_inflow_1,1,1,8
 sc_commodity_inflow_1,1,1,9 sc_commodity_inflow_1,1,1,10
 sc_commodity_inflow_1,1,2,0 sc_commodity_inflow_1,1,2,1
 sc_commodity_inflow_1,1,2,2 sc_commodity_inflow_1,1,2,3
 sc_commodity_inflow_1,1,2,4 sc_commodity_inflow_1,1,2,5
 sc_commodity_inflow_1,1,2,6 sc_commodity_inflow_1,1,2,7
 sc_commodity_inflow_1,1,2,8 sc_commodity_inflow_1,2,1,0
 sc_commodity_inflow_1,2,1,1 sc_commodity_inflow_1,2,1,2
 sc_commodity_inflow_1,2,1,3 sc_commodity_inflow_1,2,1,4
 sc_commodity_inflow_1,2,1,5 sc_commodity_inflow_1,2,1,6
 sc_commodity_inflow_1,2,1,7 sc_commodity_inflow_1,2,1,8
 sc_commodity_inflow_1,2,2,0 sc_commodity_inflow_1,2,2,1
 sc_commodity_inflow_1,2,2,2 sc_commodity_inflow_1,2,2,3
 sc_commodity_inflow_1,2,2,4 sc_commodity_inflow_1,2,2,5
 sc_commodity_inflow_1,2,2,6 sc_commodity_inflow_1,2,2,7
 sc_commodity_inflow_1,2,2,8 sc_commodity_inflow_1,2,2,9
 sc_commodity_inflow_1,2,2,10 sc_commodity_inflow_1,2,3,0
 sc_commodity_inflow_1,2,3,1 sc_commodity_inflow_1,2,3,2
 sc_commodity_inflow_1,2,3,3 sc_commodity_inflow_1,2,3,4
 sc_commodity_inflow_1,2,3,5 sc_commodity_inflow_1,2,3,6
 sc_commodity_inflow_1,2,3,7 sc_commodity_inflow_1,2,3,8
 sc_commodity_inflow_1,2,3,9 sc_commodity_inflow_1,2,3,10
 sc_commodity_inflow_1,3,2,0 sc_commodity_inflow_1,3,2,1
 sc_commodity_inflow_1,3,2,2 sc_commodity_inflow_1,3,2,3
 sc_commodity_inflow_1,3,2,4 sc_commodity_inflow_1,3,2,5
 sc_commodity_inflow_1,3,2,6 sc_commodity_inflow_1,3,2,7
 sc_commodity_inflow_1,3,2,8 sc_commodity_inflow_1,3,2,9
 sc_commodity_inflow_1,3,2,10 sc_commodity_inflow_1,3,3,0
 sc_commodity_inflow_1,3,3,1 sc_commodity_inflow_1,3,3,2
 sc_commodity_inflow_1,3,3,3 sc_commodity_inflow_1,3,3,4
 sc_commodity_inflow_1,3,3,5 sc_commodity_inflow_1,3,3,6
 sc_commodity_inflow_1,3,3,7 sc_commodity_inflow_1,3,3,8
 sc_commodity_inflow_1,3,3,9 sc_commodity_inflow_1,3,3,10
End
