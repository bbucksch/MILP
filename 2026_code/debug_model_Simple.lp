\ Model Model_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9ffd72cd60a791ab
Minimize
  100 Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity4
   + 100 Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity3
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity4
   + 100 Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity4
   + 100 Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity3
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity4
   + 2500 sc_commodity_outflow_0,1,1,Tstart_0,Tend_5
   + 2500 sc_commodity_outflow_0,1,2,Tstart_0,Tend_3
   + 30000 sc_commodity_outflow_1,1,1,Tstart_0,Tend_5
   + 30000 sc_commodity_outflow_1,1,2,Tstart_0,Tend_3
Subject To
 mass_balance_x_node0_time0_comm0:
   Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity0 <= 0
 mass_balance_x_node0_time0_comm1:
   Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity1 <= 0
 mass_balance_x_node0_time0_comm2:
   Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity2 <= 0
 mass_balance_x_node0_time0_comm3:
   Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity3 <= 0
 mass_balance_x_node0_time0_comm4:
   Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity4 <= 0
 SC_mass_balance_x_node0_time0_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart_0,Tend_4 <= 0
 SC_mass_balance_x_node0_time0_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart_0,Tend_4 <= 0
 mass_balance_x_node0_time4_comm0:
   Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity0 <= 0
 mass_balance_x_node0_time4_comm1:
   Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity1 <= 0
 mass_balance_x_node0_time4_comm2:
   Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity2 <= 0
 mass_balance_x_node0_time4_comm3:
   Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity3 <= 0
 mass_balance_x_node0_time4_comm4:
   Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity4
   + Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity4
   + Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity4 <= 0
 SC_lossless_mass_balance_x_node0_time4_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart_4,Tend_8
   + sc_commodity_outflow_0,0,1,Tstart_4,Tend_5 = 0
 SC_lossless_mass_balance_x_node0_time4_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart_4,Tend_8
   + sc_commodity_outflow_1,0,1,Tstart_4,Tend_5 = 0
 mass_balance_x_node0_time8_comm0:
   Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity0 <= 0
 mass_balance_x_node0_time8_comm1:
   Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity1 <= 0
 mass_balance_x_node0_time8_comm2:
   Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity2 <= 0
 mass_balance_x_node0_time8_comm3:
   Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity3 <= 0
 mass_balance_x_node0_time8_comm4:
   Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity4
   + Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity4
   + Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity4 <= 0
 SC_lossless_mass_balance_x_node0_time8_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart_8,Tend_9
   + sc_commodity_outflow_0,0,1,Tstart_8,Tend_9 = 0
 SC_lossless_mass_balance_x_node0_time8_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart_8,Tend_9
   + sc_commodity_outflow_1,0,1,Tstart_8,Tend_9 = 0
 mass_balance_x_node0_time9_comm0:
   Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity0 <= 0
 mass_balance_x_node0_time9_comm1:
   Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity1 <= 0
 mass_balance_x_node0_time9_comm2:
   Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity2 <= 0
 mass_balance_x_node0_time9_comm3:
   Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity3 <= 0
 mass_balance_x_node0_time9_comm4:
   Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity4
   + Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity4
   + Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity4 <= 0
 SC_lossless_mass_balance_x_node0_time9_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart_9,Tend_10
   + sc_commodity_outflow_0,0,1,Tstart_9,Tend_10
   - sc_commodity_inflow_0,0,0,Tstart_8,Tend_9 = 0
 SC_lossless_mass_balance_x_node0_time9_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart_9,Tend_10
   + sc_commodity_outflow_1,0,1,Tstart_9,Tend_10
   - sc_commodity_inflow_1,0,0,Tstart_8,Tend_9 = 0
 mass_balance_x_node0_time10_comm0:
   Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity0 <= 0
 mass_balance_x_node0_time10_comm1:
   Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity1 <= 0
 mass_balance_x_node0_time10_comm2:
   Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity2 <= 0
 mass_balance_x_node0_time10_comm3:
   Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity3 <= -110
 mass_balance_x_node0_time10_comm4:
   Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity4
   + Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity4
   + Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity4 <= 0
 SC_lossless_mass_balance_x_node0_time10_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart_10,Tend_11
   + sc_commodity_outflow_0,0,1,Tstart_10,Tend_11
   - sc_commodity_inflow_0,0,0,Tstart_9,Tend_10
   - sc_commodity_inflow_0,1,0,Tstart_9,Tend_10 = 0
 SC_lossless_mass_balance_x_node0_time10_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart_10,Tend_11
   + sc_commodity_outflow_1,0,1,Tstart_10,Tend_11
   - sc_commodity_inflow_1,0,0,Tstart_9,Tend_10
   - sc_commodity_inflow_1,1,0,Tstart_9,Tend_10 = 0
 mass_balance_x_node0_time11_comm0:
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity0 <= -3
 mass_balance_x_node0_time11_comm1:
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity1 <= 0
 mass_balance_x_node0_time11_comm2:
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity2 <= 0
 mass_balance_x_node0_time11_comm3:
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity3 <= 0
 mass_balance_x_node0_time11_comm4:
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity4 <= 0
 SC_mass_balance_x_node0_time11_vehicle0:
   - sc_commodity_inflow_0,0,0,Tstart_10,Tend_11
   - sc_commodity_inflow_0,1,0,Tstart_10,Tend_11 <= 0
 SC_mass_balance_x_node0_time11_vehicle1:
   - sc_commodity_inflow_1,0,0,Tstart_10,Tend_11
   - sc_commodity_inflow_1,1,0,Tstart_10,Tend_11 <= 0
 mass_balance_x_node1_time0_comm0:
   Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity0 <= 3
 mass_balance_x_node1_time0_comm1:
   Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity1 <= 99999
 mass_balance_x_node1_time0_comm2:
   Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity2 <= 99999
 mass_balance_x_node1_time0_comm3:
   Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity3
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity3
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity3 <= 0
 mass_balance_x_node1_time0_comm4:
   Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity4
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity4
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity4
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity4
   <= 9.9999999999e+10
 SC_mass_balance_x_node1_time0_vehicle0:
   sc_commodity_outflow_0,1,1,Tstart_0,Tend_5
   + sc_commodity_outflow_0,1,2,Tstart_0,Tend_3 <= 1
 SC_mass_balance_x_node1_time0_vehicle1:
   sc_commodity_outflow_1,1,1,Tstart_0,Tend_5
   + sc_commodity_outflow_1,1,2,Tstart_0,Tend_3 <= 1
 mass_balance_x_node1_time5_comm0:
   Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity0 <= 0
 mass_balance_x_node1_time5_comm1:
   Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity1 <= 0
 mass_balance_x_node1_time5_comm2:
   Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity2 <= 0
 mass_balance_x_node1_time5_comm3:
   Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity3
   + Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity3
   + Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity3 <= 0
 mass_balance_x_node1_time5_comm4:
   Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity4
   + Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity4
   + Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity4
   + Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity4
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity4
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity4 <= 0
 SC_lossless_mass_balance_x_node1_time5_vehicle0:
   sc_commodity_outflow_0,1,1,Tstart_5,Tend_9
   + sc_commodity_outflow_0,1,2,Tstart_5,Tend_8
   - sc_commodity_inflow_0,0,1,Tstart_4,Tend_5
   - sc_commodity_inflow_0,2,1,Tstart_2,Tend_5 = 0
 SC_lossless_mass_balance_x_node1_time5_vehicle1:
   sc_commodity_outflow_1,1,1,Tstart_5,Tend_9
   + sc_commodity_outflow_1,1,2,Tstart_5,Tend_8
   - sc_commodity_inflow_1,0,1,Tstart_4,Tend_5
   - sc_commodity_inflow_1,2,1,Tstart_2,Tend_5 = 0
 mass_balance_x_node1_time9_comm0:
   Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity0 <= 0
 mass_balance_x_node1_time9_comm1:
   Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity1 <= 0
 mass_balance_x_node1_time9_comm2:
   Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity2 <= 0
 mass_balance_x_node1_time9_comm3:
   Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity3
   + Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity3 <= 0
 mass_balance_x_node1_time9_comm4:
   Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity4
   + Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity4
   + Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity4
   + Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity4
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity4 <= 0
 SC_lossless_mass_balance_x_node1_time9_vehicle0:
   sc_commodity_outflow_0,1,0,Tstart_9,Tend_10
   + sc_commodity_outflow_0,1,1,Tstart_9,Tend_10
   - sc_commodity_inflow_0,0,1,Tstart_8,Tend_9
   - sc_commodity_inflow_0,2,1,Tstart_6,Tend_9 = 0
 SC_lossless_mass_balance_x_node1_time9_vehicle1:
   sc_commodity_outflow_1,1,0,Tstart_9,Tend_10
   + sc_commodity_outflow_1,1,1,Tstart_9,Tend_10
   - sc_commodity_inflow_1,0,1,Tstart_8,Tend_9
   - sc_commodity_inflow_1,2,1,Tstart_6,Tend_9 = 0
 mass_balance_x_node1_time10_comm0:
   Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity0 <= 0
 mass_balance_x_node1_time10_comm1:
   Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity1 <= 0
 mass_balance_x_node1_time10_comm2:
   Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity2 <= 0
 mass_balance_x_node1_time10_comm3:
   Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity3
   + Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity3 <= 0
 mass_balance_x_node1_time10_comm4:
   Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity4
   + Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity4
   + Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity4
   + Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity4
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity4 <= 0
 SC_lossless_mass_balance_x_node1_time10_vehicle0:
   sc_commodity_outflow_0,1,0,Tstart_10,Tend_11
   + sc_commodity_outflow_0,1,1,Tstart_10,Tend_11
   - sc_commodity_inflow_0,0,1,Tstart_9,Tend_10
   - sc_commodity_inflow_0,1,1,Tstart_9,Tend_10
   - sc_commodity_inflow_0,2,1,Tstart_7,Tend_10 = 0
 SC_lossless_mass_balance_x_node1_time10_vehicle1:
   sc_commodity_outflow_1,1,0,Tstart_10,Tend_11
   + sc_commodity_outflow_1,1,1,Tstart_10,Tend_11
   - sc_commodity_inflow_1,0,1,Tstart_9,Tend_10
   - sc_commodity_inflow_1,1,1,Tstart_9,Tend_10
   - sc_commodity_inflow_1,2,1,Tstart_7,Tend_10 = 0
 mass_balance_x_node1_time11_comm0:
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity0 <= 0
 mass_balance_x_node1_time11_comm1:
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity1 <= 0
 mass_balance_x_node1_time11_comm2:
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity2 <= 0
 mass_balance_x_node1_time11_comm3:
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity3 <= 0
 mass_balance_x_node1_time11_comm4:
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity4
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity4 <= 0
 SC_mass_balance_x_node1_time11_vehicle0:
   - sc_commodity_inflow_0,0,1,Tstart_10,Tend_11
   - sc_commodity_inflow_0,1,1,Tstart_10,Tend_11
   - sc_commodity_inflow_0,2,1,Tstart_8,Tend_11 <= 0
 SC_mass_balance_x_node1_time11_vehicle1:
   - sc_commodity_inflow_1,0,1,Tstart_10,Tend_11
   - sc_commodity_inflow_1,1,1,Tstart_10,Tend_11
   - sc_commodity_inflow_1,2,1,Tstart_8,Tend_11 <= 0
 mass_balance_x_node2_time0_comm0:
   Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity0 <= 0
 mass_balance_x_node2_time0_comm1:
   Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity1 <= 0
 mass_balance_x_node2_time0_comm2:
   Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity2 <= 0
 mass_balance_x_node2_time0_comm3:
   Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity3 <= 0
 mass_balance_x_node2_time0_comm4:
   Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity4 <= 0
 SC_mass_balance_x_node2_time0_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart_0,Tend_1 <= 0
 SC_mass_balance_x_node2_time0_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart_0,Tend_1 <= 0
 mass_balance_x_node2_time1_comm0:
   Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity0 <= 0
 mass_balance_x_node2_time1_comm1:
   Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity1 <= 0
 mass_balance_x_node2_time1_comm2:
   Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity2 <= 0
 mass_balance_x_node2_time1_comm3:
   Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity3 <= 0
 mass_balance_x_node2_time1_comm4:
   Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time1_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart_1,Tend_2
   + sc_commodity_outflow_0,2,3,Tstart_1,Tend_2
   - sc_commodity_inflow_0,2,2,Tstart_0,Tend_1
   - sc_commodity_inflow_0,3,2,Tstart_0,Tend_1 = 0
 SC_lossless_mass_balance_x_node2_time1_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart_1,Tend_2
   + sc_commodity_outflow_1,2,3,Tstart_1,Tend_2
   - sc_commodity_inflow_1,2,2,Tstart_0,Tend_1
   - sc_commodity_inflow_1,3,2,Tstart_0,Tend_1 = 0
 mass_balance_x_node2_time2_comm0:
   Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity0 <= 0
 mass_balance_x_node2_time2_comm1:
   Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity1 <= 0
 mass_balance_x_node2_time2_comm2:
   Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity2 <= 0
 mass_balance_x_node2_time2_comm3:
   Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity3 <= 0
 mass_balance_x_node2_time2_comm4:
   Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity4
   + Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity4
   + Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time2_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart_2,Tend_5
   + sc_commodity_outflow_0,2,2,Tstart_2,Tend_3
   + sc_commodity_outflow_0,2,3,Tstart_2,Tend_3
   - sc_commodity_inflow_0,2,2,Tstart_1,Tend_2 = 0
 SC_lossless_mass_balance_x_node2_time2_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart_2,Tend_5
   + sc_commodity_outflow_1,2,2,Tstart_2,Tend_3
   + sc_commodity_outflow_1,2,3,Tstart_2,Tend_3
   - sc_commodity_inflow_1,2,2,Tstart_1,Tend_2 = 0
 mass_balance_x_node2_time3_comm0:
   Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity0 <= -1
 mass_balance_x_node2_time3_comm1:
   Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity1 <= 0
 mass_balance_x_node2_time3_comm2:
   Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity2 <= 0
 mass_balance_x_node2_time3_comm3:
   Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity3 <= 0
 mass_balance_x_node2_time3_comm4:
   Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time3_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart_3,Tend_4
   + sc_commodity_outflow_0,2,3,Tstart_3,Tend_4
   - sc_commodity_inflow_0,1,2,Tstart_0,Tend_3
   - sc_commodity_inflow_0,2,2,Tstart_2,Tend_3
   - sc_commodity_inflow_0,3,2,Tstart_2,Tend_3 = 0
 SC_lossless_mass_balance_x_node2_time3_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart_3,Tend_4
   + sc_commodity_outflow_1,2,3,Tstart_3,Tend_4
   - sc_commodity_inflow_1,1,2,Tstart_0,Tend_3
   - sc_commodity_inflow_1,2,2,Tstart_2,Tend_3
   - sc_commodity_inflow_1,3,2,Tstart_2,Tend_3 = 0
 mass_balance_x_node2_time4_comm0:
   Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity0 <= 0
 mass_balance_x_node2_time4_comm1:
   Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity1 <= 0
 mass_balance_x_node2_time4_comm2:
   Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity2 <= 0
 mass_balance_x_node2_time4_comm3:
   Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity3 <= 0
 mass_balance_x_node2_time4_comm4:
   Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time4_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart_4,Tend_5
   + sc_commodity_outflow_0,2,3,Tstart_4,Tend_5
   - sc_commodity_inflow_0,2,2,Tstart_3,Tend_4
   - sc_commodity_inflow_0,3,2,Tstart_3,Tend_4 = 0
 SC_lossless_mass_balance_x_node2_time4_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart_4,Tend_5
   + sc_commodity_outflow_1,2,3,Tstart_4,Tend_5
   - sc_commodity_inflow_1,2,2,Tstart_3,Tend_4
   - sc_commodity_inflow_1,3,2,Tstart_3,Tend_4 = 0
 mass_balance_x_node2_time5_comm0:
   Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity0 <= 0
 mass_balance_x_node2_time5_comm1:
   Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity1 <= 0
 mass_balance_x_node2_time5_comm2:
   Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity2 <= 0
 mass_balance_x_node2_time5_comm3:
   Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity3 <= 0
 mass_balance_x_node2_time5_comm4:
   Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time5_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart_5,Tend_6
   + sc_commodity_outflow_0,2,3,Tstart_5,Tend_6
   - sc_commodity_inflow_0,2,2,Tstart_4,Tend_5
   - sc_commodity_inflow_0,3,2,Tstart_4,Tend_5 = 0
 SC_lossless_mass_balance_x_node2_time5_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart_5,Tend_6
   + sc_commodity_outflow_1,2,3,Tstart_5,Tend_6
   - sc_commodity_inflow_1,2,2,Tstart_4,Tend_5
   - sc_commodity_inflow_1,3,2,Tstart_4,Tend_5 = 0
 mass_balance_x_node2_time6_comm0:
   Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity0 <= 1
 mass_balance_x_node2_time6_comm1:
   Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity1 <= 0
 mass_balance_x_node2_time6_comm2:
   Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity2 <= 0
 mass_balance_x_node2_time6_comm3:
   Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity3 <= 0
 mass_balance_x_node2_time6_comm4:
   Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity4
   + Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity4
   + Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time6_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart_6,Tend_9
   + sc_commodity_outflow_0,2,2,Tstart_6,Tend_7
   - sc_commodity_inflow_0,2,2,Tstart_5,Tend_6
   - sc_commodity_inflow_0,3,2,Tstart_5,Tend_6 = 0
 SC_lossless_mass_balance_x_node2_time6_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart_6,Tend_9
   + sc_commodity_outflow_1,2,2,Tstart_6,Tend_7
   - sc_commodity_inflow_1,2,2,Tstart_5,Tend_6
   - sc_commodity_inflow_1,3,2,Tstart_5,Tend_6 = 0
 mass_balance_x_node2_time7_comm0:
   Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity0 <= 0
 mass_balance_x_node2_time7_comm1:
   Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity1 <= 0
 mass_balance_x_node2_time7_comm2:
   Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity2 <= 0
 mass_balance_x_node2_time7_comm3:
   Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity3 <= 0
 mass_balance_x_node2_time7_comm4:
   Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity4
   + Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity4
   + Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time7_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart_7,Tend_10
   + sc_commodity_outflow_0,2,2,Tstart_7,Tend_8
   - sc_commodity_inflow_0,2,2,Tstart_6,Tend_7
   - sc_commodity_inflow_0,3,2,Tstart_6,Tend_7 = 0
 SC_lossless_mass_balance_x_node2_time7_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart_7,Tend_10
   + sc_commodity_outflow_1,2,2,Tstart_7,Tend_8
   - sc_commodity_inflow_1,2,2,Tstart_6,Tend_7
   - sc_commodity_inflow_1,3,2,Tstart_6,Tend_7 = 0
 mass_balance_x_node2_time8_comm0:
   Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity0
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity0 <= 0
 mass_balance_x_node2_time8_comm1:
   Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity1
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity1 <= 0
 mass_balance_x_node2_time8_comm2:
   Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity2
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity2 <= 0
 mass_balance_x_node2_time8_comm3:
   Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity3
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity3 <= 0
 mass_balance_x_node2_time8_comm4:
   Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity4
   + Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity4
   + Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time8_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart_8,Tend_11
   + sc_commodity_outflow_0,2,2,Tstart_8,Tend_9
   - sc_commodity_inflow_0,1,2,Tstart_5,Tend_8
   - sc_commodity_inflow_0,2,2,Tstart_7,Tend_8 = 0
 SC_lossless_mass_balance_x_node2_time8_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart_8,Tend_11
   + sc_commodity_outflow_1,2,2,Tstart_8,Tend_9
   - sc_commodity_inflow_1,1,2,Tstart_5,Tend_8
   - sc_commodity_inflow_1,2,2,Tstart_7,Tend_8 = 0
 mass_balance_x_node2_time9_comm0:
   Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity0 <= 0
 mass_balance_x_node2_time9_comm1:
   Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity1 <= 0
 mass_balance_x_node2_time9_comm2:
   Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity2 <= 0
 mass_balance_x_node2_time9_comm3:
   Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity3 <= 0
 mass_balance_x_node2_time9_comm4:
   Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time9_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart_9,Tend_10
   - sc_commodity_inflow_0,2,2,Tstart_8,Tend_9 = 0
 SC_lossless_mass_balance_x_node2_time9_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart_9,Tend_10
   - sc_commodity_inflow_1,2,2,Tstart_8,Tend_9 = 0
 mass_balance_x_node2_time10_comm0:
   Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity0 <= 0
 mass_balance_x_node2_time10_comm1:
   Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity1 <= 0
 mass_balance_x_node2_time10_comm2:
   Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity2 <= 0
 mass_balance_x_node2_time10_comm3:
   Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity3 <= 0
 mass_balance_x_node2_time10_comm4:
   Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time10_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart_10,Tend_11
   + sc_commodity_outflow_0,2,3,Tstart_10,Tend_11
   - sc_commodity_inflow_0,2,2,Tstart_9,Tend_10 = 0
 SC_lossless_mass_balance_x_node2_time10_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart_10,Tend_11
   + sc_commodity_outflow_1,2,3,Tstart_10,Tend_11
   - sc_commodity_inflow_1,2,2,Tstart_9,Tend_10 = 0
 mass_balance_x_node2_time11_comm0:
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity0 <= 0
 mass_balance_x_node2_time11_comm1:
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity1 <= 0
 mass_balance_x_node2_time11_comm2:
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity2 <= 0
 mass_balance_x_node2_time11_comm3:
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity3 <= 0
 mass_balance_x_node2_time11_comm4:
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity4 <= 0
 SC_mass_balance_x_node2_time11_vehicle0:
   - sc_commodity_inflow_0,2,2,Tstart_10,Tend_11 <= 0
 SC_mass_balance_x_node2_time11_vehicle1:
   - sc_commodity_inflow_1,2,2,Tstart_10,Tend_11 <= 0
 mass_balance_x_node3_time0_comm0:
   Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity0 <= 0
 mass_balance_x_node3_time0_comm1:
   Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity1 <= 0
 mass_balance_x_node3_time0_comm2:
   Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity2 <= 0
 mass_balance_x_node3_time0_comm3:
   Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity3 <= 999999
 mass_balance_x_node3_time0_comm4:
   Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity4 <= 0
 SC_mass_balance_x_node3_time0_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart_0,Tend_1
   + sc_commodity_outflow_0,3,3,Tstart_0,Tend_2 <= 0
 SC_mass_balance_x_node3_time0_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart_0,Tend_1
   + sc_commodity_outflow_1,3,3,Tstart_0,Tend_2 <= 0
 mass_balance_x_node3_time2_comm0:
   Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity0 <= 0
 mass_balance_x_node3_time2_comm1:
   Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity1 <= 0
 mass_balance_x_node3_time2_comm2:
   Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity2 <= 0
 mass_balance_x_node3_time2_comm3:
   Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity3 <= 999999
 mass_balance_x_node3_time2_comm4:
   Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity4 <= 0
 SC_lossless_mass_balance_x_node3_time2_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart_2,Tend_3
   + sc_commodity_outflow_0,3,3,Tstart_2,Tend_3
   - sc_commodity_inflow_0,2,3,Tstart_1,Tend_2 = 0
 SC_lossless_mass_balance_x_node3_time2_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart_2,Tend_3
   + sc_commodity_outflow_1,3,3,Tstart_2,Tend_3
   - sc_commodity_inflow_1,2,3,Tstart_1,Tend_2 = 0
 mass_balance_x_node3_time3_comm0:
   Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity0 <= 0
 mass_balance_x_node3_time3_comm1:
   Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity1 <= 0
 mass_balance_x_node3_time3_comm2:
   Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity2 <= 0
 mass_balance_x_node3_time3_comm3:
   Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity3 <= 999999
 mass_balance_x_node3_time3_comm4:
   Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity4 <= 0
 SC_lossless_mass_balance_x_node3_time3_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart_3,Tend_4
   + sc_commodity_outflow_0,3,3,Tstart_3,Tend_4
   - sc_commodity_inflow_0,2,3,Tstart_2,Tend_3
   - sc_commodity_inflow_0,3,3,Tstart_2,Tend_3 = 0
 SC_lossless_mass_balance_x_node3_time3_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart_3,Tend_4
   + sc_commodity_outflow_1,3,3,Tstart_3,Tend_4
   - sc_commodity_inflow_1,2,3,Tstart_2,Tend_3
   - sc_commodity_inflow_1,3,3,Tstart_2,Tend_3 = 0
 mass_balance_x_node3_time4_comm0:
   Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity0 <= -2
 mass_balance_x_node3_time4_comm1:
   Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity1 <= 0
 mass_balance_x_node3_time4_comm2:
   Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity2 <= -420
 mass_balance_x_node3_time4_comm3:
   Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity3 <= 999999
 mass_balance_x_node3_time4_comm4:
   Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity4 <= 0
 SC_lossless_mass_balance_x_node3_time4_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart_4,Tend_5
   + sc_commodity_outflow_0,3,3,Tstart_4,Tend_5
   - sc_commodity_inflow_0,2,3,Tstart_3,Tend_4
   - sc_commodity_inflow_0,3,3,Tstart_3,Tend_4 = 0
 SC_lossless_mass_balance_x_node3_time4_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart_4,Tend_5
   + sc_commodity_outflow_1,3,3,Tstart_4,Tend_5
   - sc_commodity_inflow_1,2,3,Tstart_3,Tend_4
   - sc_commodity_inflow_1,3,3,Tstart_3,Tend_4 = 0
 mass_balance_x_node3_time5_comm0:
   Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity0 <= 2
 mass_balance_x_node3_time5_comm1:
   Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity1 <= 0
 mass_balance_x_node3_time5_comm2:
   Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity2 <= 0
 mass_balance_x_node3_time5_comm3:
   Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity3 <= 999999
 mass_balance_x_node3_time5_comm4:
   Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity4 <= 0
 SC_lossless_mass_balance_x_node3_time5_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart_5,Tend_6
   + sc_commodity_outflow_0,3,3,Tstart_5,Tend_6
   - sc_commodity_inflow_0,2,3,Tstart_4,Tend_5
   - sc_commodity_inflow_0,3,3,Tstart_4,Tend_5 = 0
 SC_lossless_mass_balance_x_node3_time5_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart_5,Tend_6
   + sc_commodity_outflow_1,3,3,Tstart_5,Tend_6
   - sc_commodity_inflow_1,2,3,Tstart_4,Tend_5
   - sc_commodity_inflow_1,3,3,Tstart_4,Tend_5 = 0
 mass_balance_x_node3_time6_comm0:
   Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity0 <= 0
 mass_balance_x_node3_time6_comm1:
   Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity1 <= 0
 mass_balance_x_node3_time6_comm2:
   Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity2 <= 0
 mass_balance_x_node3_time6_comm3:
   Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity3 <= 999999
 mass_balance_x_node3_time6_comm4:
   Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity4 <= 0
 SC_lossless_mass_balance_x_node3_time6_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart_6,Tend_7
   - sc_commodity_inflow_0,2,3,Tstart_5,Tend_6
   - sc_commodity_inflow_0,3,3,Tstart_5,Tend_6 = 0
 SC_lossless_mass_balance_x_node3_time6_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart_6,Tend_7
   - sc_commodity_inflow_1,2,3,Tstart_5,Tend_6
   - sc_commodity_inflow_1,3,3,Tstart_5,Tend_6 = 0
 mass_balance_x_node3_time11_comm0:
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity0 <= 0
 mass_balance_x_node3_time11_comm1:
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity1 <= 0
 mass_balance_x_node3_time11_comm2:
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity2 <= 0
 mass_balance_x_node3_time11_comm3:
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity3 <= 999999
 mass_balance_x_node3_time11_comm4:
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity4 <= 0
 SC_mass_balance_x_node3_time11_vehicle0:
   - sc_commodity_inflow_0,2,3,Tstart_10,Tend_11 <= 0
 SC_mass_balance_x_node3_time11_vehicle1:
   - sc_commodity_inflow_1,2,3,Tstart_10,Tend_11 <= 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart_0,Tend_4
   - sc_commodity_inflow_0,0,0,Tstart_0,Tend_4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart_0,Tend_4
   - sc_commodity_inflow_1,0,0,Tstart_0,Tend_4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart_4,Tend_8
   - sc_commodity_inflow_0,0,0,Tstart_4,Tend_8 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart_4,Tend_8
   - sc_commodity_inflow_1,0,0,Tstart_4,Tend_8 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart_8,Tend_9
   - sc_commodity_inflow_0,0,0,Tstart_8,Tend_9 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart_8,Tend_9
   - sc_commodity_inflow_1,0,0,Tstart_8,Tend_9 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart_9,Tend_10
   - sc_commodity_inflow_0,0,0,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart_9,Tend_10
   - sc_commodity_inflow_1,0,0,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart_10,Tend_11
   - sc_commodity_inflow_0,0,0,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart_10,Tend_11
   - sc_commodity_inflow_1,0,0,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity4
   - 2500 sc_commodity_outflow_0,0,1,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart_4,Tend_5
   - sc_commodity_inflow_0,0,1,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity4
   - 30000 sc_commodity_outflow_1,0,1,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart_4,Tend_5
   - sc_commodity_inflow_1,0,1,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity4
   - 2500 sc_commodity_outflow_0,0,1,Tstart_8,Tend_9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart_8,Tend_9
   - sc_commodity_inflow_0,0,1,Tstart_8,Tend_9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity4
   - 30000 sc_commodity_outflow_1,0,1,Tstart_8,Tend_9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart_8,Tend_9
   - sc_commodity_inflow_1,0,1,Tstart_8,Tend_9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity4
   - 2500 sc_commodity_outflow_0,0,1,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart_9,Tend_10
   - sc_commodity_inflow_0,0,1,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity4
   - 30000 sc_commodity_outflow_1,0,1,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart_9,Tend_10
   - sc_commodity_inflow_1,0,1,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity4
   - 2500 sc_commodity_outflow_0,0,1,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart_10,Tend_11
   - sc_commodity_inflow_0,0,1,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity4
   - 30000 sc_commodity_outflow_1,0,1,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart_10,Tend_11
   - sc_commodity_inflow_1,0,1,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,Tstart_9,Tend_10
   - sc_commodity_inflow_0,1,0,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,Tstart_9,Tend_10
   - sc_commodity_inflow_1,1,0,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,Tstart_10,Tend_11
   - sc_commodity_inflow_0,1,0,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,Tstart_10,Tend_11
   - sc_commodity_inflow_1,1,0,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,Tstart_0,Tend_5
   - sc_commodity_inflow_0,1,1,Tstart_0,Tend_5 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,Tstart_0,Tend_5
   - sc_commodity_inflow_1,1,1,Tstart_0,Tend_5 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,Tstart_5,Tend_9
   - sc_commodity_inflow_0,1,1,Tstart_5,Tend_9 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,Tstart_5,Tend_9
   - sc_commodity_inflow_1,1,1,Tstart_5,Tend_9 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,Tstart_9,Tend_10
   - sc_commodity_inflow_0,1,1,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,Tstart_9,Tend_10
   - sc_commodity_inflow_1,1,1,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,Tstart_10,Tend_11
   - sc_commodity_inflow_0,1,1,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,Tstart_10,Tend_11
   - sc_commodity_inflow_1,1,1,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity0
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity1
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity2
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity3
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,Tstart_0,Tend_3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,Tstart_0,Tend_3
   - sc_commodity_inflow_0,1,2,Tstart_0,Tend_3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity0
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity1
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity2
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity3
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,Tstart_0,Tend_3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,Tstart_0,Tend_3
   - sc_commodity_inflow_1,1,2,Tstart_0,Tend_3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity0
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity1
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity2
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity3
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,Tstart_5,Tend_8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,Tstart_5,Tend_8
   - sc_commodity_inflow_0,1,2,Tstart_5,Tend_8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity0
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity1
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity2
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity3
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,Tstart_5,Tend_8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,Tstart_5,Tend_8
   - sc_commodity_inflow_1,1,2,Tstart_5,Tend_8 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,Tstart_2,Tend_5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart_2,Tend_5
   - sc_commodity_inflow_0,2,1,Tstart_2,Tend_5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,Tstart_2,Tend_5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart_2,Tend_5
   - sc_commodity_inflow_1,2,1,Tstart_2,Tend_5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,Tstart_6,Tend_9 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart_6,Tend_9
   - sc_commodity_inflow_0,2,1,Tstart_6,Tend_9 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,Tstart_6,Tend_9 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart_6,Tend_9
   - sc_commodity_inflow_1,2,1,Tstart_6,Tend_9 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,Tstart_7,Tend_10 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart_7,Tend_10
   - sc_commodity_inflow_0,2,1,Tstart_7,Tend_10 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,Tstart_7,Tend_10 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart_7,Tend_10
   - sc_commodity_inflow_1,2,1,Tstart_7,Tend_10 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,Tstart_8,Tend_11 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart_8,Tend_11
   - sc_commodity_inflow_0,2,1,Tstart_8,Tend_11 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity4:
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,Tstart_8,Tend_11 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart_8,Tend_11
   - sc_commodity_inflow_1,2,1,Tstart_8,Tend_11 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_0,Tend_1
   - sc_commodity_inflow_0,2,2,Tstart_0,Tend_1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_0,Tend_1
   - sc_commodity_inflow_1,2,2,Tstart_0,Tend_1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_1,Tend_2
   - sc_commodity_inflow_0,2,2,Tstart_1,Tend_2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_1,Tend_2
   - sc_commodity_inflow_1,2,2,Tstart_1,Tend_2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_2,Tend_3
   - sc_commodity_inflow_0,2,2,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_2,Tend_3
   - sc_commodity_inflow_1,2,2,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_3,Tend_4
   - sc_commodity_inflow_0,2,2,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_3,Tend_4
   - sc_commodity_inflow_1,2,2,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_4,Tend_5
   - sc_commodity_inflow_0,2,2,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_4,Tend_5
   - sc_commodity_inflow_1,2,2,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_5,Tend_6
   - sc_commodity_inflow_0,2,2,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_5,Tend_6
   - sc_commodity_inflow_1,2,2,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_6,Tend_7
   - sc_commodity_inflow_0,2,2,Tstart_6,Tend_7 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_6,Tend_7
   - sc_commodity_inflow_1,2,2,Tstart_6,Tend_7 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_7,Tend_8
   - sc_commodity_inflow_0,2,2,Tstart_7,Tend_8 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_7,Tend_8
   - sc_commodity_inflow_1,2,2,Tstart_7,Tend_8 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_8,Tend_9
   - sc_commodity_inflow_0,2,2,Tstart_8,Tend_9 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_8,Tend_9
   - sc_commodity_inflow_1,2,2,Tstart_8,Tend_9 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_9,Tend_10
   - sc_commodity_inflow_0,2,2,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_9,Tend_10
   - sc_commodity_inflow_1,2,2,Tstart_9,Tend_10 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart_10,Tend_11
   - sc_commodity_inflow_0,2,2,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart_10,Tend_11
   - sc_commodity_inflow_1,2,2,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,Tstart_1,Tend_2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart_1,Tend_2
   - sc_commodity_inflow_0,2,3,Tstart_1,Tend_2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,Tstart_1,Tend_2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart_1,Tend_2
   - sc_commodity_inflow_1,2,3,Tstart_1,Tend_2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart_2,Tend_3
   - sc_commodity_inflow_0,2,3,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart_2,Tend_3
   - sc_commodity_inflow_1,2,3,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart_3,Tend_4
   - sc_commodity_inflow_0,2,3,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart_3,Tend_4
   - sc_commodity_inflow_1,2,3,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart_4,Tend_5
   - sc_commodity_inflow_0,2,3,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart_4,Tend_5
   - sc_commodity_inflow_1,2,3,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart_5,Tend_6
   - sc_commodity_inflow_0,2,3,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart_5,Tend_6
   - sc_commodity_inflow_1,2,3,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart_10,Tend_11
   - sc_commodity_inflow_0,2,3,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart_10,Tend_11
   - sc_commodity_inflow_1,2,3,Tstart_10,Tend_11 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart_0,Tend_1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart_0,Tend_1
   - sc_commodity_inflow_0,3,2,Tstart_0,Tend_1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart_0,Tend_1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart_0,Tend_1
   - sc_commodity_inflow_1,3,2,Tstart_0,Tend_1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart_2,Tend_3
   - sc_commodity_inflow_0,3,2,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart_2,Tend_3
   - sc_commodity_inflow_1,3,2,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart_3,Tend_4
   - sc_commodity_inflow_0,3,2,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart_3,Tend_4
   - sc_commodity_inflow_1,3,2,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart_4,Tend_5
   - sc_commodity_inflow_0,3,2,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart_4,Tend_5
   - sc_commodity_inflow_1,3,2,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart_5,Tend_6
   - sc_commodity_inflow_0,3,2,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart_5,Tend_6
   - sc_commodity_inflow_1,3,2,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart_6,Tend_7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart_6,Tend_7
   - sc_commodity_inflow_0,3,2,Tstart_6,Tend_7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity4:
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart_6,Tend_7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart_6,Tend_7
   - sc_commodity_inflow_1,3,2,Tstart_6,Tend_7 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart_0,Tend_2
   - sc_commodity_inflow_0,3,3,Tstart_0,Tend_2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart_0,Tend_2
   - sc_commodity_inflow_1,3,3,Tstart_0,Tend_2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart_2,Tend_3
   - sc_commodity_inflow_0,3,3,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart_2,Tend_3
   - sc_commodity_inflow_1,3,3,Tstart_2,Tend_3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart_3,Tend_4
   - sc_commodity_inflow_0,3,3,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart_3,Tend_4
   - sc_commodity_inflow_1,3,3,Tstart_3,Tend_4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart_4,Tend_5
   - sc_commodity_inflow_0,3,3,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart_4,Tend_5
   - sc_commodity_inflow_1,3,3,Tstart_4,Tend_5 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart_5,Tend_6
   - sc_commodity_inflow_0,3,3,Tstart_5,Tend_6 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart_5,Tend_6
   - sc_commodity_inflow_1,3,3,Tstart_5,Tend_6 = 0
 R798: 100 Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart_0,Tend_4 <= 0
 R799: Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart_0,Tend_4 <= 0
 R800: 100 Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart_4,Tend_8 <= 0
 R801: Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart_4,Tend_8 <= 0
 R802: 100 Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart_8,Tend_9 <= 0
 R803: Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart_8,Tend_9 <= 0
 R804: 100 Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart_9,Tend_10 <= 0
 R805: Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart_9,Tend_10 <= 0
 R806: 100 Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart_10,Tend_11 <= 0
 R807: Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart_10,Tend_11 <= 0
 R808: 100 Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity3
   - 1000 sc_commodity_outflow_0,0,1,Tstart_4,Tend_5 <= 0
 R809: Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity4
   - 65000 sc_commodity_outflow_0,0,1,Tstart_4,Tend_5 <= 0
 R810: 100 Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity3
   - 1000 sc_commodity_outflow_0,0,1,Tstart_8,Tend_9 <= 0
 R811: Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity4
   - 65000 sc_commodity_outflow_0,0,1,Tstart_8,Tend_9 <= 0
 R812: 100 Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity3
   - 1000 sc_commodity_outflow_0,0,1,Tstart_9,Tend_10 <= 0
 R813: Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity4
   - 65000 sc_commodity_outflow_0,0,1,Tstart_9,Tend_10 <= 0
 R814: 100 Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity3
   - 1000 sc_commodity_outflow_0,0,1,Tstart_10,Tend_11 <= 0
 R815: Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity4
   - 65000 sc_commodity_outflow_0,0,1,Tstart_10,Tend_11 <= 0
 R816: 100 Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity3
   - 1000 sc_commodity_outflow_0,1,0,Tstart_9,Tend_10 <= 0
 R817: Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity4
   - 65000 sc_commodity_outflow_0,1,0,Tstart_9,Tend_10 <= 0
 R818: 100 Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity3
   - 1000 sc_commodity_outflow_0,1,0,Tstart_10,Tend_11 <= 0
 R819: Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity4
   - 65000 sc_commodity_outflow_0,1,0,Tstart_10,Tend_11 <= 0
 R820: 100 Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity3
   - 1000 sc_commodity_outflow_0,1,1,Tstart_0,Tend_5 <= 0
 R821: Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity4
   - 65000 sc_commodity_outflow_0,1,1,Tstart_0,Tend_5 <= 0
 R822: 100 Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity3
   - 1000 sc_commodity_outflow_0,1,1,Tstart_5,Tend_9 <= 0
 R823: Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity4
   - 65000 sc_commodity_outflow_0,1,1,Tstart_5,Tend_9 <= 0
 R824: 100 Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity3
   - 1000 sc_commodity_outflow_0,1,1,Tstart_9,Tend_10 <= 0
 R825: Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity4
   - 65000 sc_commodity_outflow_0,1,1,Tstart_9,Tend_10 <= 0
 R826: 100 Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity3
   - 1000 sc_commodity_outflow_0,1,1,Tstart_10,Tend_11 <= 0
 R827: Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity4
   - 65000 sc_commodity_outflow_0,1,1,Tstart_10,Tend_11 <= 0
 R828: 100 Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity3
   - 1000 sc_commodity_outflow_0,1,2,Tstart_0,Tend_3 <= 0
 R829: Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity4
   - 65000 sc_commodity_outflow_0,1,2,Tstart_0,Tend_3 <= 0
 R830: 100 Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity3
   - 1000 sc_commodity_outflow_0,1,2,Tstart_5,Tend_8 <= 0
 R831: Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity4
   - 65000 sc_commodity_outflow_0,1,2,Tstart_5,Tend_8 <= 0
 R832: 100 Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity3
   - 1000 sc_commodity_outflow_0,2,1,Tstart_2,Tend_5 <= 0
 R833: Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity4
   - 65000 sc_commodity_outflow_0,2,1,Tstart_2,Tend_5 <= 0
 R834: 100 Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity3
   - 1000 sc_commodity_outflow_0,2,1,Tstart_6,Tend_9 <= 0
 R835: Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity4
   - 65000 sc_commodity_outflow_0,2,1,Tstart_6,Tend_9 <= 0
 R836: 100 Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity3
   - 1000 sc_commodity_outflow_0,2,1,Tstart_7,Tend_10 <= 0
 R837: Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity4
   - 65000 sc_commodity_outflow_0,2,1,Tstart_7,Tend_10 <= 0
 R838: 100 Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity3
   - 1000 sc_commodity_outflow_0,2,1,Tstart_8,Tend_11 <= 0
 R839: Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity4
   - 65000 sc_commodity_outflow_0,2,1,Tstart_8,Tend_11 <= 0
 R840: 100 Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_0,Tend_1 <= 0
 R841: Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_0,Tend_1 <= 0
 R842: 100 Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_1,Tend_2 <= 0
 R843: Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_1,Tend_2 <= 0
 R844: 100 Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_2,Tend_3 <= 0
 R845: Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_2,Tend_3 <= 0
 R846: 100 Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_3,Tend_4 <= 0
 R847: Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_3,Tend_4 <= 0
 R848: 100 Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_4,Tend_5 <= 0
 R849: Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_4,Tend_5 <= 0
 R850: 100 Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_5,Tend_6 <= 0
 R851: Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_5,Tend_6 <= 0
 R852: 100 Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_6,Tend_7 <= 0
 R853: Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_6,Tend_7 <= 0
 R854: 100 Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_7,Tend_8 <= 0
 R855: Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_7,Tend_8 <= 0
 R856: 100 Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_8,Tend_9 <= 0
 R857: Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_8,Tend_9 <= 0
 R858: 100 Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_9,Tend_10 <= 0
 R859: Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_9,Tend_10 <= 0
 R860: 100 Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart_10,Tend_11 <= 0
 R861: Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart_10,Tend_11 <= 0
 R862: 100 Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity3
   - 1000 sc_commodity_outflow_0,2,3,Tstart_1,Tend_2 <= 0
 R863: Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity4
   - 65000 sc_commodity_outflow_0,2,3,Tstart_1,Tend_2 <= 0
 R864: 100 Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity3
   - 1000 sc_commodity_outflow_0,2,3,Tstart_2,Tend_3 <= 0
 R865: Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity4
   - 65000 sc_commodity_outflow_0,2,3,Tstart_2,Tend_3 <= 0
 R866: 100 Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity3
   - 1000 sc_commodity_outflow_0,2,3,Tstart_3,Tend_4 <= 0
 R867: Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity4
   - 65000 sc_commodity_outflow_0,2,3,Tstart_3,Tend_4 <= 0
 R868: 100 Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity3
   - 1000 sc_commodity_outflow_0,2,3,Tstart_4,Tend_5 <= 0
 R869: Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity4
   - 65000 sc_commodity_outflow_0,2,3,Tstart_4,Tend_5 <= 0
 R870: 100 Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity3
   - 1000 sc_commodity_outflow_0,2,3,Tstart_5,Tend_6 <= 0
 R871: Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity4
   - 65000 sc_commodity_outflow_0,2,3,Tstart_5,Tend_6 <= 0
 R872: 100 Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity3
   - 1000 sc_commodity_outflow_0,2,3,Tstart_10,Tend_11 <= 0
 R873: Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity4
   - 65000 sc_commodity_outflow_0,2,3,Tstart_10,Tend_11 <= 0
 R874: 100 Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart_0,Tend_1 <= 0
 R875: Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart_0,Tend_1 <= 0
 R876: 100 Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart_2,Tend_3 <= 0
 R877: Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart_2,Tend_3 <= 0
 R878: 100 Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart_3,Tend_4 <= 0
 R879: Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart_3,Tend_4 <= 0
 R880: 100 Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart_4,Tend_5 <= 0
 R881: Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart_4,Tend_5 <= 0
 R882: 100 Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart_5,Tend_6 <= 0
 R883: Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart_5,Tend_6 <= 0
 R884: 100 Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart_6,Tend_7 <= 0
 R885: Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart_6,Tend_7 <= 0
 R886: 100 Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart_0,Tend_2 <= 0
 R887: Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart_0,Tend_2 <= 0
 R888: 100 Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart_2,Tend_3 <= 0
 R889: Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart_2,Tend_3 <= 0
 R890: 100 Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart_3,Tend_4 <= 0
 R891: Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart_3,Tend_4 <= 0
 R892: 100 Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart_4,Tend_5 <= 0
 R893: Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart_4,Tend_5 <= 0
 R894: 100 Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart_5,Tend_6 <= 0
 R895: Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart_5,Tend_6 <= 0
 R896: 100 Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart_0,Tend_4 <= 0
 R897: Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart_0,Tend_4 <= 0
 R898: 100 Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart_4,Tend_8 <= 0
 R899: Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart_4,Tend_8 <= 0
 R900: 100 Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart_8,Tend_9 <= 0
 R901: Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart_8,Tend_9 <= 0
 R902: 100 Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart_9,Tend_10 <= 0
 R903: Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart_9,Tend_10 <= 0
 R904: 100 Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart_10,Tend_11 <= 0
 R905: Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart_10,Tend_11 <= 0
 R906: 100 Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart_4,Tend_5 <= 0
 R907: Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,1,Tstart_4,Tend_5 <= 0
 R908: 100 Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart_8,Tend_9 <= 0
 R909: Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,1,Tstart_8,Tend_9 <= 0
 R910: 100 Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart_9,Tend_10 <= 0
 R911: Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,1,Tstart_9,Tend_10 <= 0
 R912: 100 Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart_10,Tend_11 <= 0
 R913: Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,1,Tstart_10,Tend_11 <= 0
 R914: 100 Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity3
   - 75 sc_commodity_outflow_1,1,0,Tstart_9,Tend_10 <= 0
 R915: Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,0,Tstart_9,Tend_10 <= 0
 R916: 100 Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity3
   - 75 sc_commodity_outflow_1,1,0,Tstart_10,Tend_11 <= 0
 R917: Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,0,Tstart_10,Tend_11 <= 0
 R918: 100 Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart_0,Tend_5 <= 0
 R919: Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,1,Tstart_0,Tend_5 <= 0
 R920: 100 Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart_5,Tend_9 <= 0
 R921: Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,1,Tstart_5,Tend_9 <= 0
 R922: 100 Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart_9,Tend_10 <= 0
 R923: Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,1,Tstart_9,Tend_10 <= 0
 R924: 100 Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart_10,Tend_11 <= 0
 R925: Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,1,Tstart_10,Tend_11 <= 0
 R926: 100 Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity3
   - 75 sc_commodity_outflow_1,1,2,Tstart_0,Tend_3 <= 0
 R927: Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,2,Tstart_0,Tend_3 <= 0
 R928: 100 Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity3
   - 75 sc_commodity_outflow_1,1,2,Tstart_5,Tend_8 <= 0
 R929: Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,2,Tstart_5,Tend_8 <= 0
 R930: 100 Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart_2,Tend_5 <= 0
 R931: Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,1,Tstart_2,Tend_5 <= 0
 R932: 100 Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart_6,Tend_9 <= 0
 R933: Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,1,Tstart_6,Tend_9 <= 0
 R934: 100 Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart_7,Tend_10 <= 0
 R935: Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,1,Tstart_7,Tend_10 <= 0
 R936: 100 Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart_8,Tend_11 <= 0
 R937: Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,1,Tstart_8,Tend_11 <= 0
 R938: 100 Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_0,Tend_1 <= 0
 R939: Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_0,Tend_1 <= 0
 R940: 100 Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_1,Tend_2 <= 0
 R941: Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_1,Tend_2 <= 0
 R942: 100 Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_2,Tend_3 <= 0
 R943: Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_2,Tend_3 <= 0
 R944: 100 Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_3,Tend_4 <= 0
 R945: Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_3,Tend_4 <= 0
 R946: 100 Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_4,Tend_5 <= 0
 R947: Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_4,Tend_5 <= 0
 R948: 100 Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_5,Tend_6 <= 0
 R949: Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_5,Tend_6 <= 0
 R950: 100 Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_6,Tend_7 <= 0
 R951: Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_6,Tend_7 <= 0
 R952: 100 Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_7,Tend_8 <= 0
 R953: Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_7,Tend_8 <= 0
 R954: 100 Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_8,Tend_9 <= 0
 R955: Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_8,Tend_9 <= 0
 R956: 100 Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_9,Tend_10 <= 0
 R957: Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_9,Tend_10 <= 0
 R958: 100 Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart_10,Tend_11 <= 0
 R959: Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart_10,Tend_11 <= 0
 R960: 100 Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart_1,Tend_2 <= 0
 R961: Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,3,Tstart_1,Tend_2 <= 0
 R962: 100 Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart_2,Tend_3 <= 0
 R963: Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,3,Tstart_2,Tend_3 <= 0
 R964: 100 Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart_3,Tend_4 <= 0
 R965: Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,3,Tstart_3,Tend_4 <= 0
 R966: 100 Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart_4,Tend_5 <= 0
 R967: Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,3,Tstart_4,Tend_5 <= 0
 R968: 100 Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart_5,Tend_6 <= 0
 R969: Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,3,Tstart_5,Tend_6 <= 0
 R970: 100 Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart_10,Tend_11 <= 0
 R971: Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,3,Tstart_10,Tend_11 <= 0
 R972: 100 Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart_0,Tend_1 <= 0
 R973: Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart_0,Tend_1 <= 0
 R974: 100 Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart_2,Tend_3 <= 0
 R975: Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart_2,Tend_3 <= 0
 R976: 100 Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart_3,Tend_4 <= 0
 R977: Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart_3,Tend_4 <= 0
 R978: 100 Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart_4,Tend_5 <= 0
 R979: Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart_4,Tend_5 <= 0
 R980: 100 Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart_5,Tend_6 <= 0
 R981: Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart_5,Tend_6 <= 0
 R982: 100 Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart_6,Tend_7 <= 0
 R983: Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart_6,Tend_7 <= 0
 R984: 100 Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart_0,Tend_2 <= 0
 R985: Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart_0,Tend_2 <= 0
 R986: 100 Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart_2,Tend_3 <= 0
 R987: Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart_2,Tend_3 <= 0
 R988: 100 Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart_3,Tend_4 <= 0
 R989: Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart_3,Tend_4 <= 0
 R990: 100 Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart_4,Tend_5 <= 0
 R991: Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart_4,Tend_5 <= 0
 R992: 100 Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart_5,Tend_6 <= 0
 R993: Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart_5,Tend_6 <= 0
 R994: Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity0 >= 0
 R995: Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity1 >= 0
 R996: Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity2 >= 0
 R997: Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity3 >= 0
 R998: Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity4 >= 0
 R999: Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity0 >= 0
 R1000: Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity1 >= 0
 R1001: Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity2 >= 0
 R1002: Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity3 >= 0
 R1003: Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity4 >= 0
 R1004: sc_commodity_outflow_0,0,0,Tstart_0,Tend_4 >= 0
 R1005: sc_commodity_inflow_0,0,0,Tstart_0,Tend_4 >= 0
 R1006: Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity0 >= 0
 R1007: Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity1 >= 0
 R1008: Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity2 >= 0
 R1009: Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity3 >= 0
 R1010: Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity4 >= 0
 R1011: Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity0 >= 0
 R1012: Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity1 >= 0
 R1013: Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity2 >= 0
 R1014: Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity3 >= 0
 R1015: Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity4 >= 0
 R1016: sc_commodity_outflow_0,0,0,Tstart_4,Tend_8 >= 0
 R1017: sc_commodity_inflow_0,0,0,Tstart_4,Tend_8 >= 0
 R1018: Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity0 >= 0
 R1019: Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity1 >= 0
 R1020: Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity2 >= 0
 R1021: Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity3 >= 0
 R1022: Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity4 >= 0
 R1023: Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity0 >= 0
 R1024: Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity1 >= 0
 R1025: Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity2 >= 0
 R1026: Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity3 >= 0
 R1027: Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity4 >= 0
 R1028: sc_commodity_outflow_0,0,0,Tstart_8,Tend_9 >= 0
 R1029: sc_commodity_inflow_0,0,0,Tstart_8,Tend_9 >= 0
 R1030: Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity0 >= 0
 R1031: Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity1 >= 0
 R1032: Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity2 >= 0
 R1033: Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity3 >= 0
 R1034: Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity4 >= 0
 R1035: Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity0 >= 0
 R1036: Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity1 >= 0
 R1037: Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity2 >= 0
 R1038: Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity3 >= 0
 R1039: Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity4 >= 0
 R1040: sc_commodity_outflow_0,0,0,Tstart_9,Tend_10 >= 0
 R1041: sc_commodity_inflow_0,0,0,Tstart_9,Tend_10 >= 0
 R1042: Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity0 >= 0
 R1043: Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity1 >= 0
 R1044: Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity2 >= 0
 R1045: Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity3 >= 0
 R1046: Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity4 >= 0
 R1047: Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity0 >= 0
 R1048: Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity1 >= 0
 R1049: Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity2 >= 0
 R1050: Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity3 >= 0
 R1051: Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity4 >= 0
 R1052: sc_commodity_outflow_0,0,0,Tstart_10,Tend_11 >= 0
 R1053: sc_commodity_inflow_0,0,0,Tstart_10,Tend_11 >= 0
 R1054: Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity0 >= 0
 R1055: Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity1 >= 0
 R1056: Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity2 >= 0
 R1057: Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity3 >= 0
 R1058: Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity4 >= 0
 R1059: Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity0 >= 0
 R1060: Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity1 >= 0
 R1061: Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity2 >= 0
 R1062: Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity3 >= 0
 R1063: Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity4 >= 0
 R1064: sc_commodity_outflow_0,0,1,Tstart_4,Tend_5 >= 0
 R1065: sc_commodity_inflow_0,0,1,Tstart_4,Tend_5 >= 0
 R1066: Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity0 >= 0
 R1067: Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity1 >= 0
 R1068: Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity2 >= 0
 R1069: Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity3 >= 0
 R1070: Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity4 >= 0
 R1071: Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity0 >= 0
 R1072: Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity1 >= 0
 R1073: Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity2 >= 0
 R1074: Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity3 >= 0
 R1075: Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity4 >= 0
 R1076: sc_commodity_outflow_0,0,1,Tstart_8,Tend_9 >= 0
 R1077: sc_commodity_inflow_0,0,1,Tstart_8,Tend_9 >= 0
 R1078: Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity0 >= 0
 R1079: Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity1 >= 0
 R1080: Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity2 >= 0
 R1081: Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity3 >= 0
 R1082: Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity4 >= 0
 R1083: Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity0 >= 0
 R1084: Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity1 >= 0
 R1085: Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity2 >= 0
 R1086: Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity3 >= 0
 R1087: Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity4 >= 0
 R1088: sc_commodity_outflow_0,0,1,Tstart_9,Tend_10 >= 0
 R1089: sc_commodity_inflow_0,0,1,Tstart_9,Tend_10 >= 0
 R1090: Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity0 >= 0
 R1091: Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity1 >= 0
 R1092: Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity2 >= 0
 R1093: Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity3 >= 0
 R1094: Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity4 >= 0
 R1095: Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity0 >= 0
 R1096: Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity1 >= 0
 R1097: Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity2 >= 0
 R1098: Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity3 >= 0
 R1099: Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity4 >= 0
 R1100: sc_commodity_outflow_0,0,1,Tstart_10,Tend_11 >= 0
 R1101: sc_commodity_inflow_0,0,1,Tstart_10,Tend_11 >= 0
 R1102: Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity0 >= 0
 R1103: Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity1 >= 0
 R1104: Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity2 >= 0
 R1105: Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity3 >= 0
 R1106: Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity4 >= 0
 R1107: Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity0 >= 0
 R1108: Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity1 >= 0
 R1109: Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity2 >= 0
 R1110: Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity3 >= 0
 R1111: Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity4 >= 0
 R1112: sc_commodity_outflow_0,1,0,Tstart_9,Tend_10 >= 0
 R1113: sc_commodity_inflow_0,1,0,Tstart_9,Tend_10 >= 0
 R1114: Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity0 >= 0
 R1115: Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity1 >= 0
 R1116: Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity2 >= 0
 R1117: Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity3 >= 0
 R1118: Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity4 >= 0
 R1119: Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity0 >= 0
 R1120: Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity1 >= 0
 R1121: Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity2 >= 0
 R1122: Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity3 >= 0
 R1123: Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity4 >= 0
 R1124: sc_commodity_outflow_0,1,0,Tstart_10,Tend_11 >= 0
 R1125: sc_commodity_inflow_0,1,0,Tstart_10,Tend_11 >= 0
 R1126: Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity0 >= 0
 R1127: Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity1 >= 0
 R1128: Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity2 >= 0
 R1129: Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity3 >= 0
 R1130: Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity4 >= 0
 R1131: Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity0 >= 0
 R1132: Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity1 >= 0
 R1133: Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity2 >= 0
 R1134: Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity3 >= 0
 R1135: Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity4 >= 0
 R1136: sc_commodity_outflow_0,1,1,Tstart_0,Tend_5 >= 0
 R1137: sc_commodity_inflow_0,1,1,Tstart_0,Tend_5 >= 0
 R1138: Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity0 >= 0
 R1139: Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity1 >= 0
 R1140: Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity2 >= 0
 R1141: Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity3 >= 0
 R1142: Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity4 >= 0
 R1143: Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity0 >= 0
 R1144: Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity1 >= 0
 R1145: Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity2 >= 0
 R1146: Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity3 >= 0
 R1147: Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity4 >= 0
 R1148: sc_commodity_outflow_0,1,1,Tstart_5,Tend_9 >= 0
 R1149: sc_commodity_inflow_0,1,1,Tstart_5,Tend_9 >= 0
 R1150: Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity0 >= 0
 R1151: Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity1 >= 0
 R1152: Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity2 >= 0
 R1153: Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity3 >= 0
 R1154: Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity4 >= 0
 R1155: Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity0 >= 0
 R1156: Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity1 >= 0
 R1157: Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity2 >= 0
 R1158: Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity3 >= 0
 R1159: Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity4 >= 0
 R1160: sc_commodity_outflow_0,1,1,Tstart_9,Tend_10 >= 0
 R1161: sc_commodity_inflow_0,1,1,Tstart_9,Tend_10 >= 0
 R1162: Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity0 >= 0
 R1163: Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity1 >= 0
 R1164: Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity2 >= 0
 R1165: Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity3 >= 0
 R1166: Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity4 >= 0
 R1167: Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity0 >= 0
 R1168: Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity1 >= 0
 R1169: Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity2 >= 0
 R1170: Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity3 >= 0
 R1171: Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity4 >= 0
 R1172: sc_commodity_outflow_0,1,1,Tstart_10,Tend_11 >= 0
 R1173: sc_commodity_inflow_0,1,1,Tstart_10,Tend_11 >= 0
 R1174: Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity0 >= 0
 R1175: Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity1 >= 0
 R1176: Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity2 >= 0
 R1177: Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity3 >= 0
 R1178: Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity4 >= 0
 R1179: Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity0 >= 0
 R1180: Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity1 >= 0
 R1181: Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity2 >= 0
 R1182: Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity3 >= 0
 R1183: Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity4 >= 0
 R1184: sc_commodity_outflow_0,1,2,Tstart_0,Tend_3 >= 0
 R1185: sc_commodity_inflow_0,1,2,Tstart_0,Tend_3 >= 0
 R1186: Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity0 >= 0
 R1187: Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity1 >= 0
 R1188: Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity2 >= 0
 R1189: Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity3 >= 0
 R1190: Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity4 >= 0
 R1191: Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity0 >= 0
 R1192: Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity1 >= 0
 R1193: Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity2 >= 0
 R1194: Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity3 >= 0
 R1195: Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity4 >= 0
 R1196: sc_commodity_outflow_0,1,2,Tstart_5,Tend_8 >= 0
 R1197: sc_commodity_inflow_0,1,2,Tstart_5,Tend_8 >= 0
 R1198: Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity0 >= 0
 R1199: Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity1 >= 0
 R1200: Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity2 >= 0
 R1201: Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity3 >= 0
 R1202: Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity4 >= 0
 R1203: Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity0 >= 0
 R1204: Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity1 >= 0
 R1205: Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity2 >= 0
 R1206: Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity3 >= 0
 R1207: Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity4 >= 0
 R1208: sc_commodity_outflow_0,2,1,Tstart_2,Tend_5 >= 0
 R1209: sc_commodity_inflow_0,2,1,Tstart_2,Tend_5 >= 0
 R1210: Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity0 >= 0
 R1211: Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity1 >= 0
 R1212: Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity2 >= 0
 R1213: Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity3 >= 0
 R1214: Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity4 >= 0
 R1215: Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity0 >= 0
 R1216: Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity1 >= 0
 R1217: Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity2 >= 0
 R1218: Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity3 >= 0
 R1219: Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity4 >= 0
 R1220: sc_commodity_outflow_0,2,1,Tstart_6,Tend_9 >= 0
 R1221: sc_commodity_inflow_0,2,1,Tstart_6,Tend_9 >= 0
 R1222: Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity0 >= 0
 R1223: Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity1 >= 0
 R1224: Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity2 >= 0
 R1225: Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity3 >= 0
 R1226: Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity4 >= 0
 R1227: Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity0 >= 0
 R1228: Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity1 >= 0
 R1229: Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity2 >= 0
 R1230: Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity3 >= 0
 R1231: Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity4 >= 0
 R1232: sc_commodity_outflow_0,2,1,Tstart_7,Tend_10 >= 0
 R1233: sc_commodity_inflow_0,2,1,Tstart_7,Tend_10 >= 0
 R1234: Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity0 >= 0
 R1235: Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity1 >= 0
 R1236: Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity2 >= 0
 R1237: Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity3 >= 0
 R1238: Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity4 >= 0
 R1239: Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity0 >= 0
 R1240: Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity1 >= 0
 R1241: Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity2 >= 0
 R1242: Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity3 >= 0
 R1243: Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity4 >= 0
 R1244: sc_commodity_outflow_0,2,1,Tstart_8,Tend_11 >= 0
 R1245: sc_commodity_inflow_0,2,1,Tstart_8,Tend_11 >= 0
 R1246: Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity0 >= 0
 R1247: Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity1 >= 0
 R1248: Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity2 >= 0
 R1249: Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity3 >= 0
 R1250: Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity4 >= 0
 R1251: Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity0 >= 0
 R1252: Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity1 >= 0
 R1253: Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity2 >= 0
 R1254: Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity3 >= 0
 R1255: Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity4 >= 0
 R1256: sc_commodity_outflow_0,2,2,Tstart_0,Tend_1 >= 0
 R1257: sc_commodity_inflow_0,2,2,Tstart_0,Tend_1 >= 0
 R1258: Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity0 >= 0
 R1259: Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity1 >= 0
 R1260: Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity2 >= 0
 R1261: Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity3 >= 0
 R1262: Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity4 >= 0
 R1263: Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity0 >= 0
 R1264: Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity1 >= 0
 R1265: Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity2 >= 0
 R1266: Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity3 >= 0
 R1267: Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity4 >= 0
 R1268: sc_commodity_outflow_0,2,2,Tstart_1,Tend_2 >= 0
 R1269: sc_commodity_inflow_0,2,2,Tstart_1,Tend_2 >= 0
 R1270: Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity0 >= 0
 R1271: Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity1 >= 0
 R1272: Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity2 >= 0
 R1273: Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity3 >= 0
 R1274: Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity4 >= 0
 R1275: Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity0 >= 0
 R1276: Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity1 >= 0
 R1277: Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity2 >= 0
 R1278: Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity3 >= 0
 R1279: Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity4 >= 0
 R1280: sc_commodity_outflow_0,2,2,Tstart_2,Tend_3 >= 0
 R1281: sc_commodity_inflow_0,2,2,Tstart_2,Tend_3 >= 0
 R1282: Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity0 >= 0
 R1283: Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity1 >= 0
 R1284: Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity2 >= 0
 R1285: Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity3 >= 0
 R1286: Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity4 >= 0
 R1287: Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity0 >= 0
 R1288: Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity1 >= 0
 R1289: Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity2 >= 0
 R1290: Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity3 >= 0
 R1291: Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity4 >= 0
 R1292: sc_commodity_outflow_0,2,2,Tstart_3,Tend_4 >= 0
 R1293: sc_commodity_inflow_0,2,2,Tstart_3,Tend_4 >= 0
 R1294: Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity0 >= 0
 R1295: Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity1 >= 0
 R1296: Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity2 >= 0
 R1297: Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity3 >= 0
 R1298: Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity4 >= 0
 R1299: Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity0 >= 0
 R1300: Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity1 >= 0
 R1301: Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity2 >= 0
 R1302: Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity3 >= 0
 R1303: Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity4 >= 0
 R1304: sc_commodity_outflow_0,2,2,Tstart_4,Tend_5 >= 0
 R1305: sc_commodity_inflow_0,2,2,Tstart_4,Tend_5 >= 0
 R1306: Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity0 >= 0
 R1307: Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity1 >= 0
 R1308: Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity2 >= 0
 R1309: Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity3 >= 0
 R1310: Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity4 >= 0
 R1311: Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity0 >= 0
 R1312: Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity1 >= 0
 R1313: Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity2 >= 0
 R1314: Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity3 >= 0
 R1315: Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity4 >= 0
 R1316: sc_commodity_outflow_0,2,2,Tstart_5,Tend_6 >= 0
 R1317: sc_commodity_inflow_0,2,2,Tstart_5,Tend_6 >= 0
 R1318: Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity0 >= 0
 R1319: Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity1 >= 0
 R1320: Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity2 >= 0
 R1321: Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity3 >= 0
 R1322: Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity4 >= 0
 R1323: Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity0 >= 0
 R1324: Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity1 >= 0
 R1325: Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity2 >= 0
 R1326: Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity3 >= 0
 R1327: Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity4 >= 0
 R1328: sc_commodity_outflow_0,2,2,Tstart_6,Tend_7 >= 0
 R1329: sc_commodity_inflow_0,2,2,Tstart_6,Tend_7 >= 0
 R1330: Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity0 >= 0
 R1331: Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity1 >= 0
 R1332: Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity2 >= 0
 R1333: Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity3 >= 0
 R1334: Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity4 >= 0
 R1335: Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity0 >= 0
 R1336: Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity1 >= 0
 R1337: Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity2 >= 0
 R1338: Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity3 >= 0
 R1339: Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity4 >= 0
 R1340: sc_commodity_outflow_0,2,2,Tstart_7,Tend_8 >= 0
 R1341: sc_commodity_inflow_0,2,2,Tstart_7,Tend_8 >= 0
 R1342: Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity0 >= 0
 R1343: Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity1 >= 0
 R1344: Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity2 >= 0
 R1345: Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity3 >= 0
 R1346: Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity4 >= 0
 R1347: Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity0 >= 0
 R1348: Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity1 >= 0
 R1349: Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity2 >= 0
 R1350: Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity3 >= 0
 R1351: Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity4 >= 0
 R1352: sc_commodity_outflow_0,2,2,Tstart_8,Tend_9 >= 0
 R1353: sc_commodity_inflow_0,2,2,Tstart_8,Tend_9 >= 0
 R1354: Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity0 >= 0
 R1355: Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity1 >= 0
 R1356: Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity2 >= 0
 R1357: Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity3 >= 0
 R1358: Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity4 >= 0
 R1359: Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity0 >= 0
 R1360: Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity1 >= 0
 R1361: Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity2 >= 0
 R1362: Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity3 >= 0
 R1363: Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity4 >= 0
 R1364: sc_commodity_outflow_0,2,2,Tstart_9,Tend_10 >= 0
 R1365: sc_commodity_inflow_0,2,2,Tstart_9,Tend_10 >= 0
 R1366: Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity0 >= 0
 R1367: Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity1 >= 0
 R1368: Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity2 >= 0
 R1369: Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity3 >= 0
 R1370: Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity4 >= 0
 R1371: Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity0 >= 0
 R1372: Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity1 >= 0
 R1373: Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity2 >= 0
 R1374: Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity3 >= 0
 R1375: Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity4 >= 0
 R1376: sc_commodity_outflow_0,2,2,Tstart_10,Tend_11 >= 0
 R1377: sc_commodity_inflow_0,2,2,Tstart_10,Tend_11 >= 0
 R1378: Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity0 >= 0
 R1379: Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity1 >= 0
 R1380: Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity2 >= 0
 R1381: Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity3 >= 0
 R1382: Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity4 >= 0
 R1383: Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity0 >= 0
 R1384: Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity1 >= 0
 R1385: Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity2 >= 0
 R1386: Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity3 >= 0
 R1387: Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity4 >= 0
 R1388: sc_commodity_outflow_0,2,3,Tstart_1,Tend_2 >= 0
 R1389: sc_commodity_inflow_0,2,3,Tstart_1,Tend_2 >= 0
 R1390: Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity0 >= 0
 R1391: Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity1 >= 0
 R1392: Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity2 >= 0
 R1393: Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity3 >= 0
 R1394: Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity4 >= 0
 R1395: Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity0 >= 0
 R1396: Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity1 >= 0
 R1397: Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity2 >= 0
 R1398: Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity3 >= 0
 R1399: Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity4 >= 0
 R1400: sc_commodity_outflow_0,2,3,Tstart_2,Tend_3 >= 0
 R1401: sc_commodity_inflow_0,2,3,Tstart_2,Tend_3 >= 0
 R1402: Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity0 >= 0
 R1403: Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity1 >= 0
 R1404: Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity2 >= 0
 R1405: Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity3 >= 0
 R1406: Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity4 >= 0
 R1407: Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity0 >= 0
 R1408: Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity1 >= 0
 R1409: Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity2 >= 0
 R1410: Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity3 >= 0
 R1411: Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity4 >= 0
 R1412: sc_commodity_outflow_0,2,3,Tstart_3,Tend_4 >= 0
 R1413: sc_commodity_inflow_0,2,3,Tstart_3,Tend_4 >= 0
 R1414: Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity0 >= 0
 R1415: Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity1 >= 0
 R1416: Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity2 >= 0
 R1417: Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity3 >= 0
 R1418: Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity4 >= 0
 R1419: Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity0 >= 0
 R1420: Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity1 >= 0
 R1421: Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity2 >= 0
 R1422: Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity3 >= 0
 R1423: Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity4 >= 0
 R1424: sc_commodity_outflow_0,2,3,Tstart_4,Tend_5 >= 0
 R1425: sc_commodity_inflow_0,2,3,Tstart_4,Tend_5 >= 0
 R1426: Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity0 >= 0
 R1427: Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity1 >= 0
 R1428: Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity2 >= 0
 R1429: Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity3 >= 0
 R1430: Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity4 >= 0
 R1431: Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity0 >= 0
 R1432: Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity1 >= 0
 R1433: Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity2 >= 0
 R1434: Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity3 >= 0
 R1435: Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity4 >= 0
 R1436: sc_commodity_outflow_0,2,3,Tstart_5,Tend_6 >= 0
 R1437: sc_commodity_inflow_0,2,3,Tstart_5,Tend_6 >= 0
 R1438: Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity0 >= 0
 R1439: Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity1 >= 0
 R1440: Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity2 >= 0
 R1441: Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity3 >= 0
 R1442: Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity4 >= 0
 R1443: Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity0 >= 0
 R1444: Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity1 >= 0
 R1445: Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity2 >= 0
 R1446: Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity3 >= 0
 R1447: Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity4 >= 0
 R1448: sc_commodity_outflow_0,2,3,Tstart_10,Tend_11 >= 0
 R1449: sc_commodity_inflow_0,2,3,Tstart_10,Tend_11 >= 0
 R1450: Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity0 >= 0
 R1451: Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity1 >= 0
 R1452: Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity2 >= 0
 R1453: Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity3 >= 0
 R1454: Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity4 >= 0
 R1455: Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity0 >= 0
 R1456: Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity1 >= 0
 R1457: Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity2 >= 0
 R1458: Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity3 >= 0
 R1459: Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity4 >= 0
 R1460: sc_commodity_outflow_0,3,2,Tstart_0,Tend_1 >= 0
 R1461: sc_commodity_inflow_0,3,2,Tstart_0,Tend_1 >= 0
 R1462: Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity0 >= 0
 R1463: Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity1 >= 0
 R1464: Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity2 >= 0
 R1465: Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity3 >= 0
 R1466: Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity4 >= 0
 R1467: Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity0 >= 0
 R1468: Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity1 >= 0
 R1469: Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity2 >= 0
 R1470: Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity3 >= 0
 R1471: Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity4 >= 0
 R1472: sc_commodity_outflow_0,3,2,Tstart_2,Tend_3 >= 0
 R1473: sc_commodity_inflow_0,3,2,Tstart_2,Tend_3 >= 0
 R1474: Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity0 >= 0
 R1475: Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity1 >= 0
 R1476: Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity2 >= 0
 R1477: Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity3 >= 0
 R1478: Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity4 >= 0
 R1479: Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity0 >= 0
 R1480: Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity1 >= 0
 R1481: Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity2 >= 0
 R1482: Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity3 >= 0
 R1483: Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity4 >= 0
 R1484: sc_commodity_outflow_0,3,2,Tstart_3,Tend_4 >= 0
 R1485: sc_commodity_inflow_0,3,2,Tstart_3,Tend_4 >= 0
 R1486: Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity0 >= 0
 R1487: Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity1 >= 0
 R1488: Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity2 >= 0
 R1489: Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity3 >= 0
 R1490: Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity4 >= 0
 R1491: Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity0 >= 0
 R1492: Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity1 >= 0
 R1493: Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity2 >= 0
 R1494: Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity3 >= 0
 R1495: Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity4 >= 0
 R1496: sc_commodity_outflow_0,3,2,Tstart_4,Tend_5 >= 0
 R1497: sc_commodity_inflow_0,3,2,Tstart_4,Tend_5 >= 0
 R1498: Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity0 >= 0
 R1499: Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity1 >= 0
 R1500: Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity2 >= 0
 R1501: Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity3 >= 0
 R1502: Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity4 >= 0
 R1503: Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity0 >= 0
 R1504: Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity1 >= 0
 R1505: Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity2 >= 0
 R1506: Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity3 >= 0
 R1507: Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity4 >= 0
 R1508: sc_commodity_outflow_0,3,2,Tstart_5,Tend_6 >= 0
 R1509: sc_commodity_inflow_0,3,2,Tstart_5,Tend_6 >= 0
 R1510: Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity0 >= 0
 R1511: Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity1 >= 0
 R1512: Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity2 >= 0
 R1513: Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity3 >= 0
 R1514: Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity4 >= 0
 R1515: Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity0 >= 0
 R1516: Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity1 >= 0
 R1517: Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity2 >= 0
 R1518: Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity3 >= 0
 R1519: Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity4 >= 0
 R1520: sc_commodity_outflow_0,3,2,Tstart_6,Tend_7 >= 0
 R1521: sc_commodity_inflow_0,3,2,Tstart_6,Tend_7 >= 0
 R1522: Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity0 >= 0
 R1523: Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity1 >= 0
 R1524: Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity2 >= 0
 R1525: Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity3 >= 0
 R1526: Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity4 >= 0
 R1527: Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity0 >= 0
 R1528: Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity1 >= 0
 R1529: Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity2 >= 0
 R1530: Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity3 >= 0
 R1531: Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity4 >= 0
 R1532: sc_commodity_outflow_0,3,3,Tstart_0,Tend_2 >= 0
 R1533: sc_commodity_inflow_0,3,3,Tstart_0,Tend_2 >= 0
 R1534: Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity0 >= 0
 R1535: Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity1 >= 0
 R1536: Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity2 >= 0
 R1537: Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity3 >= 0
 R1538: Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity4 >= 0
 R1539: Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity0 >= 0
 R1540: Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity1 >= 0
 R1541: Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity2 >= 0
 R1542: Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity3 >= 0
 R1543: Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity4 >= 0
 R1544: sc_commodity_outflow_0,3,3,Tstart_2,Tend_3 >= 0
 R1545: sc_commodity_inflow_0,3,3,Tstart_2,Tend_3 >= 0
 R1546: Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity0 >= 0
 R1547: Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity1 >= 0
 R1548: Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity2 >= 0
 R1549: Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity3 >= 0
 R1550: Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity4 >= 0
 R1551: Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity0 >= 0
 R1552: Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity1 >= 0
 R1553: Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity2 >= 0
 R1554: Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity3 >= 0
 R1555: Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity4 >= 0
 R1556: sc_commodity_outflow_0,3,3,Tstart_3,Tend_4 >= 0
 R1557: sc_commodity_inflow_0,3,3,Tstart_3,Tend_4 >= 0
 R1558: Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity0 >= 0
 R1559: Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity1 >= 0
 R1560: Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity2 >= 0
 R1561: Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity3 >= 0
 R1562: Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity4 >= 0
 R1563: Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity0 >= 0
 R1564: Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity1 >= 0
 R1565: Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity2 >= 0
 R1566: Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity3 >= 0
 R1567: Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity4 >= 0
 R1568: sc_commodity_outflow_0,3,3,Tstart_4,Tend_5 >= 0
 R1569: sc_commodity_inflow_0,3,3,Tstart_4,Tend_5 >= 0
 R1570: Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity0 >= 0
 R1571: Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity1 >= 0
 R1572: Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity2 >= 0
 R1573: Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity3 >= 0
 R1574: Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity4 >= 0
 R1575: Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity0 >= 0
 R1576: Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity1 >= 0
 R1577: Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity2 >= 0
 R1578: Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity3 >= 0
 R1579: Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity4 >= 0
 R1580: sc_commodity_outflow_0,3,3,Tstart_5,Tend_6 >= 0
 R1581: sc_commodity_inflow_0,3,3,Tstart_5,Tend_6 >= 0
 R1582: Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity0 >= 0
 R1583: Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity1 >= 0
 R1584: Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity2 >= 0
 R1585: Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity3 >= 0
 R1586: Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity4 >= 0
 R1587: Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity0 >= 0
 R1588: Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity1 >= 0
 R1589: Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity2 >= 0
 R1590: Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity3 >= 0
 R1591: Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity4 >= 0
 R1592: sc_commodity_outflow_1,0,0,Tstart_0,Tend_4 >= 0
 R1593: sc_commodity_inflow_1,0,0,Tstart_0,Tend_4 >= 0
 R1594: Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity0 >= 0
 R1595: Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity1 >= 0
 R1596: Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity2 >= 0
 R1597: Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity3 >= 0
 R1598: Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity4 >= 0
 R1599: Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity0 >= 0
 R1600: Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity1 >= 0
 R1601: Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity2 >= 0
 R1602: Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity3 >= 0
 R1603: Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity4 >= 0
 R1604: sc_commodity_outflow_1,0,0,Tstart_4,Tend_8 >= 0
 R1605: sc_commodity_inflow_1,0,0,Tstart_4,Tend_8 >= 0
 R1606: Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity0 >= 0
 R1607: Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity1 >= 0
 R1608: Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity2 >= 0
 R1609: Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity3 >= 0
 R1610: Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity4 >= 0
 R1611: Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity0 >= 0
 R1612: Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity1 >= 0
 R1613: Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity2 >= 0
 R1614: Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity3 >= 0
 R1615: Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity4 >= 0
 R1616: sc_commodity_outflow_1,0,0,Tstart_8,Tend_9 >= 0
 R1617: sc_commodity_inflow_1,0,0,Tstart_8,Tend_9 >= 0
 R1618: Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity0 >= 0
 R1619: Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity1 >= 0
 R1620: Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity2 >= 0
 R1621: Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity3 >= 0
 R1622: Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity4 >= 0
 R1623: Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity0 >= 0
 R1624: Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity1 >= 0
 R1625: Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity2 >= 0
 R1626: Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity3 >= 0
 R1627: Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity4 >= 0
 R1628: sc_commodity_outflow_1,0,0,Tstart_9,Tend_10 >= 0
 R1629: sc_commodity_inflow_1,0,0,Tstart_9,Tend_10 >= 0
 R1630: Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity0 >= 0
 R1631: Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity1 >= 0
 R1632: Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity2 >= 0
 R1633: Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity3 >= 0
 R1634: Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity4 >= 0
 R1635: Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity0 >= 0
 R1636: Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity1 >= 0
 R1637: Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity2 >= 0
 R1638: Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity3 >= 0
 R1639: Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity4 >= 0
 R1640: sc_commodity_outflow_1,0,0,Tstart_10,Tend_11 >= 0
 R1641: sc_commodity_inflow_1,0,0,Tstart_10,Tend_11 >= 0
 R1642: Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity0 >= 0
 R1643: Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity1 >= 0
 R1644: Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity2 >= 0
 R1645: Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity3 >= 0
 R1646: Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity4 >= 0
 R1647: Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity0 >= 0
 R1648: Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity1 >= 0
 R1649: Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity2 >= 0
 R1650: Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity3 >= 0
 R1651: Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity4 >= 0
 R1652: sc_commodity_outflow_1,0,1,Tstart_4,Tend_5 >= 0
 R1653: sc_commodity_inflow_1,0,1,Tstart_4,Tend_5 >= 0
 R1654: Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity0 >= 0
 R1655: Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity1 >= 0
 R1656: Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity2 >= 0
 R1657: Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity3 >= 0
 R1658: Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity4 >= 0
 R1659: Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity0 >= 0
 R1660: Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity1 >= 0
 R1661: Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity2 >= 0
 R1662: Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity3 >= 0
 R1663: Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity4 >= 0
 R1664: sc_commodity_outflow_1,0,1,Tstart_8,Tend_9 >= 0
 R1665: sc_commodity_inflow_1,0,1,Tstart_8,Tend_9 >= 0
 R1666: Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity0 >= 0
 R1667: Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity1 >= 0
 R1668: Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity2 >= 0
 R1669: Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity3 >= 0
 R1670: Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity4 >= 0
 R1671: Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity0 >= 0
 R1672: Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity1 >= 0
 R1673: Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity2 >= 0
 R1674: Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity3 >= 0
 R1675: Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity4 >= 0
 R1676: sc_commodity_outflow_1,0,1,Tstart_9,Tend_10 >= 0
 R1677: sc_commodity_inflow_1,0,1,Tstart_9,Tend_10 >= 0
 R1678: Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity0 >= 0
 R1679: Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity1 >= 0
 R1680: Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity2 >= 0
 R1681: Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity3 >= 0
 R1682: Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity4 >= 0
 R1683: Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity0 >= 0
 R1684: Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity1 >= 0
 R1685: Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity2 >= 0
 R1686: Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity3 >= 0
 R1687: Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity4 >= 0
 R1688: sc_commodity_outflow_1,0,1,Tstart_10,Tend_11 >= 0
 R1689: sc_commodity_inflow_1,0,1,Tstart_10,Tend_11 >= 0
 R1690: Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity0 >= 0
 R1691: Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity1 >= 0
 R1692: Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity2 >= 0
 R1693: Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity3 >= 0
 R1694: Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity4 >= 0
 R1695: Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity0 >= 0
 R1696: Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity1 >= 0
 R1697: Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity2 >= 0
 R1698: Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity3 >= 0
 R1699: Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity4 >= 0
 R1700: sc_commodity_outflow_1,1,0,Tstart_9,Tend_10 >= 0
 R1701: sc_commodity_inflow_1,1,0,Tstart_9,Tend_10 >= 0
 R1702: Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity0 >= 0
 R1703: Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity1 >= 0
 R1704: Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity2 >= 0
 R1705: Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity3 >= 0
 R1706: Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity4 >= 0
 R1707: Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity0 >= 0
 R1708: Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity1 >= 0
 R1709: Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity2 >= 0
 R1710: Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity3 >= 0
 R1711: Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity4 >= 0
 R1712: sc_commodity_outflow_1,1,0,Tstart_10,Tend_11 >= 0
 R1713: sc_commodity_inflow_1,1,0,Tstart_10,Tend_11 >= 0
 R1714: Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity0 >= 0
 R1715: Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity1 >= 0
 R1716: Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity2 >= 0
 R1717: Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity3 >= 0
 R1718: Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity4 >= 0
 R1719: Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity0 >= 0
 R1720: Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity1 >= 0
 R1721: Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity2 >= 0
 R1722: Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity3 >= 0
 R1723: Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity4 >= 0
 R1724: sc_commodity_outflow_1,1,1,Tstart_0,Tend_5 >= 0
 R1725: sc_commodity_inflow_1,1,1,Tstart_0,Tend_5 >= 0
 R1726: Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity0 >= 0
 R1727: Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity1 >= 0
 R1728: Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity2 >= 0
 R1729: Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity3 >= 0
 R1730: Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity4 >= 0
 R1731: Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity0 >= 0
 R1732: Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity1 >= 0
 R1733: Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity2 >= 0
 R1734: Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity3 >= 0
 R1735: Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity4 >= 0
 R1736: sc_commodity_outflow_1,1,1,Tstart_5,Tend_9 >= 0
 R1737: sc_commodity_inflow_1,1,1,Tstart_5,Tend_9 >= 0
 R1738: Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity0 >= 0
 R1739: Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity1 >= 0
 R1740: Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity2 >= 0
 R1741: Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity3 >= 0
 R1742: Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity4 >= 0
 R1743: Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity0 >= 0
 R1744: Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity1 >= 0
 R1745: Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity2 >= 0
 R1746: Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity3 >= 0
 R1747: Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity4 >= 0
 R1748: sc_commodity_outflow_1,1,1,Tstart_9,Tend_10 >= 0
 R1749: sc_commodity_inflow_1,1,1,Tstart_9,Tend_10 >= 0
 R1750: Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity0 >= 0
 R1751: Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity1 >= 0
 R1752: Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity2 >= 0
 R1753: Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity3 >= 0
 R1754: Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity4 >= 0
 R1755: Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity0 >= 0
 R1756: Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity1 >= 0
 R1757: Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity2 >= 0
 R1758: Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity3 >= 0
 R1759: Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity4 >= 0
 R1760: sc_commodity_outflow_1,1,1,Tstart_10,Tend_11 >= 0
 R1761: sc_commodity_inflow_1,1,1,Tstart_10,Tend_11 >= 0
 R1762: Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity0 >= 0
 R1763: Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity1 >= 0
 R1764: Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity2 >= 0
 R1765: Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity3 >= 0
 R1766: Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity4 >= 0
 R1767: Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity0 >= 0
 R1768: Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity1 >= 0
 R1769: Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity2 >= 0
 R1770: Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity3 >= 0
 R1771: Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity4 >= 0
 R1772: sc_commodity_outflow_1,1,2,Tstart_0,Tend_3 >= 0
 R1773: sc_commodity_inflow_1,1,2,Tstart_0,Tend_3 >= 0
 R1774: Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity0 >= 0
 R1775: Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity1 >= 0
 R1776: Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity2 >= 0
 R1777: Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity3 >= 0
 R1778: Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity4 >= 0
 R1779: Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity0 >= 0
 R1780: Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity1 >= 0
 R1781: Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity2 >= 0
 R1782: Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity3 >= 0
 R1783: Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity4 >= 0
 R1784: sc_commodity_outflow_1,1,2,Tstart_5,Tend_8 >= 0
 R1785: sc_commodity_inflow_1,1,2,Tstart_5,Tend_8 >= 0
 R1786: Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity0 >= 0
 R1787: Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity1 >= 0
 R1788: Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity2 >= 0
 R1789: Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity3 >= 0
 R1790: Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity4 >= 0
 R1791: Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity0 >= 0
 R1792: Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity1 >= 0
 R1793: Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity2 >= 0
 R1794: Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity3 >= 0
 R1795: Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity4 >= 0
 R1796: sc_commodity_outflow_1,2,1,Tstart_2,Tend_5 >= 0
 R1797: sc_commodity_inflow_1,2,1,Tstart_2,Tend_5 >= 0
 R1798: Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity0 >= 0
 R1799: Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity1 >= 0
 R1800: Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity2 >= 0
 R1801: Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity3 >= 0
 R1802: Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity4 >= 0
 R1803: Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity0 >= 0
 R1804: Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity1 >= 0
 R1805: Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity2 >= 0
 R1806: Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity3 >= 0
 R1807: Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity4 >= 0
 R1808: sc_commodity_outflow_1,2,1,Tstart_6,Tend_9 >= 0
 R1809: sc_commodity_inflow_1,2,1,Tstart_6,Tend_9 >= 0
 R1810: Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity0 >= 0
 R1811: Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity1 >= 0
 R1812: Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity2 >= 0
 R1813: Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity3 >= 0
 R1814: Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity4 >= 0
 R1815: Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity0 >= 0
 R1816: Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity1 >= 0
 R1817: Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity2 >= 0
 R1818: Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity3 >= 0
 R1819: Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity4 >= 0
 R1820: sc_commodity_outflow_1,2,1,Tstart_7,Tend_10 >= 0
 R1821: sc_commodity_inflow_1,2,1,Tstart_7,Tend_10 >= 0
 R1822: Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity0 >= 0
 R1823: Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity1 >= 0
 R1824: Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity2 >= 0
 R1825: Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity3 >= 0
 R1826: Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity4 >= 0
 R1827: Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity0 >= 0
 R1828: Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity1 >= 0
 R1829: Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity2 >= 0
 R1830: Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity3 >= 0
 R1831: Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity4 >= 0
 R1832: sc_commodity_outflow_1,2,1,Tstart_8,Tend_11 >= 0
 R1833: sc_commodity_inflow_1,2,1,Tstart_8,Tend_11 >= 0
 R1834: Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity0 >= 0
 R1835: Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity1 >= 0
 R1836: Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity2 >= 0
 R1837: Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity3 >= 0
 R1838: Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity4 >= 0
 R1839: Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity0 >= 0
 R1840: Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity1 >= 0
 R1841: Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity2 >= 0
 R1842: Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity3 >= 0
 R1843: Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity4 >= 0
 R1844: sc_commodity_outflow_1,2,2,Tstart_0,Tend_1 >= 0
 R1845: sc_commodity_inflow_1,2,2,Tstart_0,Tend_1 >= 0
 R1846: Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity0 >= 0
 R1847: Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity1 >= 0
 R1848: Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity2 >= 0
 R1849: Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity3 >= 0
 R1850: Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity4 >= 0
 R1851: Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity0 >= 0
 R1852: Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity1 >= 0
 R1853: Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity2 >= 0
 R1854: Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity3 >= 0
 R1855: Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity4 >= 0
 R1856: sc_commodity_outflow_1,2,2,Tstart_1,Tend_2 >= 0
 R1857: sc_commodity_inflow_1,2,2,Tstart_1,Tend_2 >= 0
 R1858: Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity0 >= 0
 R1859: Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity1 >= 0
 R1860: Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity2 >= 0
 R1861: Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity3 >= 0
 R1862: Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity4 >= 0
 R1863: Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity0 >= 0
 R1864: Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity1 >= 0
 R1865: Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity2 >= 0
 R1866: Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity3 >= 0
 R1867: Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity4 >= 0
 R1868: sc_commodity_outflow_1,2,2,Tstart_2,Tend_3 >= 0
 R1869: sc_commodity_inflow_1,2,2,Tstart_2,Tend_3 >= 0
 R1870: Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity0 >= 0
 R1871: Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity1 >= 0
 R1872: Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity2 >= 0
 R1873: Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity3 >= 0
 R1874: Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity4 >= 0
 R1875: Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity0 >= 0
 R1876: Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity1 >= 0
 R1877: Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity2 >= 0
 R1878: Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity3 >= 0
 R1879: Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity4 >= 0
 R1880: sc_commodity_outflow_1,2,2,Tstart_3,Tend_4 >= 0
 R1881: sc_commodity_inflow_1,2,2,Tstart_3,Tend_4 >= 0
 R1882: Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity0 >= 0
 R1883: Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity1 >= 0
 R1884: Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity2 >= 0
 R1885: Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity3 >= 0
 R1886: Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity4 >= 0
 R1887: Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity0 >= 0
 R1888: Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity1 >= 0
 R1889: Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity2 >= 0
 R1890: Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity3 >= 0
 R1891: Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity4 >= 0
 R1892: sc_commodity_outflow_1,2,2,Tstart_4,Tend_5 >= 0
 R1893: sc_commodity_inflow_1,2,2,Tstart_4,Tend_5 >= 0
 R1894: Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity0 >= 0
 R1895: Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity1 >= 0
 R1896: Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity2 >= 0
 R1897: Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity3 >= 0
 R1898: Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity4 >= 0
 R1899: Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity0 >= 0
 R1900: Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity1 >= 0
 R1901: Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity2 >= 0
 R1902: Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity3 >= 0
 R1903: Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity4 >= 0
 R1904: sc_commodity_outflow_1,2,2,Tstart_5,Tend_6 >= 0
 R1905: sc_commodity_inflow_1,2,2,Tstart_5,Tend_6 >= 0
 R1906: Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity0 >= 0
 R1907: Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity1 >= 0
 R1908: Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity2 >= 0
 R1909: Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity3 >= 0
 R1910: Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity4 >= 0
 R1911: Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity0 >= 0
 R1912: Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity1 >= 0
 R1913: Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity2 >= 0
 R1914: Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity3 >= 0
 R1915: Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity4 >= 0
 R1916: sc_commodity_outflow_1,2,2,Tstart_6,Tend_7 >= 0
 R1917: sc_commodity_inflow_1,2,2,Tstart_6,Tend_7 >= 0
 R1918: Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity0 >= 0
 R1919: Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity1 >= 0
 R1920: Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity2 >= 0
 R1921: Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity3 >= 0
 R1922: Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity4 >= 0
 R1923: Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity0 >= 0
 R1924: Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity1 >= 0
 R1925: Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity2 >= 0
 R1926: Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity3 >= 0
 R1927: Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity4 >= 0
 R1928: sc_commodity_outflow_1,2,2,Tstart_7,Tend_8 >= 0
 R1929: sc_commodity_inflow_1,2,2,Tstart_7,Tend_8 >= 0
 R1930: Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity0 >= 0
 R1931: Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity1 >= 0
 R1932: Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity2 >= 0
 R1933: Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity3 >= 0
 R1934: Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity4 >= 0
 R1935: Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity0 >= 0
 R1936: Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity1 >= 0
 R1937: Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity2 >= 0
 R1938: Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity3 >= 0
 R1939: Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity4 >= 0
 R1940: sc_commodity_outflow_1,2,2,Tstart_8,Tend_9 >= 0
 R1941: sc_commodity_inflow_1,2,2,Tstart_8,Tend_9 >= 0
 R1942: Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity0 >= 0
 R1943: Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity1 >= 0
 R1944: Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity2 >= 0
 R1945: Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity3 >= 0
 R1946: Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity4 >= 0
 R1947: Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity0 >= 0
 R1948: Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity1 >= 0
 R1949: Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity2 >= 0
 R1950: Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity3 >= 0
 R1951: Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity4 >= 0
 R1952: sc_commodity_outflow_1,2,2,Tstart_9,Tend_10 >= 0
 R1953: sc_commodity_inflow_1,2,2,Tstart_9,Tend_10 >= 0
 R1954: Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity0 >= 0
 R1955: Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity1 >= 0
 R1956: Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity2 >= 0
 R1957: Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity3 >= 0
 R1958: Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity4 >= 0
 R1959: Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity0 >= 0
 R1960: Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity1 >= 0
 R1961: Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity2 >= 0
 R1962: Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity3 >= 0
 R1963: Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity4 >= 0
 R1964: sc_commodity_outflow_1,2,2,Tstart_10,Tend_11 >= 0
 R1965: sc_commodity_inflow_1,2,2,Tstart_10,Tend_11 >= 0
 R1966: Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity0 >= 0
 R1967: Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity1 >= 0
 R1968: Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity2 >= 0
 R1969: Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity3 >= 0
 R1970: Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity4 >= 0
 R1971: Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity0 >= 0
 R1972: Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity1 >= 0
 R1973: Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity2 >= 0
 R1974: Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity3 >= 0
 R1975: Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity4 >= 0
 R1976: sc_commodity_outflow_1,2,3,Tstart_1,Tend_2 >= 0
 R1977: sc_commodity_inflow_1,2,3,Tstart_1,Tend_2 >= 0
 R1978: Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity0 >= 0
 R1979: Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity1 >= 0
 R1980: Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity2 >= 0
 R1981: Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity3 >= 0
 R1982: Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity4 >= 0
 R1983: Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity0 >= 0
 R1984: Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity1 >= 0
 R1985: Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity2 >= 0
 R1986: Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity3 >= 0
 R1987: Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity4 >= 0
 R1988: sc_commodity_outflow_1,2,3,Tstart_2,Tend_3 >= 0
 R1989: sc_commodity_inflow_1,2,3,Tstart_2,Tend_3 >= 0
 R1990: Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity0 >= 0
 R1991: Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity1 >= 0
 R1992: Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity2 >= 0
 R1993: Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity3 >= 0
 R1994: Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity4 >= 0
 R1995: Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity0 >= 0
 R1996: Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity1 >= 0
 R1997: Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity2 >= 0
 R1998: Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity3 >= 0
 R1999: Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity4 >= 0
 R2000: sc_commodity_outflow_1,2,3,Tstart_3,Tend_4 >= 0
 R2001: sc_commodity_inflow_1,2,3,Tstart_3,Tend_4 >= 0
 R2002: Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity0 >= 0
 R2003: Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity1 >= 0
 R2004: Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity2 >= 0
 R2005: Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity3 >= 0
 R2006: Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity4 >= 0
 R2007: Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity0 >= 0
 R2008: Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity1 >= 0
 R2009: Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity2 >= 0
 R2010: Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity3 >= 0
 R2011: Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity4 >= 0
 R2012: sc_commodity_outflow_1,2,3,Tstart_4,Tend_5 >= 0
 R2013: sc_commodity_inflow_1,2,3,Tstart_4,Tend_5 >= 0
 R2014: Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity0 >= 0
 R2015: Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity1 >= 0
 R2016: Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity2 >= 0
 R2017: Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity3 >= 0
 R2018: Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity4 >= 0
 R2019: Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity0 >= 0
 R2020: Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity1 >= 0
 R2021: Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity2 >= 0
 R2022: Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity3 >= 0
 R2023: Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity4 >= 0
 R2024: sc_commodity_outflow_1,2,3,Tstart_5,Tend_6 >= 0
 R2025: sc_commodity_inflow_1,2,3,Tstart_5,Tend_6 >= 0
 R2026: Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity0 >= 0
 R2027: Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity1 >= 0
 R2028: Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity2 >= 0
 R2029: Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity3 >= 0
 R2030: Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity4 >= 0
 R2031: Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity0 >= 0
 R2032: Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity1 >= 0
 R2033: Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity2 >= 0
 R2034: Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity3 >= 0
 R2035: Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity4 >= 0
 R2036: sc_commodity_outflow_1,2,3,Tstart_10,Tend_11 >= 0
 R2037: sc_commodity_inflow_1,2,3,Tstart_10,Tend_11 >= 0
 R2038: Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity0 >= 0
 R2039: Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity1 >= 0
 R2040: Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity2 >= 0
 R2041: Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity3 >= 0
 R2042: Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity4 >= 0
 R2043: Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity0 >= 0
 R2044: Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity1 >= 0
 R2045: Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity2 >= 0
 R2046: Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity3 >= 0
 R2047: Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity4 >= 0
 R2048: sc_commodity_outflow_1,3,2,Tstart_0,Tend_1 >= 0
 R2049: sc_commodity_inflow_1,3,2,Tstart_0,Tend_1 >= 0
 R2050: Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity0 >= 0
 R2051: Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity1 >= 0
 R2052: Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity2 >= 0
 R2053: Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity3 >= 0
 R2054: Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity4 >= 0
 R2055: Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity0 >= 0
 R2056: Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity1 >= 0
 R2057: Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity2 >= 0
 R2058: Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity3 >= 0
 R2059: Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity4 >= 0
 R2060: sc_commodity_outflow_1,3,2,Tstart_2,Tend_3 >= 0
 R2061: sc_commodity_inflow_1,3,2,Tstart_2,Tend_3 >= 0
 R2062: Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity0 >= 0
 R2063: Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity1 >= 0
 R2064: Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity2 >= 0
 R2065: Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity3 >= 0
 R2066: Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity4 >= 0
 R2067: Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity0 >= 0
 R2068: Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity1 >= 0
 R2069: Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity2 >= 0
 R2070: Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity3 >= 0
 R2071: Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity4 >= 0
 R2072: sc_commodity_outflow_1,3,2,Tstart_3,Tend_4 >= 0
 R2073: sc_commodity_inflow_1,3,2,Tstart_3,Tend_4 >= 0
 R2074: Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity0 >= 0
 R2075: Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity1 >= 0
 R2076: Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity2 >= 0
 R2077: Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity3 >= 0
 R2078: Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity4 >= 0
 R2079: Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity0 >= 0
 R2080: Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity1 >= 0
 R2081: Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity2 >= 0
 R2082: Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity3 >= 0
 R2083: Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity4 >= 0
 R2084: sc_commodity_outflow_1,3,2,Tstart_4,Tend_5 >= 0
 R2085: sc_commodity_inflow_1,3,2,Tstart_4,Tend_5 >= 0
 R2086: Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity0 >= 0
 R2087: Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity1 >= 0
 R2088: Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity2 >= 0
 R2089: Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity3 >= 0
 R2090: Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity4 >= 0
 R2091: Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity0 >= 0
 R2092: Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity1 >= 0
 R2093: Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity2 >= 0
 R2094: Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity3 >= 0
 R2095: Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity4 >= 0
 R2096: sc_commodity_outflow_1,3,2,Tstart_5,Tend_6 >= 0
 R2097: sc_commodity_inflow_1,3,2,Tstart_5,Tend_6 >= 0
 R2098: Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity0 >= 0
 R2099: Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity1 >= 0
 R2100: Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity2 >= 0
 R2101: Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity3 >= 0
 R2102: Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity4 >= 0
 R2103: Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity0 >= 0
 R2104: Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity1 >= 0
 R2105: Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity2 >= 0
 R2106: Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity3 >= 0
 R2107: Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity4 >= 0
 R2108: sc_commodity_outflow_1,3,2,Tstart_6,Tend_7 >= 0
 R2109: sc_commodity_inflow_1,3,2,Tstart_6,Tend_7 >= 0
 R2110: Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity0 >= 0
 R2111: Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity1 >= 0
 R2112: Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity2 >= 0
 R2113: Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity3 >= 0
 R2114: Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity4 >= 0
 R2115: Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity0 >= 0
 R2116: Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity1 >= 0
 R2117: Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity2 >= 0
 R2118: Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity3 >= 0
 R2119: Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity4 >= 0
 R2120: sc_commodity_outflow_1,3,3,Tstart_0,Tend_2 >= 0
 R2121: sc_commodity_inflow_1,3,3,Tstart_0,Tend_2 >= 0
 R2122: Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity0 >= 0
 R2123: Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity1 >= 0
 R2124: Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity2 >= 0
 R2125: Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity3 >= 0
 R2126: Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity4 >= 0
 R2127: Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity0 >= 0
 R2128: Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity1 >= 0
 R2129: Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity2 >= 0
 R2130: Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity3 >= 0
 R2131: Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity4 >= 0
 R2132: sc_commodity_outflow_1,3,3,Tstart_2,Tend_3 >= 0
 R2133: sc_commodity_inflow_1,3,3,Tstart_2,Tend_3 >= 0
 R2134: Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity0 >= 0
 R2135: Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity1 >= 0
 R2136: Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity2 >= 0
 R2137: Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity3 >= 0
 R2138: Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity4 >= 0
 R2139: Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity0 >= 0
 R2140: Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity1 >= 0
 R2141: Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity2 >= 0
 R2142: Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity3 >= 0
 R2143: Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity4 >= 0
 R2144: sc_commodity_outflow_1,3,3,Tstart_3,Tend_4 >= 0
 R2145: sc_commodity_inflow_1,3,3,Tstart_3,Tend_4 >= 0
 R2146: Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity0 >= 0
 R2147: Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity1 >= 0
 R2148: Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity2 >= 0
 R2149: Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity3 >= 0
 R2150: Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity4 >= 0
 R2151: Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity0 >= 0
 R2152: Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity1 >= 0
 R2153: Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity2 >= 0
 R2154: Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity3 >= 0
 R2155: Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity4 >= 0
 R2156: sc_commodity_outflow_1,3,3,Tstart_4,Tend_5 >= 0
 R2157: sc_commodity_inflow_1,3,3,Tstart_4,Tend_5 >= 0
 R2158: Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity0 >= 0
 R2159: Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity1 >= 0
 R2160: Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity2 >= 0
 R2161: Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity3 >= 0
 R2162: Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity4 >= 0
 R2163: Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity0 >= 0
 R2164: Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity1 >= 0
 R2165: Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity2 >= 0
 R2166: Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity3 >= 0
 R2167: Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity4 >= 0
 R2168: sc_commodity_outflow_1,3,3,Tstart_5,Tend_6 >= 0
 R2169: sc_commodity_inflow_1,3,3,Tstart_5,Tend_6 >= 0
Bounds
Generals
 Classic_commodity_outflow_0,0,0,Tstart_0,Tend_4,Commodity0
 Classic_commodity_outflow_0,0,0,Tstart_4,Tend_8,Commodity0
 Classic_commodity_outflow_0,0,0,Tstart_8,Tend_9,Commodity0
 Classic_commodity_outflow_0,0,0,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_0,0,0,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_0,0,1,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_0,0,1,Tstart_8,Tend_9,Commodity0
 Classic_commodity_outflow_0,0,1,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_0,0,1,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_0,1,0,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_0,1,0,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_0,1,1,Tstart_0,Tend_5,Commodity0
 Classic_commodity_outflow_0,1,1,Tstart_5,Tend_9,Commodity0
 Classic_commodity_outflow_0,1,1,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_0,1,1,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_0,1,2,Tstart_0,Tend_3,Commodity0
 Classic_commodity_outflow_0,1,2,Tstart_5,Tend_8,Commodity0
 Classic_commodity_outflow_0,2,1,Tstart_2,Tend_5,Commodity0
 Classic_commodity_outflow_0,2,1,Tstart_6,Tend_9,Commodity0
 Classic_commodity_outflow_0,2,1,Tstart_7,Tend_10,Commodity0
 Classic_commodity_outflow_0,2,1,Tstart_8,Tend_11,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_0,Tend_1,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_1,Tend_2,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_2,Tend_3,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_3,Tend_4,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_5,Tend_6,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_6,Tend_7,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_7,Tend_8,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_8,Tend_9,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart_1,Tend_2,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart_2,Tend_3,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart_3,Tend_4,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart_5,Tend_6,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart_0,Tend_1,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart_2,Tend_3,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart_3,Tend_4,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart_5,Tend_6,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart_6,Tend_7,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart_0,Tend_2,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart_2,Tend_3,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart_3,Tend_4,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart_5,Tend_6,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart_0,Tend_4,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart_4,Tend_8,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart_8,Tend_9,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_1,0,1,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_1,0,1,Tstart_8,Tend_9,Commodity0
 Classic_commodity_outflow_1,0,1,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_1,0,1,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_1,1,0,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_1,1,0,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_1,1,1,Tstart_0,Tend_5,Commodity0
 Classic_commodity_outflow_1,1,1,Tstart_5,Tend_9,Commodity0
 Classic_commodity_outflow_1,1,1,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_1,1,1,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_1,1,2,Tstart_0,Tend_3,Commodity0
 Classic_commodity_outflow_1,1,2,Tstart_5,Tend_8,Commodity0
 Classic_commodity_outflow_1,2,1,Tstart_2,Tend_5,Commodity0
 Classic_commodity_outflow_1,2,1,Tstart_6,Tend_9,Commodity0
 Classic_commodity_outflow_1,2,1,Tstart_7,Tend_10,Commodity0
 Classic_commodity_outflow_1,2,1,Tstart_8,Tend_11,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_0,Tend_1,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_1,Tend_2,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_2,Tend_3,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_3,Tend_4,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_5,Tend_6,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_6,Tend_7,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_7,Tend_8,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_8,Tend_9,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_9,Tend_10,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart_1,Tend_2,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart_2,Tend_3,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart_3,Tend_4,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart_5,Tend_6,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart_10,Tend_11,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart_0,Tend_1,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart_2,Tend_3,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart_3,Tend_4,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart_5,Tend_6,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart_6,Tend_7,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart_0,Tend_2,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart_2,Tend_3,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart_3,Tend_4,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart_4,Tend_5,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart_5,Tend_6,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart_0,Tend_4,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart_4,Tend_8,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart_8,Tend_9,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_0,0,1,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_0,0,1,Tstart_8,Tend_9,Commodity0
 Classic_commodity_inflow_0,0,1,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_0,0,1,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_0,1,0,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_0,1,0,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_0,1,1,Tstart_0,Tend_5,Commodity0
 Classic_commodity_inflow_0,1,1,Tstart_5,Tend_9,Commodity0
 Classic_commodity_inflow_0,1,1,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_0,1,1,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_0,1,2,Tstart_0,Tend_3,Commodity0
 Classic_commodity_inflow_0,1,2,Tstart_5,Tend_8,Commodity0
 Classic_commodity_inflow_0,2,1,Tstart_2,Tend_5,Commodity0
 Classic_commodity_inflow_0,2,1,Tstart_6,Tend_9,Commodity0
 Classic_commodity_inflow_0,2,1,Tstart_7,Tend_10,Commodity0
 Classic_commodity_inflow_0,2,1,Tstart_8,Tend_11,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_0,Tend_1,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_1,Tend_2,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_2,Tend_3,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_3,Tend_4,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_5,Tend_6,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_6,Tend_7,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_7,Tend_8,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_8,Tend_9,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart_1,Tend_2,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart_2,Tend_3,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart_3,Tend_4,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart_5,Tend_6,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart_0,Tend_1,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart_2,Tend_3,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart_3,Tend_4,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart_5,Tend_6,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart_6,Tend_7,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart_0,Tend_2,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart_2,Tend_3,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart_3,Tend_4,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart_5,Tend_6,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart_0,Tend_4,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart_4,Tend_8,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart_8,Tend_9,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_1,0,1,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_1,0,1,Tstart_8,Tend_9,Commodity0
 Classic_commodity_inflow_1,0,1,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_1,0,1,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_1,1,0,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_1,1,0,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_1,1,1,Tstart_0,Tend_5,Commodity0
 Classic_commodity_inflow_1,1,1,Tstart_5,Tend_9,Commodity0
 Classic_commodity_inflow_1,1,1,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_1,1,1,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_1,1,2,Tstart_0,Tend_3,Commodity0
 Classic_commodity_inflow_1,1,2,Tstart_5,Tend_8,Commodity0
 Classic_commodity_inflow_1,2,1,Tstart_2,Tend_5,Commodity0
 Classic_commodity_inflow_1,2,1,Tstart_6,Tend_9,Commodity0
 Classic_commodity_inflow_1,2,1,Tstart_7,Tend_10,Commodity0
 Classic_commodity_inflow_1,2,1,Tstart_8,Tend_11,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_0,Tend_1,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_1,Tend_2,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_2,Tend_3,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_3,Tend_4,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_5,Tend_6,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_6,Tend_7,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_7,Tend_8,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_8,Tend_9,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_9,Tend_10,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart_1,Tend_2,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart_2,Tend_3,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart_3,Tend_4,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart_5,Tend_6,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart_10,Tend_11,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart_0,Tend_1,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart_2,Tend_3,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart_3,Tend_4,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart_5,Tend_6,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart_6,Tend_7,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart_0,Tend_2,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart_2,Tend_3,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart_3,Tend_4,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart_4,Tend_5,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart_5,Tend_6,Commodity0
 sc_commodity_outflow_0,0,0,Tstart_0,Tend_4
 sc_commodity_outflow_0,0,0,Tstart_4,Tend_8
 sc_commodity_outflow_0,0,0,Tstart_8,Tend_9
 sc_commodity_outflow_0,0,0,Tstart_9,Tend_10
 sc_commodity_outflow_0,0,0,Tstart_10,Tend_11
 sc_commodity_outflow_0,0,1,Tstart_4,Tend_5
 sc_commodity_outflow_0,0,1,Tstart_8,Tend_9
 sc_commodity_outflow_0,0,1,Tstart_9,Tend_10
 sc_commodity_outflow_0,0,1,Tstart_10,Tend_11
 sc_commodity_outflow_0,1,0,Tstart_9,Tend_10
 sc_commodity_outflow_0,1,0,Tstart_10,Tend_11
 sc_commodity_outflow_0,1,1,Tstart_0,Tend_5
 sc_commodity_outflow_0,1,1,Tstart_5,Tend_9
 sc_commodity_outflow_0,1,1,Tstart_9,Tend_10
 sc_commodity_outflow_0,1,1,Tstart_10,Tend_11
 sc_commodity_outflow_0,1,2,Tstart_0,Tend_3
 sc_commodity_outflow_0,1,2,Tstart_5,Tend_8
 sc_commodity_outflow_0,2,1,Tstart_2,Tend_5
 sc_commodity_outflow_0,2,1,Tstart_6,Tend_9
 sc_commodity_outflow_0,2,1,Tstart_7,Tend_10
 sc_commodity_outflow_0,2,1,Tstart_8,Tend_11
 sc_commodity_outflow_0,2,2,Tstart_0,Tend_1
 sc_commodity_outflow_0,2,2,Tstart_1,Tend_2
 sc_commodity_outflow_0,2,2,Tstart_2,Tend_3
 sc_commodity_outflow_0,2,2,Tstart_3,Tend_4
 sc_commodity_outflow_0,2,2,Tstart_4,Tend_5
 sc_commodity_outflow_0,2,2,Tstart_5,Tend_6
 sc_commodity_outflow_0,2,2,Tstart_6,Tend_7
 sc_commodity_outflow_0,2,2,Tstart_7,Tend_8
 sc_commodity_outflow_0,2,2,Tstart_8,Tend_9
 sc_commodity_outflow_0,2,2,Tstart_9,Tend_10
 sc_commodity_outflow_0,2,2,Tstart_10,Tend_11
 sc_commodity_outflow_0,2,3,Tstart_1,Tend_2
 sc_commodity_outflow_0,2,3,Tstart_2,Tend_3
 sc_commodity_outflow_0,2,3,Tstart_3,Tend_4
 sc_commodity_outflow_0,2,3,Tstart_4,Tend_5
 sc_commodity_outflow_0,2,3,Tstart_5,Tend_6
 sc_commodity_outflow_0,2,3,Tstart_10,Tend_11
 sc_commodity_outflow_0,3,2,Tstart_0,Tend_1
 sc_commodity_outflow_0,3,2,Tstart_2,Tend_3
 sc_commodity_outflow_0,3,2,Tstart_3,Tend_4
 sc_commodity_outflow_0,3,2,Tstart_4,Tend_5
 sc_commodity_outflow_0,3,2,Tstart_5,Tend_6
 sc_commodity_outflow_0,3,2,Tstart_6,Tend_7
 sc_commodity_outflow_0,3,3,Tstart_0,Tend_2
 sc_commodity_outflow_0,3,3,Tstart_2,Tend_3
 sc_commodity_outflow_0,3,3,Tstart_3,Tend_4
 sc_commodity_outflow_0,3,3,Tstart_4,Tend_5
 sc_commodity_outflow_0,3,3,Tstart_5,Tend_6
 sc_commodity_outflow_1,0,0,Tstart_0,Tend_4
 sc_commodity_outflow_1,0,0,Tstart_4,Tend_8
 sc_commodity_outflow_1,0,0,Tstart_8,Tend_9
 sc_commodity_outflow_1,0,0,Tstart_9,Tend_10
 sc_commodity_outflow_1,0,0,Tstart_10,Tend_11
 sc_commodity_outflow_1,0,1,Tstart_4,Tend_5
 sc_commodity_outflow_1,0,1,Tstart_8,Tend_9
 sc_commodity_outflow_1,0,1,Tstart_9,Tend_10
 sc_commodity_outflow_1,0,1,Tstart_10,Tend_11
 sc_commodity_outflow_1,1,0,Tstart_9,Tend_10
 sc_commodity_outflow_1,1,0,Tstart_10,Tend_11
 sc_commodity_outflow_1,1,1,Tstart_0,Tend_5
 sc_commodity_outflow_1,1,1,Tstart_5,Tend_9
 sc_commodity_outflow_1,1,1,Tstart_9,Tend_10
 sc_commodity_outflow_1,1,1,Tstart_10,Tend_11
 sc_commodity_outflow_1,1,2,Tstart_0,Tend_3
 sc_commodity_outflow_1,1,2,Tstart_5,Tend_8
 sc_commodity_outflow_1,2,1,Tstart_2,Tend_5
 sc_commodity_outflow_1,2,1,Tstart_6,Tend_9
 sc_commodity_outflow_1,2,1,Tstart_7,Tend_10
 sc_commodity_outflow_1,2,1,Tstart_8,Tend_11
 sc_commodity_outflow_1,2,2,Tstart_0,Tend_1
 sc_commodity_outflow_1,2,2,Tstart_1,Tend_2
 sc_commodity_outflow_1,2,2,Tstart_2,Tend_3
 sc_commodity_outflow_1,2,2,Tstart_3,Tend_4
 sc_commodity_outflow_1,2,2,Tstart_4,Tend_5
 sc_commodity_outflow_1,2,2,Tstart_5,Tend_6
 sc_commodity_outflow_1,2,2,Tstart_6,Tend_7
 sc_commodity_outflow_1,2,2,Tstart_7,Tend_8
 sc_commodity_outflow_1,2,2,Tstart_8,Tend_9
 sc_commodity_outflow_1,2,2,Tstart_9,Tend_10
 sc_commodity_outflow_1,2,2,Tstart_10,Tend_11
 sc_commodity_outflow_1,2,3,Tstart_1,Tend_2
 sc_commodity_outflow_1,2,3,Tstart_2,Tend_3
 sc_commodity_outflow_1,2,3,Tstart_3,Tend_4
 sc_commodity_outflow_1,2,3,Tstart_4,Tend_5
 sc_commodity_outflow_1,2,3,Tstart_5,Tend_6
 sc_commodity_outflow_1,2,3,Tstart_10,Tend_11
 sc_commodity_outflow_1,3,2,Tstart_0,Tend_1
 sc_commodity_outflow_1,3,2,Tstart_2,Tend_3
 sc_commodity_outflow_1,3,2,Tstart_3,Tend_4
 sc_commodity_outflow_1,3,2,Tstart_4,Tend_5
 sc_commodity_outflow_1,3,2,Tstart_5,Tend_6
 sc_commodity_outflow_1,3,2,Tstart_6,Tend_7
 sc_commodity_outflow_1,3,3,Tstart_0,Tend_2
 sc_commodity_outflow_1,3,3,Tstart_2,Tend_3
 sc_commodity_outflow_1,3,3,Tstart_3,Tend_4
 sc_commodity_outflow_1,3,3,Tstart_4,Tend_5
 sc_commodity_outflow_1,3,3,Tstart_5,Tend_6
 sc_commodity_inflow_0,0,0,Tstart_0,Tend_4
 sc_commodity_inflow_0,0,0,Tstart_4,Tend_8
 sc_commodity_inflow_0,0,0,Tstart_8,Tend_9
 sc_commodity_inflow_0,0,0,Tstart_9,Tend_10
 sc_commodity_inflow_0,0,0,Tstart_10,Tend_11
 sc_commodity_inflow_0,0,1,Tstart_4,Tend_5
 sc_commodity_inflow_0,0,1,Tstart_8,Tend_9
 sc_commodity_inflow_0,0,1,Tstart_9,Tend_10
 sc_commodity_inflow_0,0,1,Tstart_10,Tend_11
 sc_commodity_inflow_0,1,0,Tstart_9,Tend_10
 sc_commodity_inflow_0,1,0,Tstart_10,Tend_11
 sc_commodity_inflow_0,1,1,Tstart_0,Tend_5
 sc_commodity_inflow_0,1,1,Tstart_5,Tend_9
 sc_commodity_inflow_0,1,1,Tstart_9,Tend_10
 sc_commodity_inflow_0,1,1,Tstart_10,Tend_11
 sc_commodity_inflow_0,1,2,Tstart_0,Tend_3
 sc_commodity_inflow_0,1,2,Tstart_5,Tend_8
 sc_commodity_inflow_0,2,1,Tstart_2,Tend_5
 sc_commodity_inflow_0,2,1,Tstart_6,Tend_9
 sc_commodity_inflow_0,2,1,Tstart_7,Tend_10
 sc_commodity_inflow_0,2,1,Tstart_8,Tend_11
 sc_commodity_inflow_0,2,2,Tstart_0,Tend_1
 sc_commodity_inflow_0,2,2,Tstart_1,Tend_2
 sc_commodity_inflow_0,2,2,Tstart_2,Tend_3
 sc_commodity_inflow_0,2,2,Tstart_3,Tend_4
 sc_commodity_inflow_0,2,2,Tstart_4,Tend_5
 sc_commodity_inflow_0,2,2,Tstart_5,Tend_6
 sc_commodity_inflow_0,2,2,Tstart_6,Tend_7
 sc_commodity_inflow_0,2,2,Tstart_7,Tend_8
 sc_commodity_inflow_0,2,2,Tstart_8,Tend_9
 sc_commodity_inflow_0,2,2,Tstart_9,Tend_10
 sc_commodity_inflow_0,2,2,Tstart_10,Tend_11
 sc_commodity_inflow_0,2,3,Tstart_1,Tend_2
 sc_commodity_inflow_0,2,3,Tstart_2,Tend_3
 sc_commodity_inflow_0,2,3,Tstart_3,Tend_4
 sc_commodity_inflow_0,2,3,Tstart_4,Tend_5
 sc_commodity_inflow_0,2,3,Tstart_5,Tend_6
 sc_commodity_inflow_0,2,3,Tstart_10,Tend_11
 sc_commodity_inflow_0,3,2,Tstart_0,Tend_1
 sc_commodity_inflow_0,3,2,Tstart_2,Tend_3
 sc_commodity_inflow_0,3,2,Tstart_3,Tend_4
 sc_commodity_inflow_0,3,2,Tstart_4,Tend_5
 sc_commodity_inflow_0,3,2,Tstart_5,Tend_6
 sc_commodity_inflow_0,3,2,Tstart_6,Tend_7
 sc_commodity_inflow_0,3,3,Tstart_0,Tend_2
 sc_commodity_inflow_0,3,3,Tstart_2,Tend_3
 sc_commodity_inflow_0,3,3,Tstart_3,Tend_4
 sc_commodity_inflow_0,3,3,Tstart_4,Tend_5
 sc_commodity_inflow_0,3,3,Tstart_5,Tend_6
 sc_commodity_inflow_1,0,0,Tstart_0,Tend_4
 sc_commodity_inflow_1,0,0,Tstart_4,Tend_8
 sc_commodity_inflow_1,0,0,Tstart_8,Tend_9
 sc_commodity_inflow_1,0,0,Tstart_9,Tend_10
 sc_commodity_inflow_1,0,0,Tstart_10,Tend_11
 sc_commodity_inflow_1,0,1,Tstart_4,Tend_5
 sc_commodity_inflow_1,0,1,Tstart_8,Tend_9
 sc_commodity_inflow_1,0,1,Tstart_9,Tend_10
 sc_commodity_inflow_1,0,1,Tstart_10,Tend_11
 sc_commodity_inflow_1,1,0,Tstart_9,Tend_10
 sc_commodity_inflow_1,1,0,Tstart_10,Tend_11
 sc_commodity_inflow_1,1,1,Tstart_0,Tend_5
 sc_commodity_inflow_1,1,1,Tstart_5,Tend_9
 sc_commodity_inflow_1,1,1,Tstart_9,Tend_10
 sc_commodity_inflow_1,1,1,Tstart_10,Tend_11
 sc_commodity_inflow_1,1,2,Tstart_0,Tend_3
 sc_commodity_inflow_1,1,2,Tstart_5,Tend_8
 sc_commodity_inflow_1,2,1,Tstart_2,Tend_5
 sc_commodity_inflow_1,2,1,Tstart_6,Tend_9
 sc_commodity_inflow_1,2,1,Tstart_7,Tend_10
 sc_commodity_inflow_1,2,1,Tstart_8,Tend_11
 sc_commodity_inflow_1,2,2,Tstart_0,Tend_1
 sc_commodity_inflow_1,2,2,Tstart_1,Tend_2
 sc_commodity_inflow_1,2,2,Tstart_2,Tend_3
 sc_commodity_inflow_1,2,2,Tstart_3,Tend_4
 sc_commodity_inflow_1,2,2,Tstart_4,Tend_5
 sc_commodity_inflow_1,2,2,Tstart_5,Tend_6
 sc_commodity_inflow_1,2,2,Tstart_6,Tend_7
 sc_commodity_inflow_1,2,2,Tstart_7,Tend_8
 sc_commodity_inflow_1,2,2,Tstart_8,Tend_9
 sc_commodity_inflow_1,2,2,Tstart_9,Tend_10
 sc_commodity_inflow_1,2,2,Tstart_10,Tend_11
 sc_commodity_inflow_1,2,3,Tstart_1,Tend_2
 sc_commodity_inflow_1,2,3,Tstart_2,Tend_3
 sc_commodity_inflow_1,2,3,Tstart_3,Tend_4
 sc_commodity_inflow_1,2,3,Tstart_4,Tend_5
 sc_commodity_inflow_1,2,3,Tstart_5,Tend_6
 sc_commodity_inflow_1,2,3,Tstart_10,Tend_11
 sc_commodity_inflow_1,3,2,Tstart_0,Tend_1
 sc_commodity_inflow_1,3,2,Tstart_2,Tend_3
 sc_commodity_inflow_1,3,2,Tstart_3,Tend_4
 sc_commodity_inflow_1,3,2,Tstart_4,Tend_5
 sc_commodity_inflow_1,3,2,Tstart_5,Tend_6
 sc_commodity_inflow_1,3,2,Tstart_6,Tend_7
 sc_commodity_inflow_1,3,3,Tstart_0,Tend_2
 sc_commodity_inflow_1,3,3,Tstart_2,Tend_3
 sc_commodity_inflow_1,3,3,Tstart_3,Tend_4
 sc_commodity_inflow_1,3,3,Tstart_4,Tend_5
 sc_commodity_inflow_1,3,3,Tstart_5,Tend_6
End
