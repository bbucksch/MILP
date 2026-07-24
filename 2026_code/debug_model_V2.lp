\ Model Model_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe053b011c0bd1135
Minimize
  100 Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity4
   + 100 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4
   + 100 Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity4
   + 100 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4
   + 2500 sc_commodity_outflow_0,1,1,Tstart0,Tend5
   + 2500 sc_commodity_outflow_0,1,2,Tstart0,Tend3
   + 30 sc_commodity_outflow_1,1,1,Tstart0,Tend5
   + 30 sc_commodity_outflow_1,1,2,Tstart0,Tend3
   + 2500 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
   + 2500 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   + 2500 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
   + 2500 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
Subject To
 mass_balance_x_node0_time0_comm0:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0 <= 0
 mass_balance_x_node0_time0_comm1:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1 <= 0
 mass_balance_x_node0_time0_comm2:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity2 <= 0
 mass_balance_x_node0_time0_comm3:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity3 <= 0
 mass_balance_x_node0_time0_comm4:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity4 <= 0
 SC_mass_balance_x_node0_time0_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart0,Tend4
   + SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   + SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0 <= 0
 SC_mass_balance_x_node0_time0_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart0,Tend4
   + SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1
   + SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1 <= 0
 mass_balance_x_node1_time0_comm0:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0 <= 3
 mass_balance_x_node1_time0_comm1:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1 <= 99999
 mass_balance_x_node1_time0_comm2:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2 <= 99999
 mass_balance_x_node1_time0_comm3:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity3
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity3
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3 <= 0
 mass_balance_x_node1_time0_comm4:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity4
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity4
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4
   <= 9.9999999e+07
 SC_mass_balance_x_node1_time0_vehicle0:
   sc_commodity_outflow_0,1,1,Tstart0,Tend5
   + sc_commodity_outflow_0,1,2,Tstart0,Tend3
   + SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0 <= 1
 SC_mass_balance_x_node1_time0_vehicle1:
   sc_commodity_outflow_1,1,1,Tstart0,Tend5
   + sc_commodity_outflow_1,1,2,Tstart0,Tend3
   + SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
   + SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   + SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
   + SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1 <= 1
 mass_balance_x_node2_time0_comm0:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0 <= 0
 mass_balance_x_node2_time0_comm1:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1 <= 0
 mass_balance_x_node2_time0_comm2:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity2 <= 0
 mass_balance_x_node2_time0_comm3:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity3 <= 0
 mass_balance_x_node2_time0_comm4:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity4 <= 0
 SC_mass_balance_x_node2_time0_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart0,Tend1
   + SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0 <= 0
 SC_mass_balance_x_node2_time0_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart0,Tend1
   + SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1 <= 0
 mass_balance_x_node3_time0_comm0:
   Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0 <= 0
 mass_balance_x_node3_time0_comm1:
   Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1 <= 0
 mass_balance_x_node3_time0_comm2:
   Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity2 <= 0
 mass_balance_x_node3_time0_comm3:
   Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity3 <= 999999
 mass_balance_x_node3_time0_comm4:
   Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity4 <= 0
 SC_mass_balance_x_node3_time0_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart0,Tend1
   + sc_commodity_outflow_0,3,3,Tstart0,Tend2
   + SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   + SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   + SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   + SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0 <= 0
 SC_mass_balance_x_node3_time0_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart0,Tend1
   + sc_commodity_outflow_1,3,3,Tstart0,Tend2
   + SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   + SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1
   + SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   + SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1 <= 0
 mass_balance_x_node2_time1_comm0:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity0 <= 0
 mass_balance_x_node2_time1_comm1:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity1 <= 0
 mass_balance_x_node2_time1_comm2:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity2 <= 0
 mass_balance_x_node2_time1_comm3:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity3 <= 0
 mass_balance_x_node2_time1_comm4:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity4 <= 0
 SC_mass_balance_x_node2_time1_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart1,Tend2
   + sc_commodity_outflow_0,2,3,Tstart1,Tend2
   - sc_commodity_inflow_0,2,2,Tstart0,Tend1
   - sc_commodity_inflow_0,3,2,Tstart0,Tend1
   + SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   + SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   + SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity0 <= 0
 SC_mass_balance_x_node2_time1_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart1,Tend2
   + sc_commodity_outflow_1,2,3,Tstart1,Tend2
   - sc_commodity_inflow_1,2,2,Tstart0,Tend1
   - sc_commodity_inflow_1,3,2,Tstart0,Tend1
   + SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1
   + SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1
   + SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity1 <= 0
 mass_balance_x_node2_time2_comm0:
   Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity0 <= 0
 mass_balance_x_node2_time2_comm1:
   Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity1 <= 0
 mass_balance_x_node2_time2_comm2:
   Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity2 <= 0
 mass_balance_x_node2_time2_comm3:
   Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity3 <= 0
 mass_balance_x_node2_time2_comm4:
   Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity4
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity4
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity4 <= 0
 SC_mass_balance_x_node2_time2_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart2,Tend5
   + sc_commodity_outflow_0,2,2,Tstart2,Tend3
   + sc_commodity_outflow_0,2,3,Tstart2,Tend3
   - sc_commodity_inflow_0,2,2,Tstart1,Tend2
   + SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   + SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   + SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   + SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   + SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity0 <= 0
 SC_mass_balance_x_node2_time2_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart2,Tend5
   + sc_commodity_outflow_1,2,2,Tstart2,Tend3
   + sc_commodity_outflow_1,2,3,Tstart2,Tend3
   - sc_commodity_inflow_1,2,2,Tstart1,Tend2
   + SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   + SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1
   + SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   + SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1
   + SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity1 <= 0
 mass_balance_x_node3_time2_comm0:
   Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity0 <= 0
 mass_balance_x_node3_time2_comm1:
   Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity1 <= 0
 mass_balance_x_node3_time2_comm2:
   Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity2 <= 0
 mass_balance_x_node3_time2_comm3:
   Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity3 <= 999999
 mass_balance_x_node3_time2_comm4:
   Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity4 <= 0
 SC_mass_balance_x_node3_time2_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart2,Tend3
   + sc_commodity_outflow_0,3,3,Tstart2,Tend3
   - sc_commodity_inflow_0,2,3,Tstart1,Tend2
   - sc_commodity_inflow_0,3,3,Tstart0,Tend2
   + SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   + SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   + SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   + SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity0 <= 0
 SC_mass_balance_x_node3_time2_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart2,Tend3
   + sc_commodity_outflow_1,3,3,Tstart2,Tend3
   - sc_commodity_inflow_1,2,3,Tstart1,Tend2
   - sc_commodity_inflow_1,3,3,Tstart0,Tend2
   + SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   + SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1
   + SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   + SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity1 <= 0
 mass_balance_x_node2_time3_comm0:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0 <= -1
 mass_balance_x_node2_time3_comm1:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity1 <= 0
 mass_balance_x_node2_time3_comm2:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity2 <= 0
 mass_balance_x_node2_time3_comm3:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity3 <= 0
 mass_balance_x_node2_time3_comm4:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity4 <= 0
 SC_mass_balance_x_node2_time3_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart3,Tend4
   + sc_commodity_outflow_0,2,3,Tstart3,Tend4
   - sc_commodity_inflow_0,1,2,Tstart0,Tend3
   - sc_commodity_inflow_0,2,2,Tstart2,Tend3
   - sc_commodity_inflow_0,3,2,Tstart2,Tend3
   + SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   + SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   + SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0 <= 0
 SC_mass_balance_x_node2_time3_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart3,Tend4
   + sc_commodity_outflow_1,2,3,Tstart3,Tend4
   - sc_commodity_inflow_1,1,2,Tstart0,Tend3
   - sc_commodity_inflow_1,2,2,Tstart2,Tend3
   - sc_commodity_inflow_1,3,2,Tstart2,Tend3
   + SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1
   + SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1
   + SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity1 <= 0
 mass_balance_x_node3_time3_comm0:
   Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity0 <= 0
 mass_balance_x_node3_time3_comm1:
   Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity1 <= 0
 mass_balance_x_node3_time3_comm2:
   Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity2 <= 0
 mass_balance_x_node3_time3_comm3:
   Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity3 <= 999999
 mass_balance_x_node3_time3_comm4:
   Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity4 <= 0
 SC_mass_balance_x_node3_time3_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart3,Tend4
   + sc_commodity_outflow_0,3,3,Tstart3,Tend4
   - sc_commodity_inflow_0,2,3,Tstart2,Tend3
   - sc_commodity_inflow_0,3,3,Tstart2,Tend3
   + SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   + SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   + SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   + SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity0 <= 0
 SC_mass_balance_x_node3_time3_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart3,Tend4
   + sc_commodity_outflow_1,3,3,Tstart3,Tend4
   - sc_commodity_inflow_1,2,3,Tstart2,Tend3
   - sc_commodity_inflow_1,3,3,Tstart2,Tend3
   + SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1
   + SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1
   + SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1
   + SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity1 <= 0
 mass_balance_x_node0_time4_comm0:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity0 <= 0
 mass_balance_x_node0_time4_comm1:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity1 <= 0
 mass_balance_x_node0_time4_comm2:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity2 <= 0
 mass_balance_x_node0_time4_comm3:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity3 <= 0
 mass_balance_x_node0_time4_comm4:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity4
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity4
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity4 <= 0
 SC_mass_balance_x_node0_time4_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart4,Tend8
   + sc_commodity_outflow_0,0,1,Tstart4,Tend5
   - sc_commodity_inflow_0,0,0,Tstart0,Tend4
   + SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   + SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   + SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   + SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity0 <= 0
 SC_mass_balance_x_node0_time4_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart4,Tend8
   + sc_commodity_outflow_1,0,1,Tstart4,Tend5
   - sc_commodity_inflow_1,0,0,Tstart0,Tend4
   + SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1
   + SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1
   + SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1
   + SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity1 <= 0
 mass_balance_x_node2_time4_comm0:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity0 <= 0
 mass_balance_x_node2_time4_comm1:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity1 <= 0
 mass_balance_x_node2_time4_comm2:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity2 <= 0
 mass_balance_x_node2_time4_comm3:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity3 <= 0
 mass_balance_x_node2_time4_comm4:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity4 <= 0
 SC_mass_balance_x_node2_time4_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart4,Tend5
   + sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - sc_commodity_inflow_0,2,2,Tstart3,Tend4
   - sc_commodity_inflow_0,3,2,Tstart3,Tend4
   + SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   + SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   + SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity0 <= 0
 SC_mass_balance_x_node2_time4_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart4,Tend5
   + sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - sc_commodity_inflow_1,2,2,Tstart3,Tend4
   - sc_commodity_inflow_1,3,2,Tstart3,Tend4
   + SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1
   + SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1
   + SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity1 <= 0
 mass_balance_x_node3_time4_comm0:
   Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity0 <= -2
 mass_balance_x_node3_time4_comm1:
   Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity1 <= 0
 mass_balance_x_node3_time4_comm2:
   Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity2 <= -420
 mass_balance_x_node3_time4_comm3:
   Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity3 <= 999999
 mass_balance_x_node3_time4_comm4:
   Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity4 <= 0
 SC_mass_balance_x_node3_time4_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart4,Tend5
   + sc_commodity_outflow_0,3,3,Tstart4,Tend5
   - sc_commodity_inflow_0,2,3,Tstart3,Tend4
   - sc_commodity_inflow_0,3,3,Tstart3,Tend4
   + SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   + SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   + SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   + SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity0 <= 0
 SC_mass_balance_x_node3_time4_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart4,Tend5
   + sc_commodity_outflow_1,3,3,Tstart4,Tend5
   - sc_commodity_inflow_1,2,3,Tstart3,Tend4
   - sc_commodity_inflow_1,3,3,Tstart3,Tend4
   + SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1
   + SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1
   + SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1
   + SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity1 <= 0
 mass_balance_x_node1_time5_comm0:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity0 <= 0
 mass_balance_x_node1_time5_comm1:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity1 <= 0
 mass_balance_x_node1_time5_comm2:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity2 <= 0
 mass_balance_x_node1_time5_comm3:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity3
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity3
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity3 <= 0
 mass_balance_x_node1_time5_comm4:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity4
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity4
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity4
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity4
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity4
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity4 <= 0
 SC_mass_balance_x_node1_time5_vehicle0:
   sc_commodity_outflow_0,1,1,Tstart5,Tend9
   + sc_commodity_outflow_0,1,2,Tstart5,Tend8
   - sc_commodity_inflow_0,0,1,Tstart4,Tend5
   - sc_commodity_inflow_0,1,1,Tstart0,Tend5
   - sc_commodity_inflow_0,2,1,Tstart2,Tend5
   + SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   + SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   + SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   + SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   - SCPayload_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity0 <= 0
 SC_mass_balance_x_node1_time5_vehicle1:
   sc_commodity_outflow_1,1,1,Tstart5,Tend9
   + sc_commodity_outflow_1,1,2,Tstart5,Tend8
   - sc_commodity_inflow_1,0,1,Tstart4,Tend5
   - sc_commodity_inflow_1,1,1,Tstart0,Tend5
   - sc_commodity_inflow_1,2,1,Tstart2,Tend5
   + SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1
   + SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   + SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1
   + SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   - SCPayload_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity1 <= 0
 mass_balance_x_node2_time5_comm0:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity0 <= 0
 mass_balance_x_node2_time5_comm1:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity1 <= 0
 mass_balance_x_node2_time5_comm2:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity2 <= 0
 mass_balance_x_node2_time5_comm3:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity3 <= 0
 mass_balance_x_node2_time5_comm4:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity4 <= 0
 SC_mass_balance_x_node2_time5_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart5,Tend6
   + sc_commodity_outflow_0,2,3,Tstart5,Tend6
   - sc_commodity_inflow_0,2,2,Tstart4,Tend5
   - sc_commodity_inflow_0,3,2,Tstart4,Tend5
   + SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   + SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   + SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity0 <= 0
 SC_mass_balance_x_node2_time5_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart5,Tend6
   + sc_commodity_outflow_1,2,3,Tstart5,Tend6
   - sc_commodity_inflow_1,2,2,Tstart4,Tend5
   - sc_commodity_inflow_1,3,2,Tstart4,Tend5
   + SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1
   + SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1
   + SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity1 <= 0
 mass_balance_x_node3_time5_comm0:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity0 <= 2
 mass_balance_x_node3_time5_comm1:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity1 <= 0
 mass_balance_x_node3_time5_comm2:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity2 <= 0
 mass_balance_x_node3_time5_comm3:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity3 <= 999999
 mass_balance_x_node3_time5_comm4:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity4 <= 0
 SC_mass_balance_x_node3_time5_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart5,Tend6
   + sc_commodity_outflow_0,3,3,Tstart5,Tend6
   - sc_commodity_inflow_0,2,3,Tstart4,Tend5
   - sc_commodity_inflow_0,3,3,Tstart4,Tend5
   + SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   + SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   + SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   + SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity0 <= 0
 SC_mass_balance_x_node3_time5_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart5,Tend6
   + sc_commodity_outflow_1,3,3,Tstart5,Tend6
   - sc_commodity_inflow_1,2,3,Tstart4,Tend5
   - sc_commodity_inflow_1,3,3,Tstart4,Tend5
   + SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   + SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1
   + SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   + SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity1 <= 0
 mass_balance_x_node2_time6_comm0:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity0 <= 1
 mass_balance_x_node2_time6_comm1:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity1 <= 0
 mass_balance_x_node2_time6_comm2:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity2 <= 0
 mass_balance_x_node2_time6_comm3:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity3 <= 0
 mass_balance_x_node2_time6_comm4:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity4 <= 0
 SC_mass_balance_x_node2_time6_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart6,Tend9
   + sc_commodity_outflow_0,2,2,Tstart6,Tend7
   - sc_commodity_inflow_0,2,2,Tstart5,Tend6
   - sc_commodity_inflow_0,3,2,Tstart5,Tend6
   + SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   + SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   + SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity0 <= 0
 SC_mass_balance_x_node2_time6_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart6,Tend9
   + sc_commodity_outflow_1,2,2,Tstart6,Tend7
   - sc_commodity_inflow_1,2,2,Tstart5,Tend6
   - sc_commodity_inflow_1,3,2,Tstart5,Tend6
   + SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   + SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1
   + SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity1 <= 0
 mass_balance_x_node3_time6_comm0:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity0 <= 0
 mass_balance_x_node3_time6_comm1:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity1 <= 0
 mass_balance_x_node3_time6_comm2:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity2 <= 0
 mass_balance_x_node3_time6_comm3:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity3 <= 999999
 mass_balance_x_node3_time6_comm4:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity4 <= 0
 SC_mass_balance_x_node3_time6_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart6,Tend7
   + sc_commodity_outflow_0,3,3,Tstart6,Tend11
   - sc_commodity_inflow_0,2,3,Tstart5,Tend6
   - sc_commodity_inflow_0,3,3,Tstart5,Tend6
   + SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   + SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   + SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   + SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity0 <= 0
 SC_mass_balance_x_node3_time6_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart6,Tend7
   + sc_commodity_outflow_1,3,3,Tstart6,Tend11
   - sc_commodity_inflow_1,2,3,Tstart5,Tend6
   - sc_commodity_inflow_1,3,3,Tstart5,Tend6
   + SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   + SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
   + SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   + SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity1 <= 0
 mass_balance_x_node2_time7_comm0:
   Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity0 <= 0
 mass_balance_x_node2_time7_comm1:
   Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity1 <= 0
 mass_balance_x_node2_time7_comm2:
   Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity2 <= 0
 mass_balance_x_node2_time7_comm3:
   Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity3 <= 0
 mass_balance_x_node2_time7_comm4:
   Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity4
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity4
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity4 <= 0
 SC_mass_balance_x_node2_time7_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart7,Tend10
   + sc_commodity_outflow_0,2,2,Tstart7,Tend8
   - sc_commodity_inflow_0,2,2,Tstart6,Tend7
   - sc_commodity_inflow_0,3,2,Tstart6,Tend7
   + SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   + SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   + SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity0 <= 0
 SC_mass_balance_x_node2_time7_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart7,Tend10
   + sc_commodity_outflow_1,2,2,Tstart7,Tend8
   - sc_commodity_inflow_1,2,2,Tstart6,Tend7
   - sc_commodity_inflow_1,3,2,Tstart6,Tend7
   + SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   + SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1
   + SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity1 <= 0
 mass_balance_x_node0_time8_comm0:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity0 <= 0
 mass_balance_x_node0_time8_comm1:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity1 <= 0
 mass_balance_x_node0_time8_comm2:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity2 <= 0
 mass_balance_x_node0_time8_comm3:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity3 <= 0
 mass_balance_x_node0_time8_comm4:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity4
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity4
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity4 <= 0
 SC_mass_balance_x_node0_time8_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart8,Tend9
   + sc_commodity_outflow_0,0,1,Tstart8,Tend9
   - sc_commodity_inflow_0,0,0,Tstart4,Tend8
   + SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   + SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   + SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   + SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity0 <= 0
 SC_mass_balance_x_node0_time8_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart8,Tend9
   + sc_commodity_outflow_1,0,1,Tstart8,Tend9
   - sc_commodity_inflow_1,0,0,Tstart4,Tend8
   + SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1
   + SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1
   + SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1
   + SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity1 <= 0
 mass_balance_x_node2_time8_comm0:
   Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity0
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity0 <= 0
 mass_balance_x_node2_time8_comm1:
   Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity1
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity1 <= 0
 mass_balance_x_node2_time8_comm2:
   Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity2
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity2 <= 0
 mass_balance_x_node2_time8_comm3:
   Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity3
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity3 <= 0
 mass_balance_x_node2_time8_comm4:
   Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity4
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity4
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity4 <= 0
 SC_mass_balance_x_node2_time8_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart8,Tend11
   + sc_commodity_outflow_0,2,2,Tstart8,Tend9
   - sc_commodity_inflow_0,1,2,Tstart5,Tend8
   - sc_commodity_inflow_0,2,2,Tstart7,Tend8
   + SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   + SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   + SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity0
   - SCPayload_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity0 <= 0
 SC_mass_balance_x_node2_time8_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart8,Tend11
   + sc_commodity_outflow_1,2,2,Tstart8,Tend9
   - sc_commodity_inflow_1,1,2,Tstart5,Tend8
   - sc_commodity_inflow_1,2,2,Tstart7,Tend8
   + SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   + SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1
   + SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity1
   - SCPayload_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity1 <= 0
 mass_balance_x_node0_time9_comm0:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity0 <= 0
 mass_balance_x_node0_time9_comm1:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity1 <= 0
 mass_balance_x_node0_time9_comm2:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity2 <= 0
 mass_balance_x_node0_time9_comm3:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity3 <= 0
 mass_balance_x_node0_time9_comm4:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity4
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity4
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity4 <= 0
 SC_mass_balance_x_node0_time9_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart9,Tend10
   + sc_commodity_outflow_0,0,1,Tstart9,Tend10
   - sc_commodity_inflow_0,0,0,Tstart8,Tend9
   + SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   + SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   + SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   + SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity0 <= 0
 SC_mass_balance_x_node0_time9_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart9,Tend10
   + sc_commodity_outflow_1,0,1,Tstart9,Tend10
   - sc_commodity_inflow_1,0,0,Tstart8,Tend9
   + SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1
   + SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
   + SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1
   + SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity1 <= 0
 mass_balance_x_node1_time9_comm0:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity0 <= 0
 mass_balance_x_node1_time9_comm1:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity1 <= 0
 mass_balance_x_node1_time9_comm2:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity2 <= 0
 mass_balance_x_node1_time9_comm3:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity3 <= 0
 mass_balance_x_node1_time9_comm4:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity4
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity4
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity4
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity4
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity4 <= 0
 SC_mass_balance_x_node1_time9_vehicle0:
   sc_commodity_outflow_0,1,0,Tstart9,Tend10
   + sc_commodity_outflow_0,1,1,Tstart9,Tend10
   - sc_commodity_inflow_0,0,1,Tstart8,Tend9
   - sc_commodity_inflow_0,1,1,Tstart5,Tend9
   - sc_commodity_inflow_0,2,1,Tstart6,Tend9
   + SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   + SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   + SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   + SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity0
   - SCPayload_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity0 <= 0
 SC_mass_balance_x_node1_time9_vehicle1:
   sc_commodity_outflow_1,1,0,Tstart9,Tend10
   + sc_commodity_outflow_1,1,1,Tstart9,Tend10
   - sc_commodity_inflow_1,0,1,Tstart8,Tend9
   - sc_commodity_inflow_1,1,1,Tstart5,Tend9
   - sc_commodity_inflow_1,2,1,Tstart6,Tend9
   + SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1
   + SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1
   + SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1
   + SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity1
   - SCPayload_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity1 <= 0
 mass_balance_x_node2_time9_comm0:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0 <= 0
 mass_balance_x_node2_time9_comm1:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity1 <= 0
 mass_balance_x_node2_time9_comm2:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity2 <= 0
 mass_balance_x_node2_time9_comm3:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity3 <= 0
 mass_balance_x_node2_time9_comm4:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity4 <= 0
 SC_mass_balance_x_node2_time9_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart9,Tend10
   - sc_commodity_inflow_0,2,2,Tstart8,Tend9
   + SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0 <= 0
 SC_mass_balance_x_node2_time9_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart9,Tend10
   - sc_commodity_inflow_1,2,2,Tstart8,Tend9
   + SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity1 <= 0
 mass_balance_x_node0_time10_comm0:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity0 <= 0
 mass_balance_x_node0_time10_comm1:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity1 <= 0
 mass_balance_x_node0_time10_comm2:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity2 <= 0
 mass_balance_x_node0_time10_comm3:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity3 <= 0
 mass_balance_x_node0_time10_comm4:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity4
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity4
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity4
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity4 <= 0
 SC_mass_balance_x_node0_time10_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart10,Tend11
   + sc_commodity_outflow_0,0,1,Tstart10,Tend11
   - sc_commodity_inflow_0,0,0,Tstart9,Tend10
   - sc_commodity_inflow_0,1,0,Tstart9,Tend10
   + SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   + SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   + SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   + SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity0 <= 0
 SC_mass_balance_x_node0_time10_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart10,Tend11
   + sc_commodity_outflow_1,0,1,Tstart10,Tend11
   - sc_commodity_inflow_1,0,0,Tstart9,Tend10
   - sc_commodity_inflow_1,1,0,Tstart9,Tend10
   + SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1
   + SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
   + SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1
   + SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity1 <= 0
 mass_balance_x_node1_time10_comm0:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity0 <= 0
 mass_balance_x_node1_time10_comm1:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity1 <= 0
 mass_balance_x_node1_time10_comm2:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity2 <= 0
 mass_balance_x_node1_time10_comm3:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity3 <= 0
 mass_balance_x_node1_time10_comm4:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity4
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity4
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity4
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity4
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity4 <= 0
 SC_mass_balance_x_node1_time10_vehicle0:
   sc_commodity_outflow_0,1,0,Tstart10,Tend11
   + sc_commodity_outflow_0,1,1,Tstart10,Tend11
   - sc_commodity_inflow_0,0,1,Tstart9,Tend10
   - sc_commodity_inflow_0,1,1,Tstart9,Tend10
   - sc_commodity_inflow_0,2,1,Tstart7,Tend10
   + SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   + SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   + SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   + SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity0 <= 0
 SC_mass_balance_x_node1_time10_vehicle1:
   sc_commodity_outflow_1,1,0,Tstart10,Tend11
   + sc_commodity_outflow_1,1,1,Tstart10,Tend11
   - sc_commodity_inflow_1,0,1,Tstart9,Tend10
   - sc_commodity_inflow_1,1,1,Tstart9,Tend10
   - sc_commodity_inflow_1,2,1,Tstart7,Tend10
   + SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1
   + SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1
   + SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1
   + SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity1 <= 0
 mass_balance_x_node2_time10_comm0:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity0 <= 0
 mass_balance_x_node2_time10_comm1:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity1 <= 0
 mass_balance_x_node2_time10_comm2:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity2 <= 0
 mass_balance_x_node2_time10_comm3:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity3 <= 0
 mass_balance_x_node2_time10_comm4:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity4 <= 0
 SC_mass_balance_x_node2_time10_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart10,Tend11
   + sc_commodity_outflow_0,2,3,Tstart10,Tend11
   - sc_commodity_inflow_0,2,2,Tstart9,Tend10
   + SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   + SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   + SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   + SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity0 <= 0
 SC_mass_balance_x_node2_time10_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart10,Tend11
   + sc_commodity_outflow_1,2,3,Tstart10,Tend11
   - sc_commodity_inflow_1,2,2,Tstart9,Tend10
   + SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1
   + SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
   + SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1
   + SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity1 <= 0
 mass_balance_x_node0_time11_comm0:
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity0 <= -3
 mass_balance_x_node0_time11_comm1:
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity1 <= 0
 mass_balance_x_node0_time11_comm2:
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity2 <= 0
 mass_balance_x_node0_time11_comm3:
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity3 <= -110
 mass_balance_x_node0_time11_comm4:
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity4 <= 0
 SC_mass_balance_x_node0_time11_vehicle0:
   - sc_commodity_inflow_0,0,0,Tstart10,Tend11
   - sc_commodity_inflow_0,1,0,Tstart10,Tend11
   - SCPayload_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity0 <= 0
 SC_mass_balance_x_node0_time11_vehicle1:
   - sc_commodity_inflow_1,0,0,Tstart10,Tend11
   - sc_commodity_inflow_1,1,0,Tstart10,Tend11
   - SCPayload_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity1 <= 0
 mass_balance_x_node1_time11_comm0:
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity0 <= 0
 mass_balance_x_node1_time11_comm1:
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity1 <= 0
 mass_balance_x_node1_time11_comm2:
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity2 <= 0
 mass_balance_x_node1_time11_comm3:
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity3 <= 0
 mass_balance_x_node1_time11_comm4:
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity4
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity4 <= 0
 SC_mass_balance_x_node1_time11_vehicle0:
   - sc_commodity_inflow_0,0,1,Tstart10,Tend11
   - sc_commodity_inflow_0,1,1,Tstart10,Tend11
   - sc_commodity_inflow_0,2,1,Tstart8,Tend11
   - SCPayload_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity0 <= 0
 SC_mass_balance_x_node1_time11_vehicle1:
   - sc_commodity_inflow_1,0,1,Tstart10,Tend11
   - sc_commodity_inflow_1,1,1,Tstart10,Tend11
   - sc_commodity_inflow_1,2,1,Tstart8,Tend11
   - SCPayload_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity1 <= 0
 mass_balance_x_node2_time11_comm0:
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity0 <= 0
 mass_balance_x_node2_time11_comm1:
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity1 <= 0
 mass_balance_x_node2_time11_comm2:
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity2 <= 0
 mass_balance_x_node2_time11_comm3:
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity3 <= 0
 mass_balance_x_node2_time11_comm4:
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity4 <= 0
 SC_mass_balance_x_node2_time11_vehicle0:
   - sc_commodity_inflow_0,2,2,Tstart10,Tend11
   - SCPayload_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity0 <= 0
 SC_mass_balance_x_node2_time11_vehicle1:
   - sc_commodity_inflow_1,2,2,Tstart10,Tend11
   - SCPayload_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity1 <= 0
 mass_balance_x_node3_time11_comm0:
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity0 <= 0
 mass_balance_x_node3_time11_comm1:
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity1 <= 0
 mass_balance_x_node3_time11_comm2:
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity2 <= 0
 mass_balance_x_node3_time11_comm3:
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity3 <= 999999
 mass_balance_x_node3_time11_comm4:
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity4 <= 0
 SC_mass_balance_x_node3_time11_vehicle0:
   - sc_commodity_inflow_0,2,3,Tstart10,Tend11
   - sc_commodity_inflow_0,3,3,Tstart6,Tend11
   - SCPayload_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity0 <= 0
 SC_mass_balance_x_node3_time11_vehicle1:
   - sc_commodity_inflow_1,2,3,Tstart10,Tend11
   - sc_commodity_inflow_1,3,3,Tstart6,Tend11
   - SCPayload_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity1 <= 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart0,Tend4
   - sc_commodity_inflow_0,0,0,Tstart0,Tend4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   - SCPayload_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1
   - SCPayload_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity1 = 0
 R218: - Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity4
   + Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity4 >= -4000
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart0,Tend4
   - sc_commodity_inflow_1,0,0,Tstart0,Tend4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime0_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity1 = 0
 R227: - Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity4
   + Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity4 >= -17000
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity4:
   - 36.72875831383502 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   - 0.3672875831383502 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   - 0.3672875831383502 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2
   - 0.3672875831383502 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3
   + 0.6327124168616498 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity4
   - 918.2189578458755 sc_commodity_outflow_0,1,2,Tstart0,Tend3
   - 918.2189578458755 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   - 11.01862749415051 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,Tstart0,Tend3
   - sc_commodity_inflow_0,1,2,Tstart0,Tend3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity1 = 0
 R236: - Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4
   + Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity4 >= -4000
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity4
   - 26.1757184045833 sc_commodity_outflow_1,1,2,Tstart0,Tend3
   - 2181.309867048609 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   - 26.1757184045833 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,Tstart0,Tend3
   - sc_commodity_inflow_1,1,2,Tstart0,Tend3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity1 = 0
 R245: - Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4
   + Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity4 >= -17000
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,Tstart0,Tend5
   - sc_commodity_inflow_0,1,1,Tstart0,Tend5 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity1 = 0
 R254: - Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity4
   + Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity4 >= -4000
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,Tstart0,Tend5
   - sc_commodity_inflow_1,1,1,Tstart0,Tend5 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime0_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity1 = 0
 R263: - Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity4
   + Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart0,Tend1
   - sc_commodity_inflow_0,2,2,Tstart0,Tend1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity1 = 0
 R272: - Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart0,Tend1
   - sc_commodity_inflow_1,2,2,Tstart0,Tend1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime0_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity1 = 0
 R281: - Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,3,2,Tstart0,Tend1
   - 477.3341618994417 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart0,Tend1
   - sc_commodity_inflow_0,3,2,Tstart0,Tend1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity1 = 0
 R290: - Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity4
   + Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,3,2,Tstart0,Tend1
   - 1536.462553936011 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart0,Tend1
   - sc_commodity_inflow_1,3,2,Tstart0,Tend1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity1 = 0
 R299: - Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity4
   + Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart0,Tend2
   - sc_commodity_inflow_0,3,3,Tstart0,Tend2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity1 = 0
 R308: - Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity4
   + Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart0,Tend2
   - sc_commodity_inflow_1,3,3,Tstart0,Tend2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime0_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity1 = 0
 R317: - Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity4
   + Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart1,Tend2
   - sc_commodity_inflow_0,2,2,Tstart1,Tend2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity1 = 0
 R326: - Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart1,Tend2
   - sc_commodity_inflow_1,2,2,Tstart1,Tend2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime1_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity1 = 0
 R335: - Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,2,3,Tstart1,Tend2
   - 477.3341618994417 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart1,Tend2
   - sc_commodity_inflow_0,2,3,Tstart1,Tend2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity1 = 0
 R344: - Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity4
   + Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,2,3,Tstart1,Tend2
   - 1536.462553936011 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart1,Tend2
   - sc_commodity_inflow_1,2,3,Tstart1,Tend2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity1 = 0
 R353: - Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity4
   + Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity4:
   - 36.72875831383502 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity2
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity3
   + 0.6327124168616498 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity4
   - 918.2189578458755 sc_commodity_outflow_0,2,1,Tstart2,Tend5
   - 918.2189578458755 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   - 11.01862749415051 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart2,Tend5
   - sc_commodity_inflow_0,2,1,Tstart2,Tend5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity1 = 0
 R362: - Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity4
   + Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity4
   - 26.1757184045833 sc_commodity_outflow_1,2,1,Tstart2,Tend5
   - 2181.309867048609 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   - 26.1757184045833 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart2,Tend5
   - sc_commodity_inflow_1,2,1,Tstart2,Tend5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity1 = 0
 R371: - Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity4
   + Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart2,Tend3
   - sc_commodity_inflow_0,2,2,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity1 = 0
 R380: - Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart2,Tend3
   - sc_commodity_inflow_1,2,2,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime2_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity1 = 0
 R389: - Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,2,3,Tstart2,Tend3
   - 477.3341618994417 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart2,Tend3
   - sc_commodity_inflow_0,2,3,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity1 = 0
 R398: - Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity4
   + Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,2,3,Tstart2,Tend3
   - 1536.462553936011 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart2,Tend3
   - sc_commodity_inflow_1,2,3,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity1 = 0
 R407: - Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity4
   + Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,3,2,Tstart2,Tend3
   - 477.3341618994417 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart2,Tend3
   - sc_commodity_inflow_0,3,2,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity1 = 0
 R416: - Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity4
   + Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,3,2,Tstart2,Tend3
   - 1536.462553936011 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart2,Tend3
   - sc_commodity_inflow_1,3,2,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity1 = 0
 R425: - Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity4
   + Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart2,Tend3
   - sc_commodity_inflow_0,3,3,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity1 = 0
 R434: - Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity4
   + Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart2,Tend3
   - sc_commodity_inflow_1,3,3,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime2_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity1 = 0
 R443: - Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity4
   + Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart3,Tend4
   - sc_commodity_inflow_0,2,2,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity1 = 0
 R452: - Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart3,Tend4
   - sc_commodity_inflow_1,2,2,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity1 = 0
 R461: - Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,2,3,Tstart3,Tend4
   - 477.3341618994417 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart3,Tend4
   - sc_commodity_inflow_0,2,3,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity1 = 0
 R470: - Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4
   + Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,2,3,Tstart3,Tend4
   - 1536.462553936011 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart3,Tend4
   - sc_commodity_inflow_1,2,3,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity1 = 0
 R479: - Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4
   + Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,3,2,Tstart3,Tend4
   - 477.3341618994417 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart3,Tend4
   - sc_commodity_inflow_0,3,2,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity1 = 0
 R488: - Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity4
   + Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,3,2,Tstart3,Tend4
   - 1536.462553936011 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart3,Tend4
   - sc_commodity_inflow_1,3,2,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime3_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity1 = 0
 R497: - Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity4
   + Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart3,Tend4
   - sc_commodity_inflow_0,3,3,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity1 = 0
 R506: - Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity4
   + Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart3,Tend4
   - sc_commodity_inflow_1,3,3,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime3_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity1 = 0
 R515: - Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity4
   + Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity4 >= -17000
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   - Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1
   - Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity2
   - Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity4
   - 2500 sc_commodity_outflow_0,0,1,Tstart4,Tend5
   - 2500 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   - 30 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart4,Tend5
   - sc_commodity_inflow_0,0,1,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity1 = 0
 R524: - Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity4 >= -4000
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   - Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1
   - Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity2
   - Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity4
   - 30 sc_commodity_outflow_1,0,1,Tstart4,Tend5
   - 2500 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   - 30 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart4,Tend5
   - sc_commodity_inflow_1,0,1,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity1 = 0
 R533: - Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity4 >= -17000
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart4,Tend8
   - sc_commodity_inflow_0,0,0,Tstart4,Tend8 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   - SCPayload_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1
   - SCPayload_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity1 = 0
 R542: - Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity4
   + Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity4 >= -4000
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart4,Tend8
   - sc_commodity_inflow_1,0,0,Tstart4,Tend8 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime4_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity1 = 0
 R551: - Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity4
   + Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart4,Tend5
   - sc_commodity_inflow_0,2,2,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity1 = 0
 R560: - Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart4,Tend5
   - sc_commodity_inflow_1,2,2,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime4_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity1 = 0
 R569: - Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - 477.3341618994417 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - sc_commodity_inflow_0,2,3,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity1 = 0
 R578: - Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - 1536.462553936011 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - sc_commodity_inflow_1,2,3,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime4_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity1 = 0
 R587: - Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,3,2,Tstart4,Tend5
   - 477.3341618994417 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart4,Tend5
   - sc_commodity_inflow_0,3,2,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity1 = 0
 R596: - Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,3,2,Tstart4,Tend5
   - 1536.462553936011 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart4,Tend5
   - sc_commodity_inflow_1,3,2,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime4_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity1 = 0
 R605: - Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart4,Tend5
   - sc_commodity_inflow_0,3,3,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity1 = 0
 R614: - Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart4,Tend5
   - sc_commodity_inflow_1,3,3,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime4_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity1 = 0
 R623: - Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity4
   + Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity4 >= -17000
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity2
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity3
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity4:
   - 36.72875831383502 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   - 0.3672875831383502 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   - 0.3672875831383502 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity2
   - 0.3672875831383502 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity3
   + 0.6327124168616498 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity4
   - 918.2189578458755 sc_commodity_outflow_0,1,2,Tstart5,Tend8
   - 918.2189578458755 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   - 11.01862749415051 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,Tstart5,Tend8
   - sc_commodity_inflow_0,1,2,Tstart5,Tend8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   - SCPayload_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   - SCPayload_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity1 = 0
 R632: - Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity4
   + Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity4 >= -4000
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity1 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity2
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity2 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity3
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity4
   - 26.1757184045833 sc_commodity_outflow_1,1,2,Tstart5,Tend8
   - 2181.309867048609 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   - 26.1757184045833 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,Tstart5,Tend8
   - sc_commodity_inflow_1,1,2,Tstart5,Tend8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   - SCPayload_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   - SCPayload_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity1 = 0
 R641: - Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity4
   + Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity4 >= -17000
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,Tstart5,Tend9
   - sc_commodity_inflow_0,1,1,Tstart5,Tend9 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   - SCPayload_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1
   - SCPayload_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity1 = 0
 R650: - Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity4
   + Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity4 >= -4000
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,Tstart5,Tend9
   - sc_commodity_inflow_1,1,1,Tstart5,Tend9 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime5_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity1 = 0
 R659: - Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity4
   + Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart5,Tend6
   - sc_commodity_inflow_0,2,2,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity1 = 0
 R668: - Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart5,Tend6
   - sc_commodity_inflow_1,2,2,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime5_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity1 = 0
 R677: - Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,2,3,Tstart5,Tend6
   - 477.3341618994417 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart5,Tend6
   - sc_commodity_inflow_0,2,3,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity1 = 0
 R686: - Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity4
   + Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,2,3,Tstart5,Tend6
   - 1536.462553936011 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart5,Tend6
   - sc_commodity_inflow_1,2,3,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime5_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity1 = 0
 R695: - Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity4
   + Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,3,2,Tstart5,Tend6
   - 477.3341618994417 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart5,Tend6
   - sc_commodity_inflow_0,3,2,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity1 = 0
 R704: - Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,3,2,Tstart5,Tend6
   - 1536.462553936011 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart5,Tend6
   - sc_commodity_inflow_1,3,2,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity1 = 0
 R713: - Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart5,Tend6
   - sc_commodity_inflow_0,3,3,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity1 = 0
 R722: - Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity4
   + Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart5,Tend6
   - sc_commodity_inflow_1,3,3,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime5_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity1 = 0
 R731: - Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity4
   + Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity4:
   - 36.72875831383502 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3
   + 0.6327124168616498 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity4
   - 918.2189578458755 sc_commodity_outflow_0,2,1,Tstart6,Tend9
   - 918.2189578458755 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   - 11.01862749415051 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart6,Tend9
   - sc_commodity_inflow_0,2,1,Tstart6,Tend9 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   - SCPayload_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   - SCPayload_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity1 = 0
 R740: - Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4
   + Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity4
   - 26.1757184045833 sc_commodity_outflow_1,2,1,Tstart6,Tend9
   - 2181.309867048609 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   - 26.1757184045833 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart6,Tend9
   - sc_commodity_inflow_1,2,1,Tstart6,Tend9 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity1 = 0
 R749: - Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4
   + Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart6,Tend7
   - sc_commodity_inflow_0,2,2,Tstart6,Tend7 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity1 = 0
 R758: - Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart6,Tend7
   - sc_commodity_inflow_1,2,2,Tstart6,Tend7 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime6_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity1 = 0
 R767: - Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,3,2,Tstart6,Tend7
   - 477.3341618994417 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart6,Tend7
   - sc_commodity_inflow_0,3,2,Tstart6,Tend7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   - SCPayload_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   - SCPayload_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity1 = 0
 R776: - Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity2 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,3,2,Tstart6,Tend7
   - 1536.462553936011 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart6,Tend7
   - sc_commodity_inflow_1,3,2,Tstart6,Tend7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   - SCPayload_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity0 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   - SCPayload_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity1 = 0
 R785: - Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity4 >= -17000
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,3,Tstart6,Tend11
   - sc_commodity_inflow_0,3,3,Tstart6,Tend11 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity1 = 0
 R794: - Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity4
   + Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity4 >= -4000
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,3,Tstart6,Tend11
   - sc_commodity_inflow_1,3,3,Tstart6,Tend11 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start3_End3_Starttime6_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity1 = 0
 R803: - Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity4
   + Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity4:
   - 36.72875831383502 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity2
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity3
   + 0.6327124168616498 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity4
   - 918.2189578458755 sc_commodity_outflow_0,2,1,Tstart7,Tend10
   - 918.2189578458755 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   - 11.01862749415051 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart7,Tend10
   - sc_commodity_inflow_0,2,1,Tstart7,Tend10 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity1 = 0
 R812: - Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity4
   + Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity4
   - 26.1757184045833 sc_commodity_outflow_1,2,1,Tstart7,Tend10
   - 2181.309867048609 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   - 26.1757184045833 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart7,Tend10
   - sc_commodity_inflow_1,2,1,Tstart7,Tend10 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity1 = 0
 R821: - Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity4
   + Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart7,Tend8
   - sc_commodity_inflow_0,2,2,Tstart7,Tend8 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity1 = 0
 R830: - Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart7,Tend8
   - sc_commodity_inflow_1,2,2,Tstart7,Tend8 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime7_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity1 = 0
 R839: - Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity4 >= -17000
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart8,Tend9
   - sc_commodity_inflow_0,0,0,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity1 = 0
 R848: - Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity4
   + Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity4 >= -4000
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart8,Tend9
   - sc_commodity_inflow_1,0,0,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime8_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity1 = 0
 R857: - Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity4
   + Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity4 >= -17000
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   - Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1
   - Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity2
   - Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity4
   - 2500 sc_commodity_outflow_0,0,1,Tstart8,Tend9
   - 2500 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   - 30 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart8,Tend9
   - sc_commodity_inflow_0,0,1,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity1 = 0
 R866: - Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity4
   + Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity4 >= -4000
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   - Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1
   - Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity2
   - Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity4
   - 30 sc_commodity_outflow_1,0,1,Tstart8,Tend9
   - 2500 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   - 30 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart8,Tend9
   - sc_commodity_inflow_1,0,1,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity1 = 0
 R875: - Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity4
   + Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity1:
   - 21.3 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity2
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity3
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity4:
   - 36.72875831383502 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity2
   - 0.3672875831383502 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity3
   + 0.6327124168616498 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity4
   - 918.2189578458755 sc_commodity_outflow_0,2,1,Tstart8,Tend11
   - 918.2189578458755 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   - 11.01862749415051 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart8,Tend11
   - sc_commodity_inflow_0,2,1,Tstart8,Tend11 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity1 = 0
 R884: - Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity4
   + Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity1:
   - 21.3 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity2
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity3
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity4:
   - 87.25239468194434 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity4
   - 26.1757184045833 sc_commodity_outflow_1,2,1,Tstart8,Tend11
   - 2181.309867048609 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   - 26.1757184045833 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart8,Tend11
   - sc_commodity_inflow_1,2,1,Tstart8,Tend11 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity1 = 0
 R893: - Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity4
   + Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart8,Tend9
   - sc_commodity_inflow_0,2,2,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity1 = 0
 R902: - Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart8,Tend9
   - sc_commodity_inflow_1,2,2,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime8_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity1 = 0
 R911: - Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity4 >= -17000
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart9,Tend10
   - sc_commodity_inflow_0,0,0,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity1 = 0
 R920: - Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity4 >= -4000
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart9,Tend10
   - sc_commodity_inflow_1,0,0,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime9_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity1 = 0
 R929: - Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity4 >= -17000
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity4
   - 2500 sc_commodity_outflow_0,0,1,Tstart9,Tend10
   - 2500 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   - 30 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart9,Tend10
   - sc_commodity_inflow_0,0,1,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity1 = 0
 R938: - Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity4 >= -4000
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity4
   - 30 sc_commodity_outflow_1,0,1,Tstart9,Tend10
   - 2500 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   - 30 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart9,Tend10
   - sc_commodity_inflow_1,0,1,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity1 = 0
 R947: - Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity4 >= -17000
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,Tstart9,Tend10
   - sc_commodity_inflow_0,1,0,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity1 = 0
 R956: - Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity4 >= -4000
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,Tstart9,Tend10
   - sc_commodity_inflow_1,1,0,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime9_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity1 = 0
 R965: - Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity4 >= -17000
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,Tstart9,Tend10
   - sc_commodity_inflow_0,1,1,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity1 = 0
 R974: - Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity4 >= -4000
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,Tstart9,Tend10
   - sc_commodity_inflow_1,1,1,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime9_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity1 = 0
 R983: - Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart9,Tend10
   - sc_commodity_inflow_0,2,2,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity1 = 0
 R992: - Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart9,Tend10
   - sc_commodity_inflow_1,2,2,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity1 = 0
 R1001: - Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity4 >= -17000
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,0,Tstart10,Tend11
   - sc_commodity_inflow_0,0,0,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity1 = 0
 R1010: - Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity4 >= -4000
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,0,Tstart10,Tend11
   - sc_commodity_inflow_1,0,0,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End0_Starttime10_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity1 = 0
 R1019: - Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity4 >= -17000
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity4:
   - 100 Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity4
   - 2500 sc_commodity_outflow_0,0,1,Tstart10,Tend11
   - 2500 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   - 30 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart10,Tend11
   - sc_commodity_inflow_0,0,1,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity1 = 0
 R1028: - Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity4 >= -4000
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity4:
   - 100 Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity4
   - 30 sc_commodity_outflow_1,0,1,Tstart10,Tend11
   - 2500 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   - 30 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart10,Tend11
   - sc_commodity_inflow_1,0,1,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity1 = 0
 R1037: - Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity4 >= -17000
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,0,Tstart10,Tend11
   - sc_commodity_inflow_0,1,0,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity1 = 0
 R1046: - Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity4 >= -4000
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,0,Tstart10,Tend11
   - sc_commodity_inflow_1,1,0,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End0_Starttime10_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity1 = 0
 R1055: - Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity4 >= -17000
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,1,Tstart10,Tend11
   - sc_commodity_inflow_0,1,1,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity1 = 0
 R1064: - Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity4 >= -4000
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,1,Tstart10,Tend11
   - sc_commodity_inflow_1,1,1,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start1_End1_Starttime10_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity1 = 0
 R1073: - Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart10,Tend11
   - sc_commodity_inflow_0,2,2,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity1 = 0
 R1082: - Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart10,Tend11
   - sc_commodity_inflow_1,2,2,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime10_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity1 = 0
 R1091: - Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity4 >= -17000
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity4:
   - 19.09336647597767 Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity2
   - 0.1909336647597767 Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity3
   + 0.8090663352402233 Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity4
   - 477.3341618994417 sc_commodity_outflow_0,2,3,Tstart10,Tend11
   - 477.3341618994417 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   - 5.7280099427933 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart10,Tend11
   - sc_commodity_inflow_0,2,3,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity6:
   SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle0_Commodity7:
   SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity1 = 0
 R1100: - Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity4 >= -4000
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity4:
   - 61.45850215744046 Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity4
   - 18.43755064723214 sc_commodity_outflow_1,2,3,Tstart10,Tend11
   - 1536.462553936011 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   - 18.43755064723214 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
   = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart10,Tend11
   - sc_commodity_inflow_1,2,3,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity6:
   SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   - SCPayload_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End3_Starttime10_Vehicle1_Commodity7:
   SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
   - SCPayload_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity1 = 0
 R1109: - Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity4
   + Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity4 >= -17000
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode0_starttime0:
   100 Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity3
   - 10000 sc_commodity_outflow_0,0,0,Tstart0,Tend4
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode0_starttime0:
   Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity4
   - 4000 sc_commodity_outflow_0,0,0,Tstart0,Tend4
   - 4000 SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode0_endnode0_starttime0:
   100 Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity3
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity4
   - 14000 sc_commodity_outflow_0,0,0,Tstart0,Tend4
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode2_starttime0:
   100 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3
   - 10000 sc_commodity_outflow_0,1,2,Tstart0,Tend3
   + 2500 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode2_starttime0:
   Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4
   - 4000 sc_commodity_outflow_0,1,2,Tstart0,Tend3
   - 4000 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode1_endnode2_starttime0:
   100 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4
   - 14000 sc_commodity_outflow_0,1,2,Tstart0,Tend3
   + 2500 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode1_starttime0:
   100 Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity3
   - 10000 sc_commodity_outflow_0,1,1,Tstart0,Tend5
   + 2500 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode1_starttime0:
   Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity4
   - 4000 sc_commodity_outflow_0,1,1,Tstart0,Tend5
   - 4000 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode1_endnode1_starttime0:
   100 Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity4
   - 14000 sc_commodity_outflow_0,1,1,Tstart0,Tend5
   + 2500 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime0:
   100 Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart0,Tend1
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime0:
   Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart0,Tend1
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime0:
   100 Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart0,Tend1
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode2_starttime0:
   100 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity3
   - 10000 sc_commodity_outflow_0,3,2,Tstart0,Tend1
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode2_starttime0:
   Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity4
   - 4000 sc_commodity_outflow_0,3,2,Tstart0,Tend1
   - 4000 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode2_starttime0:
   100 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity3
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity4
   - 14000 sc_commodity_outflow_0,3,2,Tstart0,Tend1
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode3_starttime0:
   100 Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity3
   - 10000 sc_commodity_outflow_0,3,3,Tstart0,Tend2
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode3_starttime0:
   Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity4
   - 4000 sc_commodity_outflow_0,3,3,Tstart0,Tend2
   - 4000 SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode3_starttime0:
   100 Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity4
   - 14000 sc_commodity_outflow_0,3,3,Tstart0,Tend2
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime1:
   100 Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart1,Tend2
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime1:
   Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart1,Tend2
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime1:
   100 Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart1,Tend2
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode3_starttime1:
   100 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity3
   - 10000 sc_commodity_outflow_0,2,3,Tstart1,Tend2
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode3_starttime1:
   Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity4
   - 4000 sc_commodity_outflow_0,2,3,Tstart1,Tend2
   - 4000 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode3_starttime1:
   100 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity4
   - 14000 sc_commodity_outflow_0,2,3,Tstart1,Tend2
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode1_starttime2:
   100 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity3
   - 10000 sc_commodity_outflow_0,2,1,Tstart2,Tend5
   + 2500 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode1_starttime2:
   Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity4
   - 4000 sc_commodity_outflow_0,2,1,Tstart2,Tend5
   - 4000 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode1_starttime2:
   100 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity3
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity4
   - 14000 sc_commodity_outflow_0,2,1,Tstart2,Tend5
   + 2500 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime2:
   100 Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime2:
   Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart2,Tend3
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime2:
   100 Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode3_starttime2:
   100 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity3
   - 10000 sc_commodity_outflow_0,2,3,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode3_starttime2:
   Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity4
   - 4000 sc_commodity_outflow_0,2,3,Tstart2,Tend3
   - 4000 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode3_starttime2:
   100 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity4
   - 14000 sc_commodity_outflow_0,2,3,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode2_starttime2:
   100 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity3
   - 10000 sc_commodity_outflow_0,3,2,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode2_starttime2:
   Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity4
   - 4000 sc_commodity_outflow_0,3,2,Tstart2,Tend3
   - 4000 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode2_starttime2:
   100 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity4
   - 14000 sc_commodity_outflow_0,3,2,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode3_starttime2:
   100 Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity3
   - 10000 sc_commodity_outflow_0,3,3,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode3_starttime2:
   Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity4
   - 4000 sc_commodity_outflow_0,3,3,Tstart2,Tend3
   - 4000 SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode3_starttime2:
   100 Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity4
   - 14000 sc_commodity_outflow_0,3,3,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime3:
   100 Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime3:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart3,Tend4
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime3:
   100 Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode3_starttime3:
   100 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3
   - 10000 sc_commodity_outflow_0,2,3,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode3_starttime3:
   Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4
   - 4000 sc_commodity_outflow_0,2,3,Tstart3,Tend4
   - 4000 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode3_starttime3:
   100 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4
   - 14000 sc_commodity_outflow_0,2,3,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode2_starttime3:
   100 Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity3
   - 10000 sc_commodity_outflow_0,3,2,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode2_starttime3:
   Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity4
   - 4000 sc_commodity_outflow_0,3,2,Tstart3,Tend4
   - 4000 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode2_starttime3:
   100 Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity4
   - 14000 sc_commodity_outflow_0,3,2,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode3_starttime3:
   100 Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity3
   - 10000 sc_commodity_outflow_0,3,3,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode3_starttime3:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity4
   - 4000 sc_commodity_outflow_0,3,3,Tstart3,Tend4
   - 4000 SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode3_starttime3:
   100 Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity4
   - 14000 sc_commodity_outflow_0,3,3,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode1_starttime4:
   100 Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity3
   - 10000 sc_commodity_outflow_0,0,1,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode1_starttime4:
   Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity4
   - 4000 sc_commodity_outflow_0,0,1,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode0_endnode1_starttime4:
   100 Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity4
   - 14000 sc_commodity_outflow_0,0,1,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode0_starttime4:
   100 Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity3
   - 10000 sc_commodity_outflow_0,0,0,Tstart4,Tend8
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode0_starttime4:
   Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity4
   - 4000 sc_commodity_outflow_0,0,0,Tstart4,Tend8
   - 4000 SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   - 17000 SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode0_endnode0_starttime4:
   100 Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity3
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity4
   - 14000 sc_commodity_outflow_0,0,0,Tstart4,Tend8
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime4:
   100 Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime4:
   Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime4:
   100 Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode3_starttime4:
   100 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity3
   - 10000 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode3_starttime4:
   Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity4
   - 4000 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode3_starttime4:
   100 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity4
   - 14000 sc_commodity_outflow_0,2,3,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode2_starttime4:
   100 Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity3
   - 10000 sc_commodity_outflow_0,3,2,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode2_starttime4:
   Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity4
   - 4000 sc_commodity_outflow_0,3,2,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode2_starttime4:
   100 Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity4
   - 14000 sc_commodity_outflow_0,3,2,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode3_starttime4:
   100 Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity3
   - 10000 sc_commodity_outflow_0,3,3,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode3_starttime4:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity4
   - 4000 sc_commodity_outflow_0,3,3,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode3_starttime4:
   100 Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity4
   - 14000 sc_commodity_outflow_0,3,3,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode2_starttime5:
   100 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity3
   - 10000 sc_commodity_outflow_0,1,2,Tstart5,Tend8
   + 2500 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode2_starttime5:
   Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity4
   - 4000 sc_commodity_outflow_0,1,2,Tstart5,Tend8
   - 4000 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   - 17000 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode1_endnode2_starttime5:
   100 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity3
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity4
   - 14000 sc_commodity_outflow_0,1,2,Tstart5,Tend8
   + 2500 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode1_starttime5:
   100 Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity3
   - 10000 sc_commodity_outflow_0,1,1,Tstart5,Tend9
   + 2500 SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode1_starttime5:
   Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity4
   - 4000 sc_commodity_outflow_0,1,1,Tstart5,Tend9
   - 4000 SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode1_endnode1_starttime5:
   100 Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity4
   - 14000 sc_commodity_outflow_0,1,1,Tstart5,Tend9
   + 2500 SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime5:
   100 Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime5:
   Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart5,Tend6
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime5:
   100 Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode3_starttime5:
   100 Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity3
   - 10000 sc_commodity_outflow_0,2,3,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode3_starttime5:
   Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity4
   - 4000 sc_commodity_outflow_0,2,3,Tstart5,Tend6
   - 4000 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode3_starttime5:
   100 Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity4
   - 14000 sc_commodity_outflow_0,2,3,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode2_starttime5:
   100 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3
   - 10000 sc_commodity_outflow_0,3,2,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode2_starttime5:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4
   - 4000 sc_commodity_outflow_0,3,2,Tstart5,Tend6
   - 4000 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode2_starttime5:
   100 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4
   - 14000 sc_commodity_outflow_0,3,2,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode3_starttime5:
   100 Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity3
   - 10000 sc_commodity_outflow_0,3,3,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode3_starttime5:
   Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity4
   - 4000 sc_commodity_outflow_0,3,3,Tstart5,Tend6
   - 4000 SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode3_starttime5:
   100 Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity4
   - 14000 sc_commodity_outflow_0,3,3,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode1_starttime6:
   100 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3
   - 10000 sc_commodity_outflow_0,2,1,Tstart6,Tend9
   + 2500 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode1_starttime6:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4
   - 4000 sc_commodity_outflow_0,2,1,Tstart6,Tend9
   - 4000 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode1_starttime6:
   100 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4
   - 14000 sc_commodity_outflow_0,2,1,Tstart6,Tend9
   + 2500 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime6:
   100 Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart6,Tend7
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime6:
   Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart6,Tend7
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime6:
   100 Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart6,Tend7
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode2_starttime6:
   100 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3
   - 10000 sc_commodity_outflow_0,3,2,Tstart6,Tend7
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode2_starttime6:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4
   - 4000 sc_commodity_outflow_0,3,2,Tstart6,Tend7
   - 4000 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode2_starttime6:
   100 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4
   - 14000 sc_commodity_outflow_0,3,2,Tstart6,Tend7
   + 2500 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode3_endnode3_starttime6:
   100 Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity3
   - 10000 sc_commodity_outflow_0,3,3,Tstart6,Tend11
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode3_endnode3_starttime6:
   Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity4
   - 4000 sc_commodity_outflow_0,3,3,Tstart6,Tend11
   - 4000 SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode3_endnode3_starttime6:
   100 Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity4
   - 14000 sc_commodity_outflow_0,3,3,Tstart6,Tend11
   + 2500 SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode1_starttime7:
   100 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity3
   - 10000 sc_commodity_outflow_0,2,1,Tstart7,Tend10
   + 2500 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode1_starttime7:
   Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity4
   - 4000 sc_commodity_outflow_0,2,1,Tstart7,Tend10
   - 4000 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode1_starttime7:
   100 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity3
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity4
   - 14000 sc_commodity_outflow_0,2,1,Tstart7,Tend10
   + 2500 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime7:
   100 Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart7,Tend8
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime7:
   Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart7,Tend8
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime7:
   100 Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart7,Tend8
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode0_starttime8:
   100 Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity3
   - 10000 sc_commodity_outflow_0,0,0,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode0_starttime8:
   Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity4
   - 4000 sc_commodity_outflow_0,0,0,Tstart8,Tend9
   - 4000 SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode0_endnode0_starttime8:
   100 Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity4
   - 14000 sc_commodity_outflow_0,0,0,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode1_starttime8:
   100 Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity3
   - 10000 sc_commodity_outflow_0,0,1,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode1_starttime8:
   Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity4
   - 4000 sc_commodity_outflow_0,0,1,Tstart8,Tend9
   - 4000 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode0_endnode1_starttime8:
   100 Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity4
   - 14000 sc_commodity_outflow_0,0,1,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode1_starttime8:
   100 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity3
   - 10000 sc_commodity_outflow_0,2,1,Tstart8,Tend11
   + 2500 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode1_starttime8:
   Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity4
   - 4000 sc_commodity_outflow_0,2,1,Tstart8,Tend11
   - 4000 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode1_starttime8:
   100 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity3
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity4
   - 14000 sc_commodity_outflow_0,2,1,Tstart8,Tend11
   + 2500 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime8:
   100 Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime8:
   Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart8,Tend9
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime8:
   100 Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode0_starttime9:
   100 Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity3
   - 10000 sc_commodity_outflow_0,0,0,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode0_starttime9:
   Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity4
   - 4000 sc_commodity_outflow_0,0,0,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode0_endnode0_starttime9:
   100 Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity4
   - 14000 sc_commodity_outflow_0,0,0,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode1_starttime9:
   100 Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity3
   - 10000 sc_commodity_outflow_0,0,1,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode1_starttime9:
   Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity4
   - 4000 sc_commodity_outflow_0,0,1,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode0_endnode1_starttime9:
   100 Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity4
   - 14000 sc_commodity_outflow_0,0,1,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode0_starttime9:
   100 Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity3
   - 10000 sc_commodity_outflow_0,1,0,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode0_starttime9:
   Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity4
   - 4000 sc_commodity_outflow_0,1,0,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode1_endnode0_starttime9:
   100 Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity4
   - 14000 sc_commodity_outflow_0,1,0,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode1_starttime9:
   100 Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity3
   - 10000 sc_commodity_outflow_0,1,1,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode1_starttime9:
   Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity4
   - 4000 sc_commodity_outflow_0,1,1,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode1_endnode1_starttime9:
   100 Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity4
   - 14000 sc_commodity_outflow_0,1,1,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime9:
   100 Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime9:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime9:
   100 Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode0_starttime10:
   100 Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity3
   - 10000 sc_commodity_outflow_0,0,0,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode0_starttime10:
   Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity4
   - 4000 sc_commodity_outflow_0,0,0,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode0_endnode0_starttime10:
   100 Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity4
   - 14000 sc_commodity_outflow_0,0,0,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode0_endnode1_starttime10:
   100 Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity3
   - 10000 sc_commodity_outflow_0,0,1,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode0_endnode1_starttime10:
   Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity4
   - 4000 sc_commodity_outflow_0,0,1,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode0_endnode1_starttime10:
   100 Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity4
   - 14000 sc_commodity_outflow_0,0,1,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode0_starttime10:
   100 Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity3
   - 10000 sc_commodity_outflow_0,1,0,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode0_starttime10:
   Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity4
   - 4000 sc_commodity_outflow_0,1,0,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode1_endnode0_starttime10:
   100 Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity4
   - 14000 sc_commodity_outflow_0,1,0,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode1_endnode1_starttime10:
   100 Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity3
   - 10000 sc_commodity_outflow_0,1,1,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode1_endnode1_starttime10:
   Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity4
   - 4000 sc_commodity_outflow_0,1,1,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode1_endnode1_starttime10:
   100 Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity4
   - 14000 sc_commodity_outflow_0,1,1,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode2_starttime10:
   100 Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity3
   - 10000 sc_commodity_outflow_0,2,2,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode2_starttime10:
   Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity4
   - 4000 sc_commodity_outflow_0,2,2,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode2_starttime10:
   100 Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity4
   - 14000 sc_commodity_outflow_0,2,2,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle0_startnode2_endnode3_starttime10:
   100 Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity3
   - 10000 sc_commodity_outflow_0,2,3,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle0_startnode2_endnode3_starttime10:
   Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity4
   - 4000 sc_commodity_outflow_0,2,3,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle0_startnode2_endnode3_starttime10:
   100 Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity4
   - 14000 sc_commodity_outflow_0,2,3,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode0_starttime0:
   100 Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart0,Tend4
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode0_starttime0:
   Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity4
   - 17000 sc_commodity_outflow_1,0,0,Tstart0,Tend4
   - 4000 SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode0_endnode0_starttime0:
   100 Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity4
   - 17075 sc_commodity_outflow_1,0,0,Tstart0,Tend4
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode2_starttime0:
   100 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,1,2,Tstart0,Tend3
   + 2500 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode2_starttime0:
   Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4
   - 17000 sc_commodity_outflow_1,1,2,Tstart0,Tend3
   - 4000 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode1_endnode2_starttime0:
   100 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4
   - 17075 sc_commodity_outflow_1,1,2,Tstart0,Tend3
   + 2500 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode1_starttime0:
   100 Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart0,Tend5
   + 2500 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode1_starttime0:
   Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity4
   - 17000 sc_commodity_outflow_1,1,1,Tstart0,Tend5
   - 4000 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode1_endnode1_starttime0:
   100 Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity4
   - 17075 sc_commodity_outflow_1,1,1,Tstart0,Tend5
   + 2500 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime0:
   100 Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart0,Tend1
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime0:
   Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart0,Tend1
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime0:
   100 Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart0,Tend1
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode2_starttime0:
   100 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart0,Tend1
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode2_starttime0:
   Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity4
   - 17000 sc_commodity_outflow_1,3,2,Tstart0,Tend1
   - 4000 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode2_starttime0:
   100 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity4
   - 17075 sc_commodity_outflow_1,3,2,Tstart0,Tend1
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode3_starttime0:
   100 Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart0,Tend2
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode3_starttime0:
   Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity4
   - 17000 sc_commodity_outflow_1,3,3,Tstart0,Tend2
   - 4000 SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode3_starttime0:
   100 Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity4
   - 17075 sc_commodity_outflow_1,3,3,Tstart0,Tend2
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime1:
   100 Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart1,Tend2
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime1:
   Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart1,Tend2
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime1:
   100 Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart1,Tend2
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode3_starttime1:
   100 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart1,Tend2
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode3_starttime1:
   Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity4
   - 17000 sc_commodity_outflow_1,2,3,Tstart1,Tend2
   - 4000 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode3_starttime1:
   100 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity4
   - 17075 sc_commodity_outflow_1,2,3,Tstart1,Tend2
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode1_starttime2:
   100 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart2,Tend5
   + 2500 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode1_starttime2:
   Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity4
   - 17000 sc_commodity_outflow_1,2,1,Tstart2,Tend5
   - 4000 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode1_starttime2:
   100 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity4
   - 17075 sc_commodity_outflow_1,2,1,Tstart2,Tend5
   + 2500 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime2:
   100 Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime2:
   Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart2,Tend3
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime2:
   100 Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode3_starttime2:
   100 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode3_starttime2:
   Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity4
   - 17000 sc_commodity_outflow_1,2,3,Tstart2,Tend3
   - 4000 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode3_starttime2:
   100 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity4
   - 17075 sc_commodity_outflow_1,2,3,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode2_starttime2:
   100 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode2_starttime2:
   Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity4
   - 17000 sc_commodity_outflow_1,3,2,Tstart2,Tend3
   - 4000 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode2_starttime2:
   100 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity4
   - 17075 sc_commodity_outflow_1,3,2,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode3_starttime2:
   100 Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode3_starttime2:
   Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity4
   - 17000 sc_commodity_outflow_1,3,3,Tstart2,Tend3
   - 4000 SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode3_starttime2:
   100 Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity4
   - 17075 sc_commodity_outflow_1,3,3,Tstart2,Tend3
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime3:
   100 Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime3:
   Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart3,Tend4
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime3:
   100 Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode3_starttime3:
   100 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode3_starttime3:
   Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4
   - 17000 sc_commodity_outflow_1,2,3,Tstart3,Tend4
   - 4000 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode3_starttime3:
   100 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4
   - 17075 sc_commodity_outflow_1,2,3,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode2_starttime3:
   100 Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode2_starttime3:
   Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity4
   - 17000 sc_commodity_outflow_1,3,2,Tstart3,Tend4
   - 4000 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode2_starttime3:
   100 Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity4
   - 17075 sc_commodity_outflow_1,3,2,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode3_starttime3:
   100 Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode3_starttime3:
   Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity4
   - 17000 sc_commodity_outflow_1,3,3,Tstart3,Tend4
   - 4000 SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode3_starttime3:
   100 Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity4
   - 17075 sc_commodity_outflow_1,3,3,Tstart3,Tend4
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode1_starttime4:
   100 Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode1_starttime4:
   Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity4
   - 17000 sc_commodity_outflow_1,0,1,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode0_endnode1_starttime4:
   100 Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity4
   - 17075 sc_commodity_outflow_1,0,1,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode0_starttime4:
   100 Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart4,Tend8
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode0_starttime4:
   Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity4
   - 17000 sc_commodity_outflow_1,0,0,Tstart4,Tend8
   - 4000 SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   - 17000 SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode0_endnode0_starttime4:
   100 Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity4
   - 17075 sc_commodity_outflow_1,0,0,Tstart4,Tend8
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime4:
   100 Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime4:
   Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime4:
   100 Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode3_starttime4:
   100 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode3_starttime4:
   Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity4
   - 17000 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode3_starttime4:
   100 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity4
   - 17075 sc_commodity_outflow_1,2,3,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode2_starttime4:
   100 Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode2_starttime4:
   Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity4
   - 17000 sc_commodity_outflow_1,3,2,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode2_starttime4:
   100 Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity4
   - 17075 sc_commodity_outflow_1,3,2,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode3_starttime4:
   100 Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode3_starttime4:
   Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity4
   - 17000 sc_commodity_outflow_1,3,3,Tstart4,Tend5
   - 4000 SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode3_starttime4:
   100 Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity4
   - 17075 sc_commodity_outflow_1,3,3,Tstart4,Tend5
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode2_starttime5:
   100 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity3
   - 75 sc_commodity_outflow_1,1,2,Tstart5,Tend8
   + 2500 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode2_starttime5:
   Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity4
   - 17000 sc_commodity_outflow_1,1,2,Tstart5,Tend8
   - 4000 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   - 17000 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode1_endnode2_starttime5:
   100 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity3
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity4
   - 17075 sc_commodity_outflow_1,1,2,Tstart5,Tend8
   + 2500 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode1_starttime5:
   100 Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart5,Tend9
   + 2500 SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode1_starttime5:
   Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity4
   - 17000 sc_commodity_outflow_1,1,1,Tstart5,Tend9
   - 4000 SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode1_endnode1_starttime5:
   100 Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity4
   - 17075 sc_commodity_outflow_1,1,1,Tstart5,Tend9
   + 2500 SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime5:
   100 Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime5:
   Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart5,Tend6
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime5:
   100 Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode3_starttime5:
   100 Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode3_starttime5:
   Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity4
   - 17000 sc_commodity_outflow_1,2,3,Tstart5,Tend6
   - 4000 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode3_starttime5:
   100 Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity4
   - 17075 sc_commodity_outflow_1,2,3,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode2_starttime5:
   100 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode2_starttime5:
   Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4
   - 17000 sc_commodity_outflow_1,3,2,Tstart5,Tend6
   - 4000 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode2_starttime5:
   100 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4
   - 17075 sc_commodity_outflow_1,3,2,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode3_starttime5:
   100 Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode3_starttime5:
   Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity4
   - 17000 sc_commodity_outflow_1,3,3,Tstart5,Tend6
   - 4000 SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode3_starttime5:
   100 Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity4
   - 17075 sc_commodity_outflow_1,3,3,Tstart5,Tend6
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode1_starttime6:
   100 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart6,Tend9
   + 2500 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode1_starttime6:
   Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4
   - 17000 sc_commodity_outflow_1,2,1,Tstart6,Tend9
   - 4000 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode1_starttime6:
   100 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4
   - 17075 sc_commodity_outflow_1,2,1,Tstart6,Tend9
   + 2500 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime6:
   100 Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart6,Tend7
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime6:
   Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart6,Tend7
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime6:
   100 Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart6,Tend7
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode2_starttime6:
   100 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart6,Tend7
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode2_starttime6:
   Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4
   - 17000 sc_commodity_outflow_1,3,2,Tstart6,Tend7
   - 4000 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode2_starttime6:
   100 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4
   - 17075 sc_commodity_outflow_1,3,2,Tstart6,Tend7
   + 2500 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode3_endnode3_starttime6:
   100 Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart6,Tend11
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode3_endnode3_starttime6:
   Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity4
   - 17000 sc_commodity_outflow_1,3,3,Tstart6,Tend11
   - 4000 SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode3_endnode3_starttime6:
   100 Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity4
   - 17075 sc_commodity_outflow_1,3,3,Tstart6,Tend11
   + 2500 SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode1_starttime7:
   100 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart7,Tend10
   + 2500 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode1_starttime7:
   Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity4
   - 17000 sc_commodity_outflow_1,2,1,Tstart7,Tend10
   - 4000 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode1_starttime7:
   100 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity4
   - 17075 sc_commodity_outflow_1,2,1,Tstart7,Tend10
   + 2500 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime7:
   100 Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart7,Tend8
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime7:
   Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart7,Tend8
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime7:
   100 Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart7,Tend8
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode0_starttime8:
   100 Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode0_starttime8:
   Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity4
   - 17000 sc_commodity_outflow_1,0,0,Tstart8,Tend9
   - 4000 SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode0_endnode0_starttime8:
   100 Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity4
   - 17075 sc_commodity_outflow_1,0,0,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode1_starttime8:
   100 Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode1_starttime8:
   Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity4
   - 17000 sc_commodity_outflow_1,0,1,Tstart8,Tend9
   - 4000 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode0_endnode1_starttime8:
   100 Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity4
   - 17075 sc_commodity_outflow_1,0,1,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode1_starttime8:
   100 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart8,Tend11
   + 2500 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode1_starttime8:
   Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity4
   - 17000 sc_commodity_outflow_1,2,1,Tstart8,Tend11
   - 4000 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode1_starttime8:
   100 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity4
   - 17075 sc_commodity_outflow_1,2,1,Tstart8,Tend11
   + 2500 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime8:
   100 Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime8:
   Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart8,Tend9
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime8:
   100 Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart8,Tend9
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode0_starttime9:
   100 Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode0_starttime9:
   Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity4
   - 17000 sc_commodity_outflow_1,0,0,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode0_endnode0_starttime9:
   100 Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity4
   - 17075 sc_commodity_outflow_1,0,0,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode1_starttime9:
   100 Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode1_starttime9:
   Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity4
   - 17000 sc_commodity_outflow_1,0,1,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode0_endnode1_starttime9:
   100 Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity4
   - 17075 sc_commodity_outflow_1,0,1,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode0_starttime9:
   100 Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,1,0,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode0_starttime9:
   Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity4
   - 17000 sc_commodity_outflow_1,1,0,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode1_endnode0_starttime9:
   100 Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity4
   - 17075 sc_commodity_outflow_1,1,0,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode1_starttime9:
   100 Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode1_starttime9:
   Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity4
   - 17000 sc_commodity_outflow_1,1,1,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode1_endnode1_starttime9:
   100 Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity4
   - 17075 sc_commodity_outflow_1,1,1,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime9:
   100 Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime9:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart9,Tend10
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime9:
   100 Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart9,Tend10
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode0_starttime10:
   100 Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode0_starttime10:
   Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity4
   - 17000 sc_commodity_outflow_1,0,0,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode0_endnode0_starttime10:
   100 Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity4
   - 17075 sc_commodity_outflow_1,0,0,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode0_endnode1_starttime10:
   100 Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode0_endnode1_starttime10:
   Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity4
   - 17000 sc_commodity_outflow_1,0,1,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode0_endnode1_starttime10:
   100 Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity4
   - 17075 sc_commodity_outflow_1,0,1,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode0_starttime10:
   100 Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,1,0,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode0_starttime10:
   Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity4
   - 17000 sc_commodity_outflow_1,1,0,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode1_endnode0_starttime10:
   100 Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity4
   - 17075 sc_commodity_outflow_1,1,0,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode1_endnode1_starttime10:
   100 Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode1_endnode1_starttime10:
   Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity4
   - 17000 sc_commodity_outflow_1,1,1,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode1_endnode1_starttime10:
   100 Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity4
   - 17075 sc_commodity_outflow_1,1,1,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode2_starttime10:
   100 Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode2_starttime10:
   Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity4
   - 17000 sc_commodity_outflow_1,2,2,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode2_starttime10:
   100 Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity4
   - 17075 sc_commodity_outflow_1,2,2,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row0_vehicle1_startnode2_endnode3_starttime10:
   100 Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1 <= 0
 Max_concurrency_constraint_row1_vehicle1_startnode2_endnode3_starttime10:
   Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity4
   - 17000 sc_commodity_outflow_1,2,3,Tstart10,Tend11
   - 4000 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   - 17000 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
   <= 0
 Max_concurrency_constraint_row2_vehicle1_startnode2_endnode3_starttime10:
   100 Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity4
   - 17075 sc_commodity_outflow_1,2,3,Tstart10,Tend11
   + 2500 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
   + 30 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1 <= 0
 R1410: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0 >= 0
 R1411: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1 >= 0
 R1412: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity2 >= 0
 R1413: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity3 >= 0
 R1414: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity4 >= 0
 R1415: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity0 >= 0
 R1416: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity1 >= 0
 R1417: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity2 >= 0
 R1418: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity3 >= 0
 R1419: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity4 >= 0
 R1420: sc_commodity_outflow_0,0,0,Tstart0,Tend4 >= 0
 R1421: sc_commodity_inflow_0,0,0,Tstart0,Tend4 >= 0
 R1422: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0 >= 0
 R1423: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1 >= 0
 R1424: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2 >= 0
 R1425: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3 >= 0
 R1426: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4 >= 0
 R1427: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity0 >= 0
 R1428: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity1 >= 0
 R1429: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity2 >= 0
 R1430: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity3 >= 0
 R1431: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity4 >= 0
 R1432: sc_commodity_outflow_0,1,2,Tstart0,Tend3 >= 0
 R1433: sc_commodity_inflow_0,1,2,Tstart0,Tend3 >= 0
 R1434: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0 >= 0
 R1435: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1 >= 0
 R1436: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity2 >= 0
 R1437: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity3 >= 0
 R1438: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity4 >= 0
 R1439: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity0 >= 0
 R1440: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity1 >= 0
 R1441: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity2 >= 0
 R1442: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity3 >= 0
 R1443: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity4 >= 0
 R1444: sc_commodity_outflow_0,1,1,Tstart0,Tend5 >= 0
 R1445: sc_commodity_inflow_0,1,1,Tstart0,Tend5 >= 0
 R1446: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0 >= 0
 R1447: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1 >= 0
 R1448: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity2 >= 0
 R1449: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity3 >= 0
 R1450: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity4 >= 0
 R1451: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity0 >= 0
 R1452: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity1 >= 0
 R1453: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity2 >= 0
 R1454: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity3 >= 0
 R1455: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity4 >= 0
 R1456: sc_commodity_outflow_0,2,2,Tstart0,Tend1 >= 0
 R1457: sc_commodity_inflow_0,2,2,Tstart0,Tend1 >= 0
 R1458: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0 >= 0
 R1459: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1 >= 0
 R1460: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity2 >= 0
 R1461: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity3 >= 0
 R1462: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity4 >= 0
 R1463: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity0 >= 0
 R1464: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity1 >= 0
 R1465: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity2 >= 0
 R1466: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity3 >= 0
 R1467: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity4 >= 0
 R1468: sc_commodity_outflow_0,3,2,Tstart0,Tend1 >= 0
 R1469: sc_commodity_inflow_0,3,2,Tstart0,Tend1 >= 0
 R1470: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0 >= 0
 R1471: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1 >= 0
 R1472: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity2 >= 0
 R1473: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity3 >= 0
 R1474: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity4 >= 0
 R1475: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity0 >= 0
 R1476: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity1 >= 0
 R1477: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity2 >= 0
 R1478: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity3 >= 0
 R1479: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity4 >= 0
 R1480: sc_commodity_outflow_0,3,3,Tstart0,Tend2 >= 0
 R1481: sc_commodity_inflow_0,3,3,Tstart0,Tend2 >= 0
 R1482: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0 >= 0
 R1483: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1 >= 0
 R1484: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity2 >= 0
 R1485: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity3 >= 0
 R1486: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity4 >= 0
 R1487: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity0 >= 0
 R1488: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity1 >= 0
 R1489: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity2 >= 0
 R1490: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity3 >= 0
 R1491: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity4 >= 0
 R1492: sc_commodity_outflow_0,2,2,Tstart1,Tend2 >= 0
 R1493: sc_commodity_inflow_0,2,2,Tstart1,Tend2 >= 0
 R1494: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0 >= 0
 R1495: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1 >= 0
 R1496: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity2 >= 0
 R1497: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity3 >= 0
 R1498: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity4 >= 0
 R1499: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity0 >= 0
 R1500: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity1 >= 0
 R1501: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity2 >= 0
 R1502: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity3 >= 0
 R1503: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity4 >= 0
 R1504: sc_commodity_outflow_0,2,3,Tstart1,Tend2 >= 0
 R1505: sc_commodity_inflow_0,2,3,Tstart1,Tend2 >= 0
 R1506: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0 >= 0
 R1507: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1 >= 0
 R1508: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity2 >= 0
 R1509: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity3 >= 0
 R1510: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity4 >= 0
 R1511: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity0 >= 0
 R1512: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity1 >= 0
 R1513: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity2 >= 0
 R1514: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity3 >= 0
 R1515: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity4 >= 0
 R1516: sc_commodity_outflow_0,2,1,Tstart2,Tend5 >= 0
 R1517: sc_commodity_inflow_0,2,1,Tstart2,Tend5 >= 0
 R1518: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0 >= 0
 R1519: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1 >= 0
 R1520: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity2 >= 0
 R1521: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity3 >= 0
 R1522: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity4 >= 0
 R1523: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity0 >= 0
 R1524: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity1 >= 0
 R1525: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity2 >= 0
 R1526: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity3 >= 0
 R1527: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity4 >= 0
 R1528: sc_commodity_outflow_0,2,2,Tstart2,Tend3 >= 0
 R1529: sc_commodity_inflow_0,2,2,Tstart2,Tend3 >= 0
 R1530: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0 >= 0
 R1531: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1 >= 0
 R1532: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity2 >= 0
 R1533: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity3 >= 0
 R1534: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity4 >= 0
 R1535: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0 >= 0
 R1536: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity1 >= 0
 R1537: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity2 >= 0
 R1538: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity3 >= 0
 R1539: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity4 >= 0
 R1540: sc_commodity_outflow_0,2,3,Tstart2,Tend3 >= 0
 R1541: sc_commodity_inflow_0,2,3,Tstart2,Tend3 >= 0
 R1542: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0 >= 0
 R1543: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1 >= 0
 R1544: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity2 >= 0
 R1545: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity3 >= 0
 R1546: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity4 >= 0
 R1547: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0 >= 0
 R1548: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity1 >= 0
 R1549: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity2 >= 0
 R1550: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity3 >= 0
 R1551: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity4 >= 0
 R1552: sc_commodity_outflow_0,3,2,Tstart2,Tend3 >= 0
 R1553: sc_commodity_inflow_0,3,2,Tstart2,Tend3 >= 0
 R1554: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0 >= 0
 R1555: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1 >= 0
 R1556: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity2 >= 0
 R1557: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity3 >= 0
 R1558: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity4 >= 0
 R1559: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity0 >= 0
 R1560: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity1 >= 0
 R1561: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity2 >= 0
 R1562: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity3 >= 0
 R1563: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity4 >= 0
 R1564: sc_commodity_outflow_0,3,3,Tstart2,Tend3 >= 0
 R1565: sc_commodity_inflow_0,3,3,Tstart2,Tend3 >= 0
 R1566: Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0 >= 0
 R1567: Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1 >= 0
 R1568: Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity2 >= 0
 R1569: Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity3 >= 0
 R1570: Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity4 >= 0
 R1571: Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity0 >= 0
 R1572: Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity1 >= 0
 R1573: Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity2 >= 0
 R1574: Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity3 >= 0
 R1575: Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity4 >= 0
 R1576: sc_commodity_outflow_0,2,2,Tstart3,Tend4 >= 0
 R1577: sc_commodity_inflow_0,2,2,Tstart3,Tend4 >= 0
 R1578: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0 >= 0
 R1579: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1 >= 0
 R1580: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2 >= 0
 R1581: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3 >= 0
 R1582: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4 >= 0
 R1583: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0 >= 0
 R1584: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity1 >= 0
 R1585: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity2 >= 0
 R1586: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity3 >= 0
 R1587: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity4 >= 0
 R1588: sc_commodity_outflow_0,2,3,Tstart3,Tend4 >= 0
 R1589: sc_commodity_inflow_0,2,3,Tstart3,Tend4 >= 0
 R1590: Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0 >= 0
 R1591: Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1 >= 0
 R1592: Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity2 >= 0
 R1593: Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity3 >= 0
 R1594: Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity4 >= 0
 R1595: Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity0 >= 0
 R1596: Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity1 >= 0
 R1597: Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity2 >= 0
 R1598: Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity3 >= 0
 R1599: Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity4 >= 0
 R1600: sc_commodity_outflow_0,3,2,Tstart3,Tend4 >= 0
 R1601: sc_commodity_inflow_0,3,2,Tstart3,Tend4 >= 0
 R1602: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0 >= 0
 R1603: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1 >= 0
 R1604: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity2 >= 0
 R1605: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity3 >= 0
 R1606: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity4 >= 0
 R1607: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity0 >= 0
 R1608: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity1 >= 0
 R1609: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity2 >= 0
 R1610: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity3 >= 0
 R1611: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity4 >= 0
 R1612: sc_commodity_outflow_0,3,3,Tstart3,Tend4 >= 0
 R1613: sc_commodity_inflow_0,3,3,Tstart3,Tend4 >= 0
 R1614: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0 >= 0
 R1615: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1 >= 0
 R1616: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity2 >= 0
 R1617: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity3 >= 0
 R1618: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity4 >= 0
 R1619: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity0 >= 0
 R1620: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity1 >= 0
 R1621: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity2 >= 0
 R1622: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity3 >= 0
 R1623: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity4 >= 0
 R1624: sc_commodity_outflow_0,0,1,Tstart4,Tend5 >= 0
 R1625: sc_commodity_inflow_0,0,1,Tstart4,Tend5 >= 0
 R1626: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0 >= 0
 R1627: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1 >= 0
 R1628: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity2 >= 0
 R1629: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity3 >= 0
 R1630: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity4 >= 0
 R1631: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity0 >= 0
 R1632: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity1 >= 0
 R1633: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity2 >= 0
 R1634: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity3 >= 0
 R1635: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity4 >= 0
 R1636: sc_commodity_outflow_0,0,0,Tstart4,Tend8 >= 0
 R1637: sc_commodity_inflow_0,0,0,Tstart4,Tend8 >= 0
 R1638: Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0 >= 0
 R1639: Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1 >= 0
 R1640: Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity2 >= 0
 R1641: Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity3 >= 0
 R1642: Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity4 >= 0
 R1643: Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity0 >= 0
 R1644: Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity1 >= 0
 R1645: Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity2 >= 0
 R1646: Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity3 >= 0
 R1647: Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity4 >= 0
 R1648: sc_commodity_outflow_0,2,2,Tstart4,Tend5 >= 0
 R1649: sc_commodity_inflow_0,2,2,Tstart4,Tend5 >= 0
 R1650: Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0 >= 0
 R1651: Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1 >= 0
 R1652: Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity2 >= 0
 R1653: Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity3 >= 0
 R1654: Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity4 >= 0
 R1655: Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity0 >= 0
 R1656: Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity1 >= 0
 R1657: Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity2 >= 0
 R1658: Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity3 >= 0
 R1659: Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity4 >= 0
 R1660: sc_commodity_outflow_0,2,3,Tstart4,Tend5 >= 0
 R1661: sc_commodity_inflow_0,2,3,Tstart4,Tend5 >= 0
 R1662: Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0 >= 0
 R1663: Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1 >= 0
 R1664: Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity2 >= 0
 R1665: Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity3 >= 0
 R1666: Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity4 >= 0
 R1667: Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity0 >= 0
 R1668: Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity1 >= 0
 R1669: Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity2 >= 0
 R1670: Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity3 >= 0
 R1671: Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity4 >= 0
 R1672: sc_commodity_outflow_0,3,2,Tstart4,Tend5 >= 0
 R1673: sc_commodity_inflow_0,3,2,Tstart4,Tend5 >= 0
 R1674: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0 >= 0
 R1675: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1 >= 0
 R1676: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity2 >= 0
 R1677: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity3 >= 0
 R1678: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity4 >= 0
 R1679: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity0 >= 0
 R1680: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity1 >= 0
 R1681: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity2 >= 0
 R1682: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity3 >= 0
 R1683: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity4 >= 0
 R1684: sc_commodity_outflow_0,3,3,Tstart4,Tend5 >= 0
 R1685: sc_commodity_inflow_0,3,3,Tstart4,Tend5 >= 0
 R1686: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0 >= 0
 R1687: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1 >= 0
 R1688: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity2 >= 0
 R1689: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity3 >= 0
 R1690: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity4 >= 0
 R1691: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity0 >= 0
 R1692: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity1 >= 0
 R1693: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity2 >= 0
 R1694: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity3 >= 0
 R1695: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity4 >= 0
 R1696: sc_commodity_outflow_0,1,2,Tstart5,Tend8 >= 0
 R1697: sc_commodity_inflow_0,1,2,Tstart5,Tend8 >= 0
 R1698: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0 >= 0
 R1699: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1 >= 0
 R1700: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity2 >= 0
 R1701: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity3 >= 0
 R1702: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity4 >= 0
 R1703: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity0 >= 0
 R1704: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity1 >= 0
 R1705: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity2 >= 0
 R1706: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity3 >= 0
 R1707: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity4 >= 0
 R1708: sc_commodity_outflow_0,1,1,Tstart5,Tend9 >= 0
 R1709: sc_commodity_inflow_0,1,1,Tstart5,Tend9 >= 0
 R1710: Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0 >= 0
 R1711: Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1 >= 0
 R1712: Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity2 >= 0
 R1713: Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity3 >= 0
 R1714: Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity4 >= 0
 R1715: Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity0 >= 0
 R1716: Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity1 >= 0
 R1717: Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity2 >= 0
 R1718: Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity3 >= 0
 R1719: Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity4 >= 0
 R1720: sc_commodity_outflow_0,2,2,Tstart5,Tend6 >= 0
 R1721: sc_commodity_inflow_0,2,2,Tstart5,Tend6 >= 0
 R1722: Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0 >= 0
 R1723: Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1 >= 0
 R1724: Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity2 >= 0
 R1725: Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity3 >= 0
 R1726: Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity4 >= 0
 R1727: Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity0 >= 0
 R1728: Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity1 >= 0
 R1729: Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity2 >= 0
 R1730: Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity3 >= 0
 R1731: Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity4 >= 0
 R1732: sc_commodity_outflow_0,2,3,Tstart5,Tend6 >= 0
 R1733: sc_commodity_inflow_0,2,3,Tstart5,Tend6 >= 0
 R1734: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0 >= 0
 R1735: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1 >= 0
 R1736: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2 >= 0
 R1737: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3 >= 0
 R1738: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4 >= 0
 R1739: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity0 >= 0
 R1740: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity1 >= 0
 R1741: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity2 >= 0
 R1742: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity3 >= 0
 R1743: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity4 >= 0
 R1744: sc_commodity_outflow_0,3,2,Tstart5,Tend6 >= 0
 R1745: sc_commodity_inflow_0,3,2,Tstart5,Tend6 >= 0
 R1746: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0 >= 0
 R1747: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1 >= 0
 R1748: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity2 >= 0
 R1749: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity3 >= 0
 R1750: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity4 >= 0
 R1751: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity0 >= 0
 R1752: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity1 >= 0
 R1753: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity2 >= 0
 R1754: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity3 >= 0
 R1755: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity4 >= 0
 R1756: sc_commodity_outflow_0,3,3,Tstart5,Tend6 >= 0
 R1757: sc_commodity_inflow_0,3,3,Tstart5,Tend6 >= 0
 R1758: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0 >= 0
 R1759: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1 >= 0
 R1760: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2 >= 0
 R1761: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3 >= 0
 R1762: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4 >= 0
 R1763: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity0 >= 0
 R1764: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity1 >= 0
 R1765: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity2 >= 0
 R1766: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity3 >= 0
 R1767: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity4 >= 0
 R1768: sc_commodity_outflow_0,2,1,Tstart6,Tend9 >= 0
 R1769: sc_commodity_inflow_0,2,1,Tstart6,Tend9 >= 0
 R1770: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0 >= 0
 R1771: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1 >= 0
 R1772: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity2 >= 0
 R1773: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity3 >= 0
 R1774: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity4 >= 0
 R1775: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity0 >= 0
 R1776: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity1 >= 0
 R1777: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity2 >= 0
 R1778: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity3 >= 0
 R1779: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity4 >= 0
 R1780: sc_commodity_outflow_0,2,2,Tstart6,Tend7 >= 0
 R1781: sc_commodity_inflow_0,2,2,Tstart6,Tend7 >= 0
 R1782: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0 >= 0
 R1783: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1 >= 0
 R1784: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2 >= 0
 R1785: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3 >= 0
 R1786: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4 >= 0
 R1787: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity0 >= 0
 R1788: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity1 >= 0
 R1789: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity2 >= 0
 R1790: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity3 >= 0
 R1791: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity4 >= 0
 R1792: sc_commodity_outflow_0,3,2,Tstart6,Tend7 >= 0
 R1793: sc_commodity_inflow_0,3,2,Tstart6,Tend7 >= 0
 R1794: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0 >= 0
 R1795: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1 >= 0
 R1796: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity2 >= 0
 R1797: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity3 >= 0
 R1798: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity4 >= 0
 R1799: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity0 >= 0
 R1800: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity1 >= 0
 R1801: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity2 >= 0
 R1802: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity3 >= 0
 R1803: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity4 >= 0
 R1804: sc_commodity_outflow_0,3,3,Tstart6,Tend11 >= 0
 R1805: sc_commodity_inflow_0,3,3,Tstart6,Tend11 >= 0
 R1806: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0 >= 0
 R1807: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1 >= 0
 R1808: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity2 >= 0
 R1809: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity3 >= 0
 R1810: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity4 >= 0
 R1811: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity0 >= 0
 R1812: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity1 >= 0
 R1813: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity2 >= 0
 R1814: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity3 >= 0
 R1815: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity4 >= 0
 R1816: sc_commodity_outflow_0,2,1,Tstart7,Tend10 >= 0
 R1817: sc_commodity_inflow_0,2,1,Tstart7,Tend10 >= 0
 R1818: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0 >= 0
 R1819: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1 >= 0
 R1820: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity2 >= 0
 R1821: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity3 >= 0
 R1822: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity4 >= 0
 R1823: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity0 >= 0
 R1824: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity1 >= 0
 R1825: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity2 >= 0
 R1826: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity3 >= 0
 R1827: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity4 >= 0
 R1828: sc_commodity_outflow_0,2,2,Tstart7,Tend8 >= 0
 R1829: sc_commodity_inflow_0,2,2,Tstart7,Tend8 >= 0
 R1830: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0 >= 0
 R1831: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1 >= 0
 R1832: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity2 >= 0
 R1833: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity3 >= 0
 R1834: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity4 >= 0
 R1835: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity0 >= 0
 R1836: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity1 >= 0
 R1837: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity2 >= 0
 R1838: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity3 >= 0
 R1839: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity4 >= 0
 R1840: sc_commodity_outflow_0,0,0,Tstart8,Tend9 >= 0
 R1841: sc_commodity_inflow_0,0,0,Tstart8,Tend9 >= 0
 R1842: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0 >= 0
 R1843: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1 >= 0
 R1844: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity2 >= 0
 R1845: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity3 >= 0
 R1846: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity4 >= 0
 R1847: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity0 >= 0
 R1848: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity1 >= 0
 R1849: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity2 >= 0
 R1850: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity3 >= 0
 R1851: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity4 >= 0
 R1852: sc_commodity_outflow_0,0,1,Tstart8,Tend9 >= 0
 R1853: sc_commodity_inflow_0,0,1,Tstart8,Tend9 >= 0
 R1854: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0 >= 0
 R1855: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1 >= 0
 R1856: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity2 >= 0
 R1857: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity3 >= 0
 R1858: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity4 >= 0
 R1859: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity0 >= 0
 R1860: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity1 >= 0
 R1861: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity2 >= 0
 R1862: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity3 >= 0
 R1863: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity4 >= 0
 R1864: sc_commodity_outflow_0,2,1,Tstart8,Tend11 >= 0
 R1865: sc_commodity_inflow_0,2,1,Tstart8,Tend11 >= 0
 R1866: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0 >= 0
 R1867: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1 >= 0
 R1868: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity2 >= 0
 R1869: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity3 >= 0
 R1870: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity4 >= 0
 R1871: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0 >= 0
 R1872: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity1 >= 0
 R1873: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity2 >= 0
 R1874: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity3 >= 0
 R1875: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity4 >= 0
 R1876: sc_commodity_outflow_0,2,2,Tstart8,Tend9 >= 0
 R1877: sc_commodity_inflow_0,2,2,Tstart8,Tend9 >= 0
 R1878: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0 >= 0
 R1879: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1 >= 0
 R1880: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity2 >= 0
 R1881: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity3 >= 0
 R1882: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity4 >= 0
 R1883: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity0 >= 0
 R1884: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity1 >= 0
 R1885: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity2 >= 0
 R1886: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity3 >= 0
 R1887: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity4 >= 0
 R1888: sc_commodity_outflow_0,0,0,Tstart9,Tend10 >= 0
 R1889: sc_commodity_inflow_0,0,0,Tstart9,Tend10 >= 0
 R1890: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0 >= 0
 R1891: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1 >= 0
 R1892: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity2 >= 0
 R1893: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity3 >= 0
 R1894: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity4 >= 0
 R1895: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity0 >= 0
 R1896: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity1 >= 0
 R1897: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity2 >= 0
 R1898: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity3 >= 0
 R1899: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity4 >= 0
 R1900: sc_commodity_outflow_0,0,1,Tstart9,Tend10 >= 0
 R1901: sc_commodity_inflow_0,0,1,Tstart9,Tend10 >= 0
 R1902: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0 >= 0
 R1903: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1 >= 0
 R1904: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity2 >= 0
 R1905: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity3 >= 0
 R1906: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity4 >= 0
 R1907: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity0 >= 0
 R1908: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity1 >= 0
 R1909: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity2 >= 0
 R1910: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity3 >= 0
 R1911: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity4 >= 0
 R1912: sc_commodity_outflow_0,1,0,Tstart9,Tend10 >= 0
 R1913: sc_commodity_inflow_0,1,0,Tstart9,Tend10 >= 0
 R1914: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0 >= 0
 R1915: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1 >= 0
 R1916: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity2 >= 0
 R1917: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity3 >= 0
 R1918: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity4 >= 0
 R1919: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity0 >= 0
 R1920: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity1 >= 0
 R1921: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity2 >= 0
 R1922: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity3 >= 0
 R1923: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity4 >= 0
 R1924: sc_commodity_outflow_0,1,1,Tstart9,Tend10 >= 0
 R1925: sc_commodity_inflow_0,1,1,Tstart9,Tend10 >= 0
 R1926: Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0 >= 0
 R1927: Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1 >= 0
 R1928: Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity2 >= 0
 R1929: Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity3 >= 0
 R1930: Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity4 >= 0
 R1931: Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity0 >= 0
 R1932: Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity1 >= 0
 R1933: Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity2 >= 0
 R1934: Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity3 >= 0
 R1935: Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity4 >= 0
 R1936: sc_commodity_outflow_0,2,2,Tstart9,Tend10 >= 0
 R1937: sc_commodity_inflow_0,2,2,Tstart9,Tend10 >= 0
 R1938: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0 >= 0
 R1939: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1 >= 0
 R1940: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity2 >= 0
 R1941: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity3 >= 0
 R1942: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity4 >= 0
 R1943: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity0 >= 0
 R1944: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity1 >= 0
 R1945: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity2 >= 0
 R1946: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity3 >= 0
 R1947: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity4 >= 0
 R1948: sc_commodity_outflow_0,0,0,Tstart10,Tend11 >= 0
 R1949: sc_commodity_inflow_0,0,0,Tstart10,Tend11 >= 0
 R1950: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0 >= 0
 R1951: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1 >= 0
 R1952: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity2 >= 0
 R1953: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity3 >= 0
 R1954: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity4 >= 0
 R1955: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity0 >= 0
 R1956: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity1 >= 0
 R1957: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity2 >= 0
 R1958: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity3 >= 0
 R1959: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity4 >= 0
 R1960: sc_commodity_outflow_0,0,1,Tstart10,Tend11 >= 0
 R1961: sc_commodity_inflow_0,0,1,Tstart10,Tend11 >= 0
 R1962: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0 >= 0
 R1963: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1 >= 0
 R1964: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity2 >= 0
 R1965: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity3 >= 0
 R1966: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity4 >= 0
 R1967: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity0 >= 0
 R1968: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity1 >= 0
 R1969: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity2 >= 0
 R1970: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity3 >= 0
 R1971: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity4 >= 0
 R1972: sc_commodity_outflow_0,1,0,Tstart10,Tend11 >= 0
 R1973: sc_commodity_inflow_0,1,0,Tstart10,Tend11 >= 0
 R1974: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0 >= 0
 R1975: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1 >= 0
 R1976: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity2 >= 0
 R1977: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity3 >= 0
 R1978: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity4 >= 0
 R1979: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity0 >= 0
 R1980: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity1 >= 0
 R1981: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity2 >= 0
 R1982: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity3 >= 0
 R1983: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity4 >= 0
 R1984: sc_commodity_outflow_0,1,1,Tstart10,Tend11 >= 0
 R1985: sc_commodity_inflow_0,1,1,Tstart10,Tend11 >= 0
 R1986: Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0 >= 0
 R1987: Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1 >= 0
 R1988: Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity2 >= 0
 R1989: Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity3 >= 0
 R1990: Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity4 >= 0
 R1991: Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity0 >= 0
 R1992: Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity1 >= 0
 R1993: Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity2 >= 0
 R1994: Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity3 >= 0
 R1995: Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity4 >= 0
 R1996: sc_commodity_outflow_0,2,2,Tstart10,Tend11 >= 0
 R1997: sc_commodity_inflow_0,2,2,Tstart10,Tend11 >= 0
 R1998: Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0 >= 0
 R1999: Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1 >= 0
 R2000: Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity2 >= 0
 R2001: Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity3 >= 0
 R2002: Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity4 >= 0
 R2003: Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity0 >= 0
 R2004: Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity1 >= 0
 R2005: Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity2 >= 0
 R2006: Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity3 >= 0
 R2007: Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity4 >= 0
 R2008: sc_commodity_outflow_0,2,3,Tstart10,Tend11 >= 0
 R2009: sc_commodity_inflow_0,2,3,Tstart10,Tend11 >= 0
 R2010: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0 >= 0
 R2011: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1 >= 0
 R2012: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity2 >= 0
 R2013: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity3 >= 0
 R2014: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity4 >= 0
 R2015: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity0 >= 0
 R2016: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity1 >= 0
 R2017: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity2 >= 0
 R2018: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity3 >= 0
 R2019: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity4 >= 0
 R2020: sc_commodity_outflow_1,0,0,Tstart0,Tend4 >= 0
 R2021: sc_commodity_inflow_1,0,0,Tstart0,Tend4 >= 0
 R2022: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0 >= 0
 R2023: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1 >= 0
 R2024: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2 >= 0
 R2025: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3 >= 0
 R2026: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4 >= 0
 R2027: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity0 >= 0
 R2028: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity1 >= 0
 R2029: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity2 >= 0
 R2030: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity3 >= 0
 R2031: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity4 >= 0
 R2032: sc_commodity_outflow_1,1,2,Tstart0,Tend3 >= 0
 R2033: sc_commodity_inflow_1,1,2,Tstart0,Tend3 >= 0
 R2034: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0 >= 0
 R2035: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1 >= 0
 R2036: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity2 >= 0
 R2037: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity3 >= 0
 R2038: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity4 >= 0
 R2039: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity0 >= 0
 R2040: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity1 >= 0
 R2041: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity2 >= 0
 R2042: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity3 >= 0
 R2043: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity4 >= 0
 R2044: sc_commodity_outflow_1,1,1,Tstart0,Tend5 >= 0
 R2045: sc_commodity_inflow_1,1,1,Tstart0,Tend5 >= 0
 R2046: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0 >= 0
 R2047: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1 >= 0
 R2048: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity2 >= 0
 R2049: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity3 >= 0
 R2050: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity4 >= 0
 R2051: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity0 >= 0
 R2052: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity1 >= 0
 R2053: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity2 >= 0
 R2054: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity3 >= 0
 R2055: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity4 >= 0
 R2056: sc_commodity_outflow_1,2,2,Tstart0,Tend1 >= 0
 R2057: sc_commodity_inflow_1,2,2,Tstart0,Tend1 >= 0
 R2058: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0 >= 0
 R2059: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1 >= 0
 R2060: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity2 >= 0
 R2061: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity3 >= 0
 R2062: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity4 >= 0
 R2063: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity0 >= 0
 R2064: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity1 >= 0
 R2065: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity2 >= 0
 R2066: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity3 >= 0
 R2067: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity4 >= 0
 R2068: sc_commodity_outflow_1,3,2,Tstart0,Tend1 >= 0
 R2069: sc_commodity_inflow_1,3,2,Tstart0,Tend1 >= 0
 R2070: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0 >= 0
 R2071: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1 >= 0
 R2072: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity2 >= 0
 R2073: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity3 >= 0
 R2074: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity4 >= 0
 R2075: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity0 >= 0
 R2076: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity1 >= 0
 R2077: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity2 >= 0
 R2078: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity3 >= 0
 R2079: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity4 >= 0
 R2080: sc_commodity_outflow_1,3,3,Tstart0,Tend2 >= 0
 R2081: sc_commodity_inflow_1,3,3,Tstart0,Tend2 >= 0
 R2082: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0 >= 0
 R2083: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1 >= 0
 R2084: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity2 >= 0
 R2085: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity3 >= 0
 R2086: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity4 >= 0
 R2087: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity0 >= 0
 R2088: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity1 >= 0
 R2089: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity2 >= 0
 R2090: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity3 >= 0
 R2091: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity4 >= 0
 R2092: sc_commodity_outflow_1,2,2,Tstart1,Tend2 >= 0
 R2093: sc_commodity_inflow_1,2,2,Tstart1,Tend2 >= 0
 R2094: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0 >= 0
 R2095: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1 >= 0
 R2096: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity2 >= 0
 R2097: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity3 >= 0
 R2098: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity4 >= 0
 R2099: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity0 >= 0
 R2100: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity1 >= 0
 R2101: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity2 >= 0
 R2102: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity3 >= 0
 R2103: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity4 >= 0
 R2104: sc_commodity_outflow_1,2,3,Tstart1,Tend2 >= 0
 R2105: sc_commodity_inflow_1,2,3,Tstart1,Tend2 >= 0
 R2106: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0 >= 0
 R2107: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1 >= 0
 R2108: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity2 >= 0
 R2109: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity3 >= 0
 R2110: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity4 >= 0
 R2111: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity0 >= 0
 R2112: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity1 >= 0
 R2113: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity2 >= 0
 R2114: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity3 >= 0
 R2115: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity4 >= 0
 R2116: sc_commodity_outflow_1,2,1,Tstart2,Tend5 >= 0
 R2117: sc_commodity_inflow_1,2,1,Tstart2,Tend5 >= 0
 R2118: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0 >= 0
 R2119: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1 >= 0
 R2120: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity2 >= 0
 R2121: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity3 >= 0
 R2122: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity4 >= 0
 R2123: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity0 >= 0
 R2124: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity1 >= 0
 R2125: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity2 >= 0
 R2126: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity3 >= 0
 R2127: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity4 >= 0
 R2128: sc_commodity_outflow_1,2,2,Tstart2,Tend3 >= 0
 R2129: sc_commodity_inflow_1,2,2,Tstart2,Tend3 >= 0
 R2130: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0 >= 0
 R2131: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1 >= 0
 R2132: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity2 >= 0
 R2133: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity3 >= 0
 R2134: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity4 >= 0
 R2135: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0 >= 0
 R2136: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity1 >= 0
 R2137: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity2 >= 0
 R2138: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity3 >= 0
 R2139: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity4 >= 0
 R2140: sc_commodity_outflow_1,2,3,Tstart2,Tend3 >= 0
 R2141: sc_commodity_inflow_1,2,3,Tstart2,Tend3 >= 0
 R2142: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0 >= 0
 R2143: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1 >= 0
 R2144: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity2 >= 0
 R2145: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity3 >= 0
 R2146: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity4 >= 0
 R2147: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0 >= 0
 R2148: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity1 >= 0
 R2149: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity2 >= 0
 R2150: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity3 >= 0
 R2151: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity4 >= 0
 R2152: sc_commodity_outflow_1,3,2,Tstart2,Tend3 >= 0
 R2153: sc_commodity_inflow_1,3,2,Tstart2,Tend3 >= 0
 R2154: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0 >= 0
 R2155: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1 >= 0
 R2156: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity2 >= 0
 R2157: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity3 >= 0
 R2158: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity4 >= 0
 R2159: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity0 >= 0
 R2160: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity1 >= 0
 R2161: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity2 >= 0
 R2162: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity3 >= 0
 R2163: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity4 >= 0
 R2164: sc_commodity_outflow_1,3,3,Tstart2,Tend3 >= 0
 R2165: sc_commodity_inflow_1,3,3,Tstart2,Tend3 >= 0
 R2166: Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0 >= 0
 R2167: Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1 >= 0
 R2168: Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity2 >= 0
 R2169: Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity3 >= 0
 R2170: Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity4 >= 0
 R2171: Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity0 >= 0
 R2172: Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity1 >= 0
 R2173: Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity2 >= 0
 R2174: Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity3 >= 0
 R2175: Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity4 >= 0
 R2176: sc_commodity_outflow_1,2,2,Tstart3,Tend4 >= 0
 R2177: sc_commodity_inflow_1,2,2,Tstart3,Tend4 >= 0
 R2178: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0 >= 0
 R2179: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1 >= 0
 R2180: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2 >= 0
 R2181: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3 >= 0
 R2182: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4 >= 0
 R2183: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0 >= 0
 R2184: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity1 >= 0
 R2185: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity2 >= 0
 R2186: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity3 >= 0
 R2187: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity4 >= 0
 R2188: sc_commodity_outflow_1,2,3,Tstart3,Tend4 >= 0
 R2189: sc_commodity_inflow_1,2,3,Tstart3,Tend4 >= 0
 R2190: Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0 >= 0
 R2191: Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1 >= 0
 R2192: Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity2 >= 0
 R2193: Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity3 >= 0
 R2194: Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity4 >= 0
 R2195: Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity0 >= 0
 R2196: Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity1 >= 0
 R2197: Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity2 >= 0
 R2198: Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity3 >= 0
 R2199: Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity4 >= 0
 R2200: sc_commodity_outflow_1,3,2,Tstart3,Tend4 >= 0
 R2201: sc_commodity_inflow_1,3,2,Tstart3,Tend4 >= 0
 R2202: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0 >= 0
 R2203: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1 >= 0
 R2204: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity2 >= 0
 R2205: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity3 >= 0
 R2206: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity4 >= 0
 R2207: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity0 >= 0
 R2208: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity1 >= 0
 R2209: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity2 >= 0
 R2210: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity3 >= 0
 R2211: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity4 >= 0
 R2212: sc_commodity_outflow_1,3,3,Tstart3,Tend4 >= 0
 R2213: sc_commodity_inflow_1,3,3,Tstart3,Tend4 >= 0
 R2214: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0 >= 0
 R2215: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1 >= 0
 R2216: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity2 >= 0
 R2217: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity3 >= 0
 R2218: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity4 >= 0
 R2219: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity0 >= 0
 R2220: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity1 >= 0
 R2221: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity2 >= 0
 R2222: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity3 >= 0
 R2223: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity4 >= 0
 R2224: sc_commodity_outflow_1,0,1,Tstart4,Tend5 >= 0
 R2225: sc_commodity_inflow_1,0,1,Tstart4,Tend5 >= 0
 R2226: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0 >= 0
 R2227: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1 >= 0
 R2228: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity2 >= 0
 R2229: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity3 >= 0
 R2230: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity4 >= 0
 R2231: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity0 >= 0
 R2232: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity1 >= 0
 R2233: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity2 >= 0
 R2234: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity3 >= 0
 R2235: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity4 >= 0
 R2236: sc_commodity_outflow_1,0,0,Tstart4,Tend8 >= 0
 R2237: sc_commodity_inflow_1,0,0,Tstart4,Tend8 >= 0
 R2238: Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0 >= 0
 R2239: Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1 >= 0
 R2240: Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity2 >= 0
 R2241: Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity3 >= 0
 R2242: Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity4 >= 0
 R2243: Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity0 >= 0
 R2244: Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity1 >= 0
 R2245: Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity2 >= 0
 R2246: Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity3 >= 0
 R2247: Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity4 >= 0
 R2248: sc_commodity_outflow_1,2,2,Tstart4,Tend5 >= 0
 R2249: sc_commodity_inflow_1,2,2,Tstart4,Tend5 >= 0
 R2250: Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0 >= 0
 R2251: Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1 >= 0
 R2252: Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity2 >= 0
 R2253: Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity3 >= 0
 R2254: Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity4 >= 0
 R2255: Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity0 >= 0
 R2256: Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity1 >= 0
 R2257: Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity2 >= 0
 R2258: Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity3 >= 0
 R2259: Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity4 >= 0
 R2260: sc_commodity_outflow_1,2,3,Tstart4,Tend5 >= 0
 R2261: sc_commodity_inflow_1,2,3,Tstart4,Tend5 >= 0
 R2262: Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0 >= 0
 R2263: Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1 >= 0
 R2264: Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity2 >= 0
 R2265: Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity3 >= 0
 R2266: Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity4 >= 0
 R2267: Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity0 >= 0
 R2268: Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity1 >= 0
 R2269: Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity2 >= 0
 R2270: Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity3 >= 0
 R2271: Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity4 >= 0
 R2272: sc_commodity_outflow_1,3,2,Tstart4,Tend5 >= 0
 R2273: sc_commodity_inflow_1,3,2,Tstart4,Tend5 >= 0
 R2274: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0 >= 0
 R2275: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1 >= 0
 R2276: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity2 >= 0
 R2277: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity3 >= 0
 R2278: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity4 >= 0
 R2279: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity0 >= 0
 R2280: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity1 >= 0
 R2281: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity2 >= 0
 R2282: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity3 >= 0
 R2283: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity4 >= 0
 R2284: sc_commodity_outflow_1,3,3,Tstart4,Tend5 >= 0
 R2285: sc_commodity_inflow_1,3,3,Tstart4,Tend5 >= 0
 R2286: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0 >= 0
 R2287: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1 >= 0
 R2288: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity2 >= 0
 R2289: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity3 >= 0
 R2290: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity4 >= 0
 R2291: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity0 >= 0
 R2292: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity1 >= 0
 R2293: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity2 >= 0
 R2294: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity3 >= 0
 R2295: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity4 >= 0
 R2296: sc_commodity_outflow_1,1,2,Tstart5,Tend8 >= 0
 R2297: sc_commodity_inflow_1,1,2,Tstart5,Tend8 >= 0
 R2298: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0 >= 0
 R2299: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1 >= 0
 R2300: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity2 >= 0
 R2301: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity3 >= 0
 R2302: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity4 >= 0
 R2303: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity0 >= 0
 R2304: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity1 >= 0
 R2305: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity2 >= 0
 R2306: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity3 >= 0
 R2307: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity4 >= 0
 R2308: sc_commodity_outflow_1,1,1,Tstart5,Tend9 >= 0
 R2309: sc_commodity_inflow_1,1,1,Tstart5,Tend9 >= 0
 R2310: Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0 >= 0
 R2311: Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1 >= 0
 R2312: Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity2 >= 0
 R2313: Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity3 >= 0
 R2314: Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity4 >= 0
 R2315: Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity0 >= 0
 R2316: Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity1 >= 0
 R2317: Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity2 >= 0
 R2318: Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity3 >= 0
 R2319: Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity4 >= 0
 R2320: sc_commodity_outflow_1,2,2,Tstart5,Tend6 >= 0
 R2321: sc_commodity_inflow_1,2,2,Tstart5,Tend6 >= 0
 R2322: Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0 >= 0
 R2323: Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1 >= 0
 R2324: Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity2 >= 0
 R2325: Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity3 >= 0
 R2326: Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity4 >= 0
 R2327: Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity0 >= 0
 R2328: Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity1 >= 0
 R2329: Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity2 >= 0
 R2330: Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity3 >= 0
 R2331: Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity4 >= 0
 R2332: sc_commodity_outflow_1,2,3,Tstart5,Tend6 >= 0
 R2333: sc_commodity_inflow_1,2,3,Tstart5,Tend6 >= 0
 R2334: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0 >= 0
 R2335: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1 >= 0
 R2336: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2 >= 0
 R2337: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3 >= 0
 R2338: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4 >= 0
 R2339: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity0 >= 0
 R2340: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity1 >= 0
 R2341: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity2 >= 0
 R2342: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity3 >= 0
 R2343: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity4 >= 0
 R2344: sc_commodity_outflow_1,3,2,Tstart5,Tend6 >= 0
 R2345: sc_commodity_inflow_1,3,2,Tstart5,Tend6 >= 0
 R2346: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0 >= 0
 R2347: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1 >= 0
 R2348: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity2 >= 0
 R2349: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity3 >= 0
 R2350: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity4 >= 0
 R2351: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity0 >= 0
 R2352: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity1 >= 0
 R2353: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity2 >= 0
 R2354: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity3 >= 0
 R2355: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity4 >= 0
 R2356: sc_commodity_outflow_1,3,3,Tstart5,Tend6 >= 0
 R2357: sc_commodity_inflow_1,3,3,Tstart5,Tend6 >= 0
 R2358: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0 >= 0
 R2359: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1 >= 0
 R2360: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2 >= 0
 R2361: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3 >= 0
 R2362: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4 >= 0
 R2363: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity0 >= 0
 R2364: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity1 >= 0
 R2365: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity2 >= 0
 R2366: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity3 >= 0
 R2367: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity4 >= 0
 R2368: sc_commodity_outflow_1,2,1,Tstart6,Tend9 >= 0
 R2369: sc_commodity_inflow_1,2,1,Tstart6,Tend9 >= 0
 R2370: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0 >= 0
 R2371: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1 >= 0
 R2372: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity2 >= 0
 R2373: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity3 >= 0
 R2374: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity4 >= 0
 R2375: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity0 >= 0
 R2376: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity1 >= 0
 R2377: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity2 >= 0
 R2378: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity3 >= 0
 R2379: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity4 >= 0
 R2380: sc_commodity_outflow_1,2,2,Tstart6,Tend7 >= 0
 R2381: sc_commodity_inflow_1,2,2,Tstart6,Tend7 >= 0
 R2382: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0 >= 0
 R2383: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1 >= 0
 R2384: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2 >= 0
 R2385: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3 >= 0
 R2386: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4 >= 0
 R2387: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity0 >= 0
 R2388: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity1 >= 0
 R2389: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity2 >= 0
 R2390: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity3 >= 0
 R2391: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity4 >= 0
 R2392: sc_commodity_outflow_1,3,2,Tstart6,Tend7 >= 0
 R2393: sc_commodity_inflow_1,3,2,Tstart6,Tend7 >= 0
 R2394: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0 >= 0
 R2395: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1 >= 0
 R2396: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity2 >= 0
 R2397: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity3 >= 0
 R2398: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity4 >= 0
 R2399: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity0 >= 0
 R2400: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity1 >= 0
 R2401: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity2 >= 0
 R2402: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity3 >= 0
 R2403: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity4 >= 0
 R2404: sc_commodity_outflow_1,3,3,Tstart6,Tend11 >= 0
 R2405: sc_commodity_inflow_1,3,3,Tstart6,Tend11 >= 0
 R2406: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0 >= 0
 R2407: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1 >= 0
 R2408: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity2 >= 0
 R2409: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity3 >= 0
 R2410: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity4 >= 0
 R2411: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity0 >= 0
 R2412: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity1 >= 0
 R2413: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity2 >= 0
 R2414: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity3 >= 0
 R2415: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity4 >= 0
 R2416: sc_commodity_outflow_1,2,1,Tstart7,Tend10 >= 0
 R2417: sc_commodity_inflow_1,2,1,Tstart7,Tend10 >= 0
 R2418: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0 >= 0
 R2419: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1 >= 0
 R2420: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity2 >= 0
 R2421: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity3 >= 0
 R2422: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity4 >= 0
 R2423: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity0 >= 0
 R2424: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity1 >= 0
 R2425: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity2 >= 0
 R2426: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity3 >= 0
 R2427: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity4 >= 0
 R2428: sc_commodity_outflow_1,2,2,Tstart7,Tend8 >= 0
 R2429: sc_commodity_inflow_1,2,2,Tstart7,Tend8 >= 0
 R2430: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0 >= 0
 R2431: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1 >= 0
 R2432: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity2 >= 0
 R2433: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity3 >= 0
 R2434: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity4 >= 0
 R2435: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity0 >= 0
 R2436: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity1 >= 0
 R2437: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity2 >= 0
 R2438: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity3 >= 0
 R2439: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity4 >= 0
 R2440: sc_commodity_outflow_1,0,0,Tstart8,Tend9 >= 0
 R2441: sc_commodity_inflow_1,0,0,Tstart8,Tend9 >= 0
 R2442: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0 >= 0
 R2443: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1 >= 0
 R2444: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity2 >= 0
 R2445: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity3 >= 0
 R2446: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity4 >= 0
 R2447: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity0 >= 0
 R2448: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity1 >= 0
 R2449: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity2 >= 0
 R2450: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity3 >= 0
 R2451: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity4 >= 0
 R2452: sc_commodity_outflow_1,0,1,Tstart8,Tend9 >= 0
 R2453: sc_commodity_inflow_1,0,1,Tstart8,Tend9 >= 0
 R2454: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0 >= 0
 R2455: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1 >= 0
 R2456: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity2 >= 0
 R2457: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity3 >= 0
 R2458: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity4 >= 0
 R2459: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity0 >= 0
 R2460: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity1 >= 0
 R2461: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity2 >= 0
 R2462: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity3 >= 0
 R2463: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity4 >= 0
 R2464: sc_commodity_outflow_1,2,1,Tstart8,Tend11 >= 0
 R2465: sc_commodity_inflow_1,2,1,Tstart8,Tend11 >= 0
 R2466: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0 >= 0
 R2467: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1 >= 0
 R2468: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity2 >= 0
 R2469: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity3 >= 0
 R2470: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity4 >= 0
 R2471: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0 >= 0
 R2472: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity1 >= 0
 R2473: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity2 >= 0
 R2474: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity3 >= 0
 R2475: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity4 >= 0
 R2476: sc_commodity_outflow_1,2,2,Tstart8,Tend9 >= 0
 R2477: sc_commodity_inflow_1,2,2,Tstart8,Tend9 >= 0
 R2478: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0 >= 0
 R2479: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1 >= 0
 R2480: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity2 >= 0
 R2481: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity3 >= 0
 R2482: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity4 >= 0
 R2483: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity0 >= 0
 R2484: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity1 >= 0
 R2485: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity2 >= 0
 R2486: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity3 >= 0
 R2487: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity4 >= 0
 R2488: sc_commodity_outflow_1,0,0,Tstart9,Tend10 >= 0
 R2489: sc_commodity_inflow_1,0,0,Tstart9,Tend10 >= 0
 R2490: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0 >= 0
 R2491: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1 >= 0
 R2492: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity2 >= 0
 R2493: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity3 >= 0
 R2494: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity4 >= 0
 R2495: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity0 >= 0
 R2496: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity1 >= 0
 R2497: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity2 >= 0
 R2498: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity3 >= 0
 R2499: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity4 >= 0
 R2500: sc_commodity_outflow_1,0,1,Tstart9,Tend10 >= 0
 R2501: sc_commodity_inflow_1,0,1,Tstart9,Tend10 >= 0
 R2502: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0 >= 0
 R2503: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1 >= 0
 R2504: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity2 >= 0
 R2505: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity3 >= 0
 R2506: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity4 >= 0
 R2507: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity0 >= 0
 R2508: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity1 >= 0
 R2509: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity2 >= 0
 R2510: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity3 >= 0
 R2511: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity4 >= 0
 R2512: sc_commodity_outflow_1,1,0,Tstart9,Tend10 >= 0
 R2513: sc_commodity_inflow_1,1,0,Tstart9,Tend10 >= 0
 R2514: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0 >= 0
 R2515: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1 >= 0
 R2516: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity2 >= 0
 R2517: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity3 >= 0
 R2518: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity4 >= 0
 R2519: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity0 >= 0
 R2520: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity1 >= 0
 R2521: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity2 >= 0
 R2522: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity3 >= 0
 R2523: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity4 >= 0
 R2524: sc_commodity_outflow_1,1,1,Tstart9,Tend10 >= 0
 R2525: sc_commodity_inflow_1,1,1,Tstart9,Tend10 >= 0
 R2526: Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0 >= 0
 R2527: Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1 >= 0
 R2528: Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity2 >= 0
 R2529: Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity3 >= 0
 R2530: Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity4 >= 0
 R2531: Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity0 >= 0
 R2532: Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity1 >= 0
 R2533: Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity2 >= 0
 R2534: Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity3 >= 0
 R2535: Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity4 >= 0
 R2536: sc_commodity_outflow_1,2,2,Tstart9,Tend10 >= 0
 R2537: sc_commodity_inflow_1,2,2,Tstart9,Tend10 >= 0
 R2538: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0 >= 0
 R2539: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1 >= 0
 R2540: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity2 >= 0
 R2541: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity3 >= 0
 R2542: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity4 >= 0
 R2543: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity0 >= 0
 R2544: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity1 >= 0
 R2545: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity2 >= 0
 R2546: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity3 >= 0
 R2547: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity4 >= 0
 R2548: sc_commodity_outflow_1,0,0,Tstart10,Tend11 >= 0
 R2549: sc_commodity_inflow_1,0,0,Tstart10,Tend11 >= 0
 R2550: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0 >= 0
 R2551: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1 >= 0
 R2552: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity2 >= 0
 R2553: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity3 >= 0
 R2554: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity4 >= 0
 R2555: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity0 >= 0
 R2556: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity1 >= 0
 R2557: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity2 >= 0
 R2558: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity3 >= 0
 R2559: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity4 >= 0
 R2560: sc_commodity_outflow_1,0,1,Tstart10,Tend11 >= 0
 R2561: sc_commodity_inflow_1,0,1,Tstart10,Tend11 >= 0
 R2562: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0 >= 0
 R2563: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1 >= 0
 R2564: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity2 >= 0
 R2565: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity3 >= 0
 R2566: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity4 >= 0
 R2567: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity0 >= 0
 R2568: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity1 >= 0
 R2569: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity2 >= 0
 R2570: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity3 >= 0
 R2571: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity4 >= 0
 R2572: sc_commodity_outflow_1,1,0,Tstart10,Tend11 >= 0
 R2573: sc_commodity_inflow_1,1,0,Tstart10,Tend11 >= 0
 R2574: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0 >= 0
 R2575: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1 >= 0
 R2576: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity2 >= 0
 R2577: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity3 >= 0
 R2578: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity4 >= 0
 R2579: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity0 >= 0
 R2580: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity1 >= 0
 R2581: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity2 >= 0
 R2582: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity3 >= 0
 R2583: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity4 >= 0
 R2584: sc_commodity_outflow_1,1,1,Tstart10,Tend11 >= 0
 R2585: sc_commodity_inflow_1,1,1,Tstart10,Tend11 >= 0
 R2586: Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0 >= 0
 R2587: Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1 >= 0
 R2588: Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity2 >= 0
 R2589: Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity3 >= 0
 R2590: Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity4 >= 0
 R2591: Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity0 >= 0
 R2592: Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity1 >= 0
 R2593: Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity2 >= 0
 R2594: Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity3 >= 0
 R2595: Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity4 >= 0
 R2596: sc_commodity_outflow_1,2,2,Tstart10,Tend11 >= 0
 R2597: sc_commodity_inflow_1,2,2,Tstart10,Tend11 >= 0
 R2598: Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0 >= 0
 R2599: Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1 >= 0
 R2600: Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity2 >= 0
 R2601: Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity3 >= 0
 R2602: Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity4 >= 0
 R2603: Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity0 >= 0
 R2604: Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity1 >= 0
 R2605: Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity2 >= 0
 R2606: Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity3 >= 0
 R2607: Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity4 >= 0
 R2608: sc_commodity_outflow_1,2,3,Tstart10,Tend11 >= 0
 R2609: sc_commodity_inflow_1,2,3,Tstart10,Tend11 >= 0
Bounds
Generals
 Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
 Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
 Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
 Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
 Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
 Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
 Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
 Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
 Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
 Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
 Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
 Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity0
 Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity0
 Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity0
 Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity0
 Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity0
 Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity0
 Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity0
 Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity0
 Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity0
 Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity0
 Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity0
 Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity0
 Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity0
 Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity0
 Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity0
 Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity0
 Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity0
 Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity0
 Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity0
 sc_commodity_outflow_0,0,0,Tstart0,Tend4
 sc_commodity_outflow_0,0,0,Tstart4,Tend8
 sc_commodity_outflow_0,0,0,Tstart8,Tend9
 sc_commodity_outflow_0,0,0,Tstart9,Tend10
 sc_commodity_outflow_0,0,0,Tstart10,Tend11
 sc_commodity_outflow_0,0,1,Tstart4,Tend5
 sc_commodity_outflow_0,0,1,Tstart8,Tend9
 sc_commodity_outflow_0,0,1,Tstart9,Tend10
 sc_commodity_outflow_0,0,1,Tstart10,Tend11
 sc_commodity_outflow_0,1,0,Tstart9,Tend10
 sc_commodity_outflow_0,1,0,Tstart10,Tend11
 sc_commodity_outflow_0,1,1,Tstart0,Tend5
 sc_commodity_outflow_0,1,1,Tstart5,Tend9
 sc_commodity_outflow_0,1,1,Tstart9,Tend10
 sc_commodity_outflow_0,1,1,Tstart10,Tend11
 sc_commodity_outflow_0,1,2,Tstart0,Tend3
 sc_commodity_outflow_0,1,2,Tstart5,Tend8
 sc_commodity_outflow_0,2,1,Tstart2,Tend5
 sc_commodity_outflow_0,2,1,Tstart6,Tend9
 sc_commodity_outflow_0,2,1,Tstart7,Tend10
 sc_commodity_outflow_0,2,1,Tstart8,Tend11
 sc_commodity_outflow_0,2,2,Tstart0,Tend1
 sc_commodity_outflow_0,2,2,Tstart1,Tend2
 sc_commodity_outflow_0,2,2,Tstart2,Tend3
 sc_commodity_outflow_0,2,2,Tstart3,Tend4
 sc_commodity_outflow_0,2,2,Tstart4,Tend5
 sc_commodity_outflow_0,2,2,Tstart5,Tend6
 sc_commodity_outflow_0,2,2,Tstart6,Tend7
 sc_commodity_outflow_0,2,2,Tstart7,Tend8
 sc_commodity_outflow_0,2,2,Tstart8,Tend9
 sc_commodity_outflow_0,2,2,Tstart9,Tend10
 sc_commodity_outflow_0,2,2,Tstart10,Tend11
 sc_commodity_outflow_0,2,3,Tstart1,Tend2
 sc_commodity_outflow_0,2,3,Tstart2,Tend3
 sc_commodity_outflow_0,2,3,Tstart3,Tend4
 sc_commodity_outflow_0,2,3,Tstart4,Tend5
 sc_commodity_outflow_0,2,3,Tstart5,Tend6
 sc_commodity_outflow_0,2,3,Tstart10,Tend11
 sc_commodity_outflow_0,3,2,Tstart0,Tend1
 sc_commodity_outflow_0,3,2,Tstart2,Tend3
 sc_commodity_outflow_0,3,2,Tstart3,Tend4
 sc_commodity_outflow_0,3,2,Tstart4,Tend5
 sc_commodity_outflow_0,3,2,Tstart5,Tend6
 sc_commodity_outflow_0,3,2,Tstart6,Tend7
 sc_commodity_outflow_0,3,3,Tstart0,Tend2
 sc_commodity_outflow_0,3,3,Tstart2,Tend3
 sc_commodity_outflow_0,3,3,Tstart3,Tend4
 sc_commodity_outflow_0,3,3,Tstart4,Tend5
 sc_commodity_outflow_0,3,3,Tstart5,Tend6
 sc_commodity_outflow_0,3,3,Tstart6,Tend11
 sc_commodity_outflow_1,0,0,Tstart0,Tend4
 sc_commodity_outflow_1,0,0,Tstart4,Tend8
 sc_commodity_outflow_1,0,0,Tstart8,Tend9
 sc_commodity_outflow_1,0,0,Tstart9,Tend10
 sc_commodity_outflow_1,0,0,Tstart10,Tend11
 sc_commodity_outflow_1,0,1,Tstart4,Tend5
 sc_commodity_outflow_1,0,1,Tstart8,Tend9
 sc_commodity_outflow_1,0,1,Tstart9,Tend10
 sc_commodity_outflow_1,0,1,Tstart10,Tend11
 sc_commodity_outflow_1,1,0,Tstart9,Tend10
 sc_commodity_outflow_1,1,0,Tstart10,Tend11
 sc_commodity_outflow_1,1,1,Tstart0,Tend5
 sc_commodity_outflow_1,1,1,Tstart5,Tend9
 sc_commodity_outflow_1,1,1,Tstart9,Tend10
 sc_commodity_outflow_1,1,1,Tstart10,Tend11
 sc_commodity_outflow_1,1,2,Tstart0,Tend3
 sc_commodity_outflow_1,1,2,Tstart5,Tend8
 sc_commodity_outflow_1,2,1,Tstart2,Tend5
 sc_commodity_outflow_1,2,1,Tstart6,Tend9
 sc_commodity_outflow_1,2,1,Tstart7,Tend10
 sc_commodity_outflow_1,2,1,Tstart8,Tend11
 sc_commodity_outflow_1,2,2,Tstart0,Tend1
 sc_commodity_outflow_1,2,2,Tstart1,Tend2
 sc_commodity_outflow_1,2,2,Tstart2,Tend3
 sc_commodity_outflow_1,2,2,Tstart3,Tend4
 sc_commodity_outflow_1,2,2,Tstart4,Tend5
 sc_commodity_outflow_1,2,2,Tstart5,Tend6
 sc_commodity_outflow_1,2,2,Tstart6,Tend7
 sc_commodity_outflow_1,2,2,Tstart7,Tend8
 sc_commodity_outflow_1,2,2,Tstart8,Tend9
 sc_commodity_outflow_1,2,2,Tstart9,Tend10
 sc_commodity_outflow_1,2,2,Tstart10,Tend11
 sc_commodity_outflow_1,2,3,Tstart1,Tend2
 sc_commodity_outflow_1,2,3,Tstart2,Tend3
 sc_commodity_outflow_1,2,3,Tstart3,Tend4
 sc_commodity_outflow_1,2,3,Tstart4,Tend5
 sc_commodity_outflow_1,2,3,Tstart5,Tend6
 sc_commodity_outflow_1,2,3,Tstart10,Tend11
 sc_commodity_outflow_1,3,2,Tstart0,Tend1
 sc_commodity_outflow_1,3,2,Tstart2,Tend3
 sc_commodity_outflow_1,3,2,Tstart3,Tend4
 sc_commodity_outflow_1,3,2,Tstart4,Tend5
 sc_commodity_outflow_1,3,2,Tstart5,Tend6
 sc_commodity_outflow_1,3,2,Tstart6,Tend7
 sc_commodity_outflow_1,3,3,Tstart0,Tend2
 sc_commodity_outflow_1,3,3,Tstart2,Tend3
 sc_commodity_outflow_1,3,3,Tstart3,Tend4
 sc_commodity_outflow_1,3,3,Tstart4,Tend5
 sc_commodity_outflow_1,3,3,Tstart5,Tend6
 sc_commodity_outflow_1,3,3,Tstart6,Tend11
 sc_commodity_inflow_0,0,0,Tstart0,Tend4
 sc_commodity_inflow_0,0,0,Tstart4,Tend8
 sc_commodity_inflow_0,0,0,Tstart8,Tend9
 sc_commodity_inflow_0,0,0,Tstart9,Tend10
 sc_commodity_inflow_0,0,0,Tstart10,Tend11
 sc_commodity_inflow_0,0,1,Tstart4,Tend5
 sc_commodity_inflow_0,0,1,Tstart8,Tend9
 sc_commodity_inflow_0,0,1,Tstart9,Tend10
 sc_commodity_inflow_0,0,1,Tstart10,Tend11
 sc_commodity_inflow_0,1,0,Tstart9,Tend10
 sc_commodity_inflow_0,1,0,Tstart10,Tend11
 sc_commodity_inflow_0,1,1,Tstart0,Tend5
 sc_commodity_inflow_0,1,1,Tstart5,Tend9
 sc_commodity_inflow_0,1,1,Tstart9,Tend10
 sc_commodity_inflow_0,1,1,Tstart10,Tend11
 sc_commodity_inflow_0,1,2,Tstart0,Tend3
 sc_commodity_inflow_0,1,2,Tstart5,Tend8
 sc_commodity_inflow_0,2,1,Tstart2,Tend5
 sc_commodity_inflow_0,2,1,Tstart6,Tend9
 sc_commodity_inflow_0,2,1,Tstart7,Tend10
 sc_commodity_inflow_0,2,1,Tstart8,Tend11
 sc_commodity_inflow_0,2,2,Tstart0,Tend1
 sc_commodity_inflow_0,2,2,Tstart1,Tend2
 sc_commodity_inflow_0,2,2,Tstart2,Tend3
 sc_commodity_inflow_0,2,2,Tstart3,Tend4
 sc_commodity_inflow_0,2,2,Tstart4,Tend5
 sc_commodity_inflow_0,2,2,Tstart5,Tend6
 sc_commodity_inflow_0,2,2,Tstart6,Tend7
 sc_commodity_inflow_0,2,2,Tstart7,Tend8
 sc_commodity_inflow_0,2,2,Tstart8,Tend9
 sc_commodity_inflow_0,2,2,Tstart9,Tend10
 sc_commodity_inflow_0,2,2,Tstart10,Tend11
 sc_commodity_inflow_0,2,3,Tstart1,Tend2
 sc_commodity_inflow_0,2,3,Tstart2,Tend3
 sc_commodity_inflow_0,2,3,Tstart3,Tend4
 sc_commodity_inflow_0,2,3,Tstart4,Tend5
 sc_commodity_inflow_0,2,3,Tstart5,Tend6
 sc_commodity_inflow_0,2,3,Tstart10,Tend11
 sc_commodity_inflow_0,3,2,Tstart0,Tend1
 sc_commodity_inflow_0,3,2,Tstart2,Tend3
 sc_commodity_inflow_0,3,2,Tstart3,Tend4
 sc_commodity_inflow_0,3,2,Tstart4,Tend5
 sc_commodity_inflow_0,3,2,Tstart5,Tend6
 sc_commodity_inflow_0,3,2,Tstart6,Tend7
 sc_commodity_inflow_0,3,3,Tstart0,Tend2
 sc_commodity_inflow_0,3,3,Tstart2,Tend3
 sc_commodity_inflow_0,3,3,Tstart3,Tend4
 sc_commodity_inflow_0,3,3,Tstart4,Tend5
 sc_commodity_inflow_0,3,3,Tstart5,Tend6
 sc_commodity_inflow_0,3,3,Tstart6,Tend11
 sc_commodity_inflow_1,0,0,Tstart0,Tend4
 sc_commodity_inflow_1,0,0,Tstart4,Tend8
 sc_commodity_inflow_1,0,0,Tstart8,Tend9
 sc_commodity_inflow_1,0,0,Tstart9,Tend10
 sc_commodity_inflow_1,0,0,Tstart10,Tend11
 sc_commodity_inflow_1,0,1,Tstart4,Tend5
 sc_commodity_inflow_1,0,1,Tstart8,Tend9
 sc_commodity_inflow_1,0,1,Tstart9,Tend10
 sc_commodity_inflow_1,0,1,Tstart10,Tend11
 sc_commodity_inflow_1,1,0,Tstart9,Tend10
 sc_commodity_inflow_1,1,0,Tstart10,Tend11
 sc_commodity_inflow_1,1,1,Tstart0,Tend5
 sc_commodity_inflow_1,1,1,Tstart5,Tend9
 sc_commodity_inflow_1,1,1,Tstart9,Tend10
 sc_commodity_inflow_1,1,1,Tstart10,Tend11
 sc_commodity_inflow_1,1,2,Tstart0,Tend3
 sc_commodity_inflow_1,1,2,Tstart5,Tend8
 sc_commodity_inflow_1,2,1,Tstart2,Tend5
 sc_commodity_inflow_1,2,1,Tstart6,Tend9
 sc_commodity_inflow_1,2,1,Tstart7,Tend10
 sc_commodity_inflow_1,2,1,Tstart8,Tend11
 sc_commodity_inflow_1,2,2,Tstart0,Tend1
 sc_commodity_inflow_1,2,2,Tstart1,Tend2
 sc_commodity_inflow_1,2,2,Tstart2,Tend3
 sc_commodity_inflow_1,2,2,Tstart3,Tend4
 sc_commodity_inflow_1,2,2,Tstart4,Tend5
 sc_commodity_inflow_1,2,2,Tstart5,Tend6
 sc_commodity_inflow_1,2,2,Tstart6,Tend7
 sc_commodity_inflow_1,2,2,Tstart7,Tend8
 sc_commodity_inflow_1,2,2,Tstart8,Tend9
 sc_commodity_inflow_1,2,2,Tstart9,Tend10
 sc_commodity_inflow_1,2,2,Tstart10,Tend11
 sc_commodity_inflow_1,2,3,Tstart1,Tend2
 sc_commodity_inflow_1,2,3,Tstart2,Tend3
 sc_commodity_inflow_1,2,3,Tstart3,Tend4
 sc_commodity_inflow_1,2,3,Tstart4,Tend5
 sc_commodity_inflow_1,2,3,Tstart5,Tend6
 sc_commodity_inflow_1,2,3,Tstart10,Tend11
 sc_commodity_inflow_1,3,2,Tstart0,Tend1
 sc_commodity_inflow_1,3,2,Tstart2,Tend3
 sc_commodity_inflow_1,3,2,Tstart3,Tend4
 sc_commodity_inflow_1,3,2,Tstart4,Tend5
 sc_commodity_inflow_1,3,2,Tstart5,Tend6
 sc_commodity_inflow_1,3,2,Tstart6,Tend7
 sc_commodity_inflow_1,3,3,Tstart0,Tend2
 sc_commodity_inflow_1,3,3,Tstart2,Tend3
 sc_commodity_inflow_1,3,3,Tstart3,Tend4
 sc_commodity_inflow_1,3,3,Tstart4,Tend5
 sc_commodity_inflow_1,3,3,Tstart5,Tend6
 sc_commodity_inflow_1,3,3,Tstart6,Tend11
 SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
 SCPayload_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1
 SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
 SCPayload_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1
 SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
 SCPayload_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1
 SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
 SCPayload_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1
 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
 SCPayload_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
 SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
 SCPayload_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1
 SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
 SCPayload_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
 SCPayload_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
 SCPayload_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
 SCPayload_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
 SCPayload_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
 SCPayload_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart3,Tend4,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart5,Tend6,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_0,2,2,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
 SCPayload_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
 SCPayload_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
 SCPayload_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_0,2,3,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity0
 SCPayload_commodity_outflow_0,2,3,Tstart5,Tend6,Commodity1
 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_0,2,3,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
 SCPayload_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
 SCPayload_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity0
 SCPayload_commodity_outflow_0,3,2,Tstart3,Tend4,Commodity1
 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_0,3,2,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
 SCPayload_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
 SCPayload_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
 SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
 SCPayload_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1
 SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
 SCPayload_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1
 SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
 SCPayload_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1
 SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
 SCPayload_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1
 SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
 SCPayload_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
 SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
 SCPayload_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1
 SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
 SCPayload_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1
 SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
 SCPayload_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1
 SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
 SCPayload_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1
 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
 SCPayload_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
 SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
 SCPayload_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1
 SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
 SCPayload_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
 SCPayload_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
 SCPayload_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
 SCPayload_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
 SCPayload_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
 SCPayload_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart3,Tend4,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart5,Tend6,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart9,Tend10,Commodity1
 SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_1,2,2,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
 SCPayload_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
 SCPayload_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
 SCPayload_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_1,2,3,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity0
 SCPayload_commodity_outflow_1,2,3,Tstart5,Tend6,Commodity1
 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity0
 SCPayload_commodity_outflow_1,2,3,Tstart10,Tend11,Commodity1
 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
 SCPayload_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
 SCPayload_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity0
 SCPayload_commodity_outflow_1,3,2,Tstart3,Tend4,Commodity1
 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_1,3,2,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
 SCPayload_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
 SCPayload_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
 SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
 SCPayload_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1
 SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
 SCPayload_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1
 SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
 SCPayload_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1
 SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
 SCPayload_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1
 SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
 SCPayload_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1
 SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
 SCPayload_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
 SCPayload_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity0
 SCPayload_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity1
 SCPayload_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity0
 SCPayload_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity1
 SCPayload_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity0
 SCPayload_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity1
 SCPayload_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity0
 SCPayload_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity1
 SCPayload_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity0
 SCPayload_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity1
 SCPayload_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity0
 SCPayload_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity1
 SCPayload_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity0
 SCPayload_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity1
 SCPayload_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity0
 SCPayload_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity1
 SCPayload_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity0
 SCPayload_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity1
 SCPayload_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity0
 SCPayload_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity1
 SCPayload_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity0
 SCPayload_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity1
 SCPayload_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity0
 SCPayload_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart3,Tend4,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart5,Tend6,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_0,2,2,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity0
 SCPayload_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity1
 SCPayload_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0
 SCPayload_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity1
 SCPayload_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0
 SCPayload_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity1
 SCPayload_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_0,2,3,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity0
 SCPayload_commodity_inflow_0,2,3,Tstart5,Tend6,Commodity1
 SCPayload_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_0,2,3,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity0
 SCPayload_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity1
 SCPayload_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0
 SCPayload_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity1
 SCPayload_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity0
 SCPayload_commodity_inflow_0,3,2,Tstart3,Tend4,Commodity1
 SCPayload_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_0,3,2,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity0
 SCPayload_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity1
 SCPayload_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity0
 SCPayload_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity1
 SCPayload_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity0
 SCPayload_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity1
 SCPayload_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity0
 SCPayload_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity1
 SCPayload_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity0
 SCPayload_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity1
 SCPayload_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity0
 SCPayload_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity1
 SCPayload_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity0
 SCPayload_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity1
 SCPayload_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity0
 SCPayload_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity1
 SCPayload_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity0
 SCPayload_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity1
 SCPayload_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity0
 SCPayload_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity1
 SCPayload_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity0
 SCPayload_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity1
 SCPayload_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity0
 SCPayload_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity1
 SCPayload_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity0
 SCPayload_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity1
 SCPayload_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity0
 SCPayload_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity1
 SCPayload_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity0
 SCPayload_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity1
 SCPayload_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity0
 SCPayload_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity1
 SCPayload_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity0
 SCPayload_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity1
 SCPayload_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity0
 SCPayload_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity1
 SCPayload_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity0
 SCPayload_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart3,Tend4,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart5,Tend6,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart9,Tend10,Commodity1
 SCPayload_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_1,2,2,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity0
 SCPayload_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity1
 SCPayload_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0
 SCPayload_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity1
 SCPayload_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0
 SCPayload_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity1
 SCPayload_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_1,2,3,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity0
 SCPayload_commodity_inflow_1,2,3,Tstart5,Tend6,Commodity1
 SCPayload_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity0
 SCPayload_commodity_inflow_1,2,3,Tstart10,Tend11,Commodity1
 SCPayload_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity0
 SCPayload_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity1
 SCPayload_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0
 SCPayload_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity1
 SCPayload_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity0
 SCPayload_commodity_inflow_1,3,2,Tstart3,Tend4,Commodity1
 SCPayload_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_1,3,2,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity0
 SCPayload_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity1
 SCPayload_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity0
 SCPayload_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity1
 SCPayload_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity0
 SCPayload_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity1
 SCPayload_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity0
 SCPayload_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity1
 SCPayload_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity0
 SCPayload_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity1
 SCPayload_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity0
 SCPayload_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity1
 SCPayload_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity0
 SCPayload_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity1
 SCPayload_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity0
 SCPayload_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity1
End
