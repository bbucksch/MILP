\ Model Model_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xae9dd5a2d3aee560
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
   + 30000 sc_commodity_outflow_1,1,1,Tstart0,Tend5
   + 30000 sc_commodity_outflow_1,1,2,Tstart0,Tend3
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
   sc_commodity_outflow_0,0,0,Tstart0,Tend4 <= 0
 SC_mass_balance_x_node0_time0_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart0,Tend4 <= 0
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
   <= 9.9999999999e+10
 SC_mass_balance_x_node1_time0_vehicle0:
   sc_commodity_outflow_0,1,1,Tstart0,Tend5
   + sc_commodity_outflow_0,1,2,Tstart0,Tend3 <= 1
 SC_mass_balance_x_node1_time0_vehicle1:
   sc_commodity_outflow_1,1,1,Tstart0,Tend5
   + sc_commodity_outflow_1,1,2,Tstart0,Tend3 <= 1
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
   sc_commodity_outflow_0,2,2,Tstart0,Tend1 <= 0
 SC_mass_balance_x_node2_time0_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart0,Tend1 <= 0
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
   + sc_commodity_outflow_0,3,3,Tstart0,Tend2 <= 0
 SC_mass_balance_x_node3_time0_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart0,Tend1
   + sc_commodity_outflow_1,3,3,Tstart0,Tend2 <= 0
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
 SC_lossless_mass_balance_x_node2_time1_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart1,Tend2
   + sc_commodity_outflow_0,2,3,Tstart1,Tend2
   - sc_commodity_inflow_0,2,2,Tstart0,Tend1
   - sc_commodity_inflow_0,3,2,Tstart0,Tend1 = 0
 SC_lossless_mass_balance_x_node2_time1_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart1,Tend2
   + sc_commodity_outflow_1,2,3,Tstart1,Tend2
   - sc_commodity_inflow_1,2,2,Tstart0,Tend1
   - sc_commodity_inflow_1,3,2,Tstart0,Tend1 = 0
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
 SC_lossless_mass_balance_x_node2_time2_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart2,Tend5
   + sc_commodity_outflow_0,2,2,Tstart2,Tend3
   + sc_commodity_outflow_0,2,3,Tstart2,Tend3
   - sc_commodity_inflow_0,2,2,Tstart1,Tend2 = 0
 SC_lossless_mass_balance_x_node2_time2_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart2,Tend5
   + sc_commodity_outflow_1,2,2,Tstart2,Tend3
   + sc_commodity_outflow_1,2,3,Tstart2,Tend3
   - sc_commodity_inflow_1,2,2,Tstart1,Tend2 = 0
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
 SC_lossless_mass_balance_x_node3_time2_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart2,Tend3
   + sc_commodity_outflow_0,3,3,Tstart2,Tend3
   - sc_commodity_inflow_0,2,3,Tstart1,Tend2
   - sc_commodity_inflow_0,3,3,Tstart0,Tend2 = 0
 SC_lossless_mass_balance_x_node3_time2_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart2,Tend3
   + sc_commodity_outflow_1,3,3,Tstart2,Tend3
   - sc_commodity_inflow_1,2,3,Tstart1,Tend2
   - sc_commodity_inflow_1,3,3,Tstart0,Tend2 = 0
 mass_balance_x_node2_time3_comm0:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0 <= -1
 mass_balance_x_node2_time3_comm1:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity1 <= 0
 mass_balance_x_node2_time3_comm2:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity2 <= 0
 mass_balance_x_node2_time3_comm3:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity3
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity3
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity3 <= 0
 mass_balance_x_node2_time3_comm4:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity4
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity4
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time3_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart3,Tend6
   + sc_commodity_outflow_0,2,3,Tstart3,Tend4
   - sc_commodity_inflow_0,1,2,Tstart0,Tend3
   - sc_commodity_inflow_0,2,2,Tstart2,Tend3
   - sc_commodity_inflow_0,3,2,Tstart2,Tend3 = 0
 SC_lossless_mass_balance_x_node2_time3_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart3,Tend6
   + sc_commodity_outflow_1,2,3,Tstart3,Tend4
   - sc_commodity_inflow_1,1,2,Tstart0,Tend3
   - sc_commodity_inflow_1,2,2,Tstart2,Tend3
   - sc_commodity_inflow_1,3,2,Tstart2,Tend3 = 0
 mass_balance_x_node3_time3_comm0:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity0 <= 0
 mass_balance_x_node3_time3_comm1:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity1 <= 0
 mass_balance_x_node3_time3_comm2:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity2 <= 0
 mass_balance_x_node3_time3_comm3:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity3 <= 999999
 mass_balance_x_node3_time3_comm4:
   Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity4 <= 0
 SC_lossless_mass_balance_x_node3_time3_vehicle0:
   sc_commodity_outflow_0,3,3,Tstart3,Tend4
   - sc_commodity_inflow_0,2,3,Tstart2,Tend3
   - sc_commodity_inflow_0,3,3,Tstart2,Tend3 = 0
 SC_lossless_mass_balance_x_node3_time3_vehicle1:
   sc_commodity_outflow_1,3,3,Tstart3,Tend4
   - sc_commodity_inflow_1,2,3,Tstart2,Tend3
   - sc_commodity_inflow_1,3,3,Tstart2,Tend3 = 0
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
 SC_lossless_mass_balance_x_node0_time4_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart4,Tend8
   + sc_commodity_outflow_0,0,1,Tstart4,Tend5
   - sc_commodity_inflow_0,0,0,Tstart0,Tend4 = 0
 SC_lossless_mass_balance_x_node0_time4_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart4,Tend8
   + sc_commodity_outflow_1,0,1,Tstart4,Tend5
   - sc_commodity_inflow_1,0,0,Tstart0,Tend4 = 0
 mass_balance_x_node3_time4_comm0:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity0 <= -2
 mass_balance_x_node3_time4_comm1:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity1 <= 0
 mass_balance_x_node3_time4_comm2:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity2 <= -420
 mass_balance_x_node3_time4_comm3:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity3 <= 999999
 mass_balance_x_node3_time4_comm4:
   Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity4 <= 0
 SC_lossless_mass_balance_x_node3_time4_vehicle0:
   sc_commodity_outflow_0,3,3,Tstart4,Tend5
   - sc_commodity_inflow_0,2,3,Tstart3,Tend4
   - sc_commodity_inflow_0,3,3,Tstart3,Tend4 = 0
 SC_lossless_mass_balance_x_node3_time4_vehicle1:
   sc_commodity_outflow_1,3,3,Tstart4,Tend5
   - sc_commodity_inflow_1,2,3,Tstart3,Tend4
   - sc_commodity_inflow_1,3,3,Tstart3,Tend4 = 0
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
 SC_lossless_mass_balance_x_node1_time5_vehicle0:
   sc_commodity_outflow_0,1,1,Tstart5,Tend9
   + sc_commodity_outflow_0,1,2,Tstart5,Tend8
   - sc_commodity_inflow_0,0,1,Tstart4,Tend5
   - sc_commodity_inflow_0,1,1,Tstart0,Tend5
   - sc_commodity_inflow_0,2,1,Tstart2,Tend5 = 0
 SC_lossless_mass_balance_x_node1_time5_vehicle1:
   sc_commodity_outflow_1,1,1,Tstart5,Tend9
   + sc_commodity_outflow_1,1,2,Tstart5,Tend8
   - sc_commodity_inflow_1,0,1,Tstart4,Tend5
   - sc_commodity_inflow_1,1,1,Tstart0,Tend5
   - sc_commodity_inflow_1,2,1,Tstart2,Tend5 = 0
 mass_balance_x_node3_time5_comm0:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity0 <= 2
 mass_balance_x_node3_time5_comm1:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity1 <= 0
 mass_balance_x_node3_time5_comm2:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity2 <= 0
 mass_balance_x_node3_time5_comm3:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity3 <= 999999
 mass_balance_x_node3_time5_comm4:
   Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity4 <= 0
 SC_lossless_mass_balance_x_node3_time5_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart5,Tend6
   + sc_commodity_outflow_0,3,3,Tstart5,Tend6
   - sc_commodity_inflow_0,3,3,Tstart4,Tend5 = 0
 SC_lossless_mass_balance_x_node3_time5_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart5,Tend6
   + sc_commodity_outflow_1,3,3,Tstart5,Tend6
   - sc_commodity_inflow_1,3,3,Tstart4,Tend5 = 0
 mass_balance_x_node2_time6_comm0:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity0
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity0
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity0 <= 1
 mass_balance_x_node2_time6_comm1:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity1
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity1
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity1 <= 0
 mass_balance_x_node2_time6_comm2:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity2
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity2
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity2 <= 0
 mass_balance_x_node2_time6_comm3:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity3
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity3
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity3 <= 0
 mass_balance_x_node2_time6_comm4:
   Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time6_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart6,Tend9
   + sc_commodity_outflow_0,2,2,Tstart6,Tend7
   - sc_commodity_inflow_0,2,2,Tstart3,Tend6
   - sc_commodity_inflow_0,3,2,Tstart5,Tend6 = 0
 SC_lossless_mass_balance_x_node2_time6_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart6,Tend9
   + sc_commodity_outflow_1,2,2,Tstart6,Tend7
   - sc_commodity_inflow_1,2,2,Tstart3,Tend6
   - sc_commodity_inflow_1,3,2,Tstart5,Tend6 = 0
 mass_balance_x_node3_time6_comm0:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity0 <= 0
 mass_balance_x_node3_time6_comm1:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity1 <= 0
 mass_balance_x_node3_time6_comm2:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity2
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity2 <= 0
 mass_balance_x_node3_time6_comm3:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity3
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity3
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity3 <= 999999
 mass_balance_x_node3_time6_comm4:
   Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity4
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity4
   - Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity4 <= 0
 SC_lossless_mass_balance_x_node3_time6_vehicle0:
   sc_commodity_outflow_0,3,2,Tstart6,Tend7
   + sc_commodity_outflow_0,3,3,Tstart6,Tend11
   - sc_commodity_inflow_0,3,3,Tstart5,Tend6 = 0
 SC_lossless_mass_balance_x_node3_time6_vehicle1:
   sc_commodity_outflow_1,3,2,Tstart6,Tend7
   + sc_commodity_outflow_1,3,3,Tstart6,Tend11
   - sc_commodity_inflow_1,3,3,Tstart5,Tend6 = 0
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
 SC_lossless_mass_balance_x_node2_time7_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart7,Tend10
   + sc_commodity_outflow_0,2,2,Tstart7,Tend8
   - sc_commodity_inflow_0,2,2,Tstart6,Tend7
   - sc_commodity_inflow_0,3,2,Tstart6,Tend7 = 0
 SC_lossless_mass_balance_x_node2_time7_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart7,Tend10
   + sc_commodity_outflow_1,2,2,Tstart7,Tend8
   - sc_commodity_inflow_1,2,2,Tstart6,Tend7
   - sc_commodity_inflow_1,3,2,Tstart6,Tend7 = 0
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
 SC_lossless_mass_balance_x_node0_time8_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart8,Tend9
   + sc_commodity_outflow_0,0,1,Tstart8,Tend9
   - sc_commodity_inflow_0,0,0,Tstart4,Tend8 = 0
 SC_lossless_mass_balance_x_node0_time8_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart8,Tend9
   + sc_commodity_outflow_1,0,1,Tstart8,Tend9
   - sc_commodity_inflow_1,0,0,Tstart4,Tend8 = 0
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
 SC_lossless_mass_balance_x_node2_time8_vehicle0:
   sc_commodity_outflow_0,2,1,Tstart8,Tend11
   + sc_commodity_outflow_0,2,2,Tstart8,Tend9
   - sc_commodity_inflow_0,1,2,Tstart5,Tend8
   - sc_commodity_inflow_0,2,2,Tstart7,Tend8 = 0
 SC_lossless_mass_balance_x_node2_time8_vehicle1:
   sc_commodity_outflow_1,2,1,Tstart8,Tend11
   + sc_commodity_outflow_1,2,2,Tstart8,Tend9
   - sc_commodity_inflow_1,1,2,Tstart5,Tend8
   - sc_commodity_inflow_1,2,2,Tstart7,Tend8 = 0
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
 SC_lossless_mass_balance_x_node0_time9_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart9,Tend10
   + sc_commodity_outflow_0,0,1,Tstart9,Tend10
   - sc_commodity_inflow_0,0,0,Tstart8,Tend9 = 0
 SC_lossless_mass_balance_x_node0_time9_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart9,Tend10
   + sc_commodity_outflow_1,0,1,Tstart9,Tend10
   - sc_commodity_inflow_1,0,0,Tstart8,Tend9 = 0
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
 SC_lossless_mass_balance_x_node1_time9_vehicle0:
   sc_commodity_outflow_0,1,0,Tstart9,Tend10
   + sc_commodity_outflow_0,1,1,Tstart9,Tend10
   - sc_commodity_inflow_0,0,1,Tstart8,Tend9
   - sc_commodity_inflow_0,1,1,Tstart5,Tend9
   - sc_commodity_inflow_0,2,1,Tstart6,Tend9 = 0
 SC_lossless_mass_balance_x_node1_time9_vehicle1:
   sc_commodity_outflow_1,1,0,Tstart9,Tend10
   + sc_commodity_outflow_1,1,1,Tstart9,Tend10
   - sc_commodity_inflow_1,0,1,Tstart8,Tend9
   - sc_commodity_inflow_1,1,1,Tstart5,Tend9
   - sc_commodity_inflow_1,2,1,Tstart6,Tend9 = 0
 mass_balance_x_node2_time9_comm0:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0 <= 0
 mass_balance_x_node2_time9_comm1:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity1 <= 0
 mass_balance_x_node2_time9_comm2:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity2 <= 0
 mass_balance_x_node2_time9_comm3:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity3
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity3 <= 0
 mass_balance_x_node2_time9_comm4:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity4
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity4 <= 0
 SC_lossless_mass_balance_x_node2_time9_vehicle0:
   sc_commodity_outflow_0,2,2,Tstart9,Tend11
   - sc_commodity_inflow_0,2,2,Tstart8,Tend9 = 0
 SC_lossless_mass_balance_x_node2_time9_vehicle1:
   sc_commodity_outflow_1,2,2,Tstart9,Tend11
   - sc_commodity_inflow_1,2,2,Tstart8,Tend9 = 0
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
 SC_lossless_mass_balance_x_node0_time10_vehicle0:
   sc_commodity_outflow_0,0,0,Tstart10,Tend11
   + sc_commodity_outflow_0,0,1,Tstart10,Tend11
   - sc_commodity_inflow_0,0,0,Tstart9,Tend10
   - sc_commodity_inflow_0,1,0,Tstart9,Tend10 = 0
 SC_lossless_mass_balance_x_node0_time10_vehicle1:
   sc_commodity_outflow_1,0,0,Tstart10,Tend11
   + sc_commodity_outflow_1,0,1,Tstart10,Tend11
   - sc_commodity_inflow_1,0,0,Tstart9,Tend10
   - sc_commodity_inflow_1,1,0,Tstart9,Tend10 = 0
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
 SC_lossless_mass_balance_x_node1_time10_vehicle0:
   sc_commodity_outflow_0,1,0,Tstart10,Tend11
   + sc_commodity_outflow_0,1,1,Tstart10,Tend11
   - sc_commodity_inflow_0,0,1,Tstart9,Tend10
   - sc_commodity_inflow_0,1,1,Tstart9,Tend10
   - sc_commodity_inflow_0,2,1,Tstart7,Tend10 = 0
 SC_lossless_mass_balance_x_node1_time10_vehicle1:
   sc_commodity_outflow_1,1,0,Tstart10,Tend11
   + sc_commodity_outflow_1,1,1,Tstart10,Tend11
   - sc_commodity_inflow_1,0,1,Tstart9,Tend10
   - sc_commodity_inflow_1,1,1,Tstart9,Tend10
   - sc_commodity_inflow_1,2,1,Tstart7,Tend10 = 0
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
   - sc_commodity_inflow_0,1,0,Tstart10,Tend11 <= 0
 SC_mass_balance_x_node0_time11_vehicle1:
   - sc_commodity_inflow_1,0,0,Tstart10,Tend11
   - sc_commodity_inflow_1,1,0,Tstart10,Tend11 <= 0
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
   - sc_commodity_inflow_0,2,1,Tstart8,Tend11 <= 0
 SC_mass_balance_x_node1_time11_vehicle1:
   - sc_commodity_inflow_1,0,1,Tstart10,Tend11
   - sc_commodity_inflow_1,1,1,Tstart10,Tend11
   - sc_commodity_inflow_1,2,1,Tstart8,Tend11 <= 0
 mass_balance_x_node2_time11_comm0:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity0 <= 0
 mass_balance_x_node2_time11_comm1:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity1 <= 0
 mass_balance_x_node2_time11_comm2:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity2 <= 0
 mass_balance_x_node2_time11_comm3:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity3 <= 0
 mass_balance_x_node2_time11_comm4:
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity4 <= 0
 SC_mass_balance_x_node2_time11_vehicle0:
   - sc_commodity_inflow_0,2,2,Tstart9,Tend11 <= 0
 SC_mass_balance_x_node2_time11_vehicle1:
   - sc_commodity_inflow_1,2,2,Tstart9,Tend11 <= 0
 mass_balance_x_node3_time11_comm0:
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity0
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity0 <= 0
 mass_balance_x_node3_time11_comm1:
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity1
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity1 <= 0
 mass_balance_x_node3_time11_comm2:
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity2
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity2 <= 0
 mass_balance_x_node3_time11_comm3:
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity3
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity3 <= 999999
 mass_balance_x_node3_time11_comm4:
   - Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity4
   - Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity4 <= 0
 SC_mass_balance_x_node3_time11_vehicle0:
   - sc_commodity_inflow_0,3,3,Tstart6,Tend11 <= 0
 SC_mass_balance_x_node3_time11_vehicle1:
   - sc_commodity_inflow_1,3,3,Tstart6,Tend11 <= 0
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
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,Tstart0,Tend3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,Tstart0,Tend3
   - sc_commodity_inflow_0,1,2,Tstart0,Tend3 = 0
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
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,Tstart0,Tend3 = 0
 Arc_transformationConstraint_Start1_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,Tstart0,Tend3
   - sc_commodity_inflow_1,1,2,Tstart0,Tend3 = 0
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
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart0,Tend1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart0,Tend1
   - sc_commodity_inflow_0,3,2,Tstart0,Tend1 = 0
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
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart0,Tend1 = 0
 Arc_transformationConstraint_Start3_End2_Starttime0_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart0,Tend1
   - sc_commodity_inflow_1,3,2,Tstart0,Tend1 = 0
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
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,Tstart1,Tend2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart1,Tend2
   - sc_commodity_inflow_0,2,3,Tstart1,Tend2 = 0
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
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,Tstart1,Tend2 = 0
 Arc_transformationConstraint_Start2_End3_Starttime1_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart1,Tend2
   - sc_commodity_inflow_1,2,3,Tstart1,Tend2 = 0
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
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,Tstart2,Tend5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart2,Tend5
   - sc_commodity_inflow_0,2,1,Tstart2,Tend5 = 0
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
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,Tstart2,Tend5 = 0
 Arc_transformationConstraint_Start2_End1_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart2,Tend5
   - sc_commodity_inflow_1,2,1,Tstart2,Tend5 = 0
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
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart2,Tend3
   - sc_commodity_inflow_0,2,3,Tstart2,Tend3 = 0
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
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start2_End3_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart2,Tend3
   - sc_commodity_inflow_1,2,3,Tstart2,Tend3 = 0
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
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart2,Tend3
   - sc_commodity_inflow_0,3,2,Tstart2,Tend3 = 0
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
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart2,Tend3 = 0
 Arc_transformationConstraint_Start3_End2_Starttime2_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart2,Tend3
   - sc_commodity_inflow_1,3,2,Tstart2,Tend3 = 0
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
   - 61.45850215744046 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,2,3,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,3,Tstart3,Tend4
   - sc_commodity_inflow_0,2,3,Tstart3,Tend4 = 0
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
   - 31.70774780227571 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4
   - Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,2,3,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start2_End3_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,3,Tstart3,Tend4
   - sc_commodity_inflow_1,2,3,Tstart3,Tend4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart3,Tend6
   - sc_commodity_inflow_0,2,2,Tstart3,Tend6 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime3_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart3,Tend6
   - sc_commodity_inflow_1,2,2,Tstart3,Tend6 = 0
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
   - 2500 sc_commodity_outflow_0,0,1,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart4,Tend5
   - sc_commodity_inflow_0,0,1,Tstart4,Tend5 = 0
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
   - 30000 sc_commodity_outflow_1,0,1,Tstart4,Tend5 = 0
 Arc_transformationConstraint_Start0_End1_Starttime4_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart4,Tend5
   - sc_commodity_inflow_1,0,1,Tstart4,Tend5 = 0
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
   - 87.25239468194434 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity4
   - Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,1,2,Tstart5,Tend8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,1,2,Tstart5,Tend8
   - sc_commodity_inflow_0,1,2,Tstart5,Tend8 = 0
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
   - 56.1296152266594 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity4
   - Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,1,2,Tstart5,Tend8 = 0
 Arc_transformationConstraint_Start1_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,1,2,Tstart5,Tend8
   - sc_commodity_inflow_1,1,2,Tstart5,Tend8 = 0
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
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart5,Tend6
   - sc_commodity_inflow_0,3,2,Tstart5,Tend6 = 0
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
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart5,Tend6 = 0
 Arc_transformationConstraint_Start3_End2_Starttime5_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart5,Tend6
   - sc_commodity_inflow_1,3,2,Tstart5,Tend6 = 0
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
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,Tstart6,Tend9 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart6,Tend9
   - sc_commodity_inflow_0,2,1,Tstart6,Tend9 = 0
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
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,Tstart6,Tend9 = 0
 Arc_transformationConstraint_Start2_End1_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart6,Tend9
   - sc_commodity_inflow_1,2,1,Tstart6,Tend9 = 0
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
   - 61.45850215744046 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2
   - 0.6145850215744045 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3
   + 0.3854149784255955 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity4
   - 1536.462553936011 sc_commodity_outflow_0,3,2,Tstart6,Tend7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle0_Commodity5:
   sc_commodity_outflow_0,3,2,Tstart6,Tend7
   - sc_commodity_inflow_0,3,2,Tstart6,Tend7 = 0
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
   - 31.70774780227571 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2
   - 0.3170774780227571 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3
   + 0.6829225219772429 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4
   - Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity4
   - 9512.324340682713 sc_commodity_outflow_1,3,2,Tstart6,Tend7 = 0
 Arc_transformationConstraint_Start3_End2_Starttime6_Vehicle1_Commodity5:
   sc_commodity_outflow_1,3,2,Tstart6,Tend7
   - sc_commodity_inflow_1,3,2,Tstart6,Tend7 = 0
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
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,Tstart7,Tend10 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart7,Tend10
   - sc_commodity_inflow_0,2,1,Tstart7,Tend10 = 0
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
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,Tstart7,Tend10 = 0
 Arc_transformationConstraint_Start2_End1_Starttime7_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart7,Tend10
   - sc_commodity_inflow_1,2,1,Tstart7,Tend10 = 0
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
   - 2500 sc_commodity_outflow_0,0,1,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart8,Tend9
   - sc_commodity_inflow_0,0,1,Tstart8,Tend9 = 0
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
   - 30000 sc_commodity_outflow_1,0,1,Tstart8,Tend9 = 0
 Arc_transformationConstraint_Start0_End1_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart8,Tend9
   - sc_commodity_inflow_1,0,1,Tstart8,Tend9 = 0
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
   - 87.25239468194434 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity2
   - 0.8725239468194435 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity3
   + 0.1274760531805565 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity4
   - Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity4
   - 2181.309867048609 sc_commodity_outflow_0,2,1,Tstart8,Tend11 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,1,Tstart8,Tend11
   - sc_commodity_inflow_0,2,1,Tstart8,Tend11 = 0
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
   - 56.1296152266594 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity2
   - 0.561296152266594 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity3
   + 0.438703847733406 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity4
   - Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity4
   - 16838.88456799782 sc_commodity_outflow_1,2,1,Tstart8,Tend11 = 0
 Arc_transformationConstraint_Start2_End1_Starttime8_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,1,Tstart8,Tend11
   - sc_commodity_inflow_1,2,1,Tstart8,Tend11 = 0
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
   - 2500 sc_commodity_outflow_0,0,1,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart9,Tend10
   - sc_commodity_inflow_0,0,1,Tstart9,Tend10 = 0
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
   - 30000 sc_commodity_outflow_1,0,1,Tstart9,Tend10 = 0
 Arc_transformationConstraint_Start0_End1_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart9,Tend10
   - sc_commodity_inflow_1,0,1,Tstart9,Tend10 = 0
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
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity0:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity0
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity1:
   - 7.1 Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity1
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity2:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity2
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity3:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity3
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity4:
   Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity4
   - Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle0_Commodity5:
   sc_commodity_outflow_0,2,2,Tstart9,Tend11
   - sc_commodity_inflow_0,2,2,Tstart9,Tend11 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity0:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity0
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity0 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity1:
   - 7.1 Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity1
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity1 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity2:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity2
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity2 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity3:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity3
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity3 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity4:
   Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity4
   - Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity4 = 0
 Arc_transformationConstraint_Start2_End2_Starttime9_Vehicle1_Commodity5:
   sc_commodity_outflow_1,2,2,Tstart9,Tend11
   - sc_commodity_inflow_1,2,2,Tstart9,Tend11 = 0
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
   - 2500 sc_commodity_outflow_0,0,1,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle0_Commodity5:
   sc_commodity_outflow_0,0,1,Tstart10,Tend11
   - sc_commodity_inflow_0,0,1,Tstart10,Tend11 = 0
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
   - 30000 sc_commodity_outflow_1,0,1,Tstart10,Tend11 = 0
 Arc_transformationConstraint_Start0_End1_Starttime10_Vehicle1_Commodity5:
   sc_commodity_outflow_1,0,1,Tstart10,Tend11
   - sc_commodity_inflow_1,0,1,Tstart10,Tend11 = 0
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
 R693: 100 Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart0,Tend4 <= 0
 R694: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart0,Tend4 <= 0
 R695: 100 Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3
   - 1000 sc_commodity_outflow_0,1,2,Tstart0,Tend3 <= 0
 R696: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4
   - 65000 sc_commodity_outflow_0,1,2,Tstart0,Tend3 <= 0
 R697: 100 Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity3
   - 1000 sc_commodity_outflow_0,1,1,Tstart0,Tend5 <= 0
 R698: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity4
   - 65000 sc_commodity_outflow_0,1,1,Tstart0,Tend5 <= 0
 R699: 100 Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart0,Tend1 <= 0
 R700: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart0,Tend1 <= 0
 R701: 100 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart0,Tend1 <= 0
 R702: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart0,Tend1 <= 0
 R703: 100 Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart0,Tend2 <= 0
 R704: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart0,Tend2 <= 0
 R705: 100 Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart1,Tend2 <= 0
 R706: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart1,Tend2 <= 0
 R707: 100 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity3
   - 1000 sc_commodity_outflow_0,2,3,Tstart1,Tend2 <= 0
 R708: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity4
   - 65000 sc_commodity_outflow_0,2,3,Tstart1,Tend2 <= 0
 R709: 100 Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity3
   - 1000 sc_commodity_outflow_0,2,1,Tstart2,Tend5 <= 0
 R710: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity4
   - 65000 sc_commodity_outflow_0,2,1,Tstart2,Tend5 <= 0
 R711: 100 Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart2,Tend3 <= 0
 R712: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart2,Tend3 <= 0
 R713: 100 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity3
   - 1000 sc_commodity_outflow_0,2,3,Tstart2,Tend3 <= 0
 R714: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity4
   - 65000 sc_commodity_outflow_0,2,3,Tstart2,Tend3 <= 0
 R715: 100 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart2,Tend3 <= 0
 R716: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart2,Tend3 <= 0
 R717: 100 Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart2,Tend3 <= 0
 R718: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart2,Tend3 <= 0
 R719: 100 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3
   - 1000 sc_commodity_outflow_0,2,3,Tstart3,Tend4 <= 0
 R720: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4
   - 65000 sc_commodity_outflow_0,2,3,Tstart3,Tend4 <= 0
 R721: 100 Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart3,Tend6 <= 0
 R722: Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart3,Tend6 <= 0
 R723: 100 Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart3,Tend4 <= 0
 R724: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart3,Tend4 <= 0
 R725: 100 Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity3
   - 1000 sc_commodity_outflow_0,0,1,Tstart4,Tend5 <= 0
 R726: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity4
   - 65000 sc_commodity_outflow_0,0,1,Tstart4,Tend5 <= 0
 R727: 100 Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart4,Tend8 <= 0
 R728: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart4,Tend8 <= 0
 R729: 100 Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart4,Tend5 <= 0
 R730: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart4,Tend5 <= 0
 R731: 100 Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity2
   + Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity3
   - 1000 sc_commodity_outflow_0,1,2,Tstart5,Tend8 <= 0
 R732: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity4
   - 65000 sc_commodity_outflow_0,1,2,Tstart5,Tend8 <= 0
 R733: 100 Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity3
   - 1000 sc_commodity_outflow_0,1,1,Tstart5,Tend9 <= 0
 R734: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity4
   - 65000 sc_commodity_outflow_0,1,1,Tstart5,Tend9 <= 0
 R735: 100 Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart5,Tend6 <= 0
 R736: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart5,Tend6 <= 0
 R737: 100 Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart5,Tend6 <= 0
 R738: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart5,Tend6 <= 0
 R739: 100 Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3
   - 1000 sc_commodity_outflow_0,2,1,Tstart6,Tend9 <= 0
 R740: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4
   - 65000 sc_commodity_outflow_0,2,1,Tstart6,Tend9 <= 0
 R741: 100 Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart6,Tend7 <= 0
 R742: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart6,Tend7 <= 0
 R743: 100 Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3
   - 1000 sc_commodity_outflow_0,3,2,Tstart6,Tend7 <= 0
 R744: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4
   - 65000 sc_commodity_outflow_0,3,2,Tstart6,Tend7 <= 0
 R745: 100 Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity2
   + Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity3
   - 1000 sc_commodity_outflow_0,3,3,Tstart6,Tend11 <= 0
 R746: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity4
   - 65000 sc_commodity_outflow_0,3,3,Tstart6,Tend11 <= 0
 R747: 100 Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity3
   - 1000 sc_commodity_outflow_0,2,1,Tstart7,Tend10 <= 0
 R748: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity4
   - 65000 sc_commodity_outflow_0,2,1,Tstart7,Tend10 <= 0
 R749: 100 Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart7,Tend8 <= 0
 R750: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart7,Tend8 <= 0
 R751: 100 Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart8,Tend9 <= 0
 R752: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart8,Tend9 <= 0
 R753: 100 Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity3
   - 1000 sc_commodity_outflow_0,0,1,Tstart8,Tend9 <= 0
 R754: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity4
   - 65000 sc_commodity_outflow_0,0,1,Tstart8,Tend9 <= 0
 R755: 100 Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity3
   - 1000 sc_commodity_outflow_0,2,1,Tstart8,Tend11 <= 0
 R756: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity4
   - 65000 sc_commodity_outflow_0,2,1,Tstart8,Tend11 <= 0
 R757: 100 Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart8,Tend9 <= 0
 R758: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart8,Tend9 <= 0
 R759: 100 Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart9,Tend10 <= 0
 R760: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart9,Tend10 <= 0
 R761: 100 Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity3
   - 1000 sc_commodity_outflow_0,0,1,Tstart9,Tend10 <= 0
 R762: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity4
   - 65000 sc_commodity_outflow_0,0,1,Tstart9,Tend10 <= 0
 R763: 100 Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity3
   - 1000 sc_commodity_outflow_0,1,0,Tstart9,Tend10 <= 0
 R764: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity4
   - 65000 sc_commodity_outflow_0,1,0,Tstart9,Tend10 <= 0
 R765: 100 Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity3
   - 1000 sc_commodity_outflow_0,1,1,Tstart9,Tend10 <= 0
 R766: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity4
   - 65000 sc_commodity_outflow_0,1,1,Tstart9,Tend10 <= 0
 R767: 100 Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity0
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity1
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity2
   + Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity3
   - 1000 sc_commodity_outflow_0,2,2,Tstart9,Tend11 <= 0
 R768: Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity4
   - 65000 sc_commodity_outflow_0,2,2,Tstart9,Tend11 <= 0
 R769: 100 Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity3
   - 1000 sc_commodity_outflow_0,0,0,Tstart10,Tend11 <= 0
 R770: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity4
   - 65000 sc_commodity_outflow_0,0,0,Tstart10,Tend11 <= 0
 R771: 100 Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity3
   - 1000 sc_commodity_outflow_0,0,1,Tstart10,Tend11 <= 0
 R772: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity4
   - 65000 sc_commodity_outflow_0,0,1,Tstart10,Tend11 <= 0
 R773: 100 Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity3
   - 1000 sc_commodity_outflow_0,1,0,Tstart10,Tend11 <= 0
 R774: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity4
   - 65000 sc_commodity_outflow_0,1,0,Tstart10,Tend11 <= 0
 R775: 100 Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity3
   - 1000 sc_commodity_outflow_0,1,1,Tstart10,Tend11 <= 0
 R776: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity4
   - 65000 sc_commodity_outflow_0,1,1,Tstart10,Tend11 <= 0
 R777: 100 Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart0,Tend4 <= 0
 R778: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart0,Tend4 <= 0
 R779: 100 Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,1,2,Tstart0,Tend3 <= 0
 R780: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,2,Tstart0,Tend3 <= 0
 R781: 100 Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart0,Tend5 <= 0
 R782: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,1,Tstart0,Tend5 <= 0
 R783: 100 Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart0,Tend1 <= 0
 R784: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart0,Tend1 <= 0
 R785: 100 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart0,Tend1 <= 0
 R786: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart0,Tend1 <= 0
 R787: 100 Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart0,Tend2 <= 0
 R788: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart0,Tend2 <= 0
 R789: 100 Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart1,Tend2 <= 0
 R790: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart1,Tend2 <= 0
 R791: 100 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart1,Tend2 <= 0
 R792: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,3,Tstart1,Tend2 <= 0
 R793: 100 Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart2,Tend5 <= 0
 R794: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,1,Tstart2,Tend5 <= 0
 R795: 100 Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart2,Tend3 <= 0
 R796: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart2,Tend3 <= 0
 R797: 100 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart2,Tend3 <= 0
 R798: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,3,Tstart2,Tend3 <= 0
 R799: 100 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart2,Tend3 <= 0
 R800: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart2,Tend3 <= 0
 R801: 100 Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart2,Tend3 <= 0
 R802: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart2,Tend3 <= 0
 R803: 100 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3
   - 75 sc_commodity_outflow_1,2,3,Tstart3,Tend4 <= 0
 R804: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,3,Tstart3,Tend4 <= 0
 R805: 100 Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart3,Tend6 <= 0
 R806: Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart3,Tend6 <= 0
 R807: 100 Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart3,Tend4 <= 0
 R808: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart3,Tend4 <= 0
 R809: 100 Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart4,Tend5 <= 0
 R810: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,1,Tstart4,Tend5 <= 0
 R811: 100 Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart4,Tend8 <= 0
 R812: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart4,Tend8 <= 0
 R813: 100 Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart4,Tend5 <= 0
 R814: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart4,Tend5 <= 0
 R815: 100 Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity2
   + Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity3
   - 75 sc_commodity_outflow_1,1,2,Tstart5,Tend8 <= 0
 R816: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,2,Tstart5,Tend8 <= 0
 R817: 100 Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart5,Tend9 <= 0
 R818: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,1,Tstart5,Tend9 <= 0
 R819: 100 Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart5,Tend6 <= 0
 R820: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart5,Tend6 <= 0
 R821: 100 Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart5,Tend6 <= 0
 R822: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart5,Tend6 <= 0
 R823: 100 Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart6,Tend9 <= 0
 R824: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,1,Tstart6,Tend9 <= 0
 R825: 100 Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart6,Tend7 <= 0
 R826: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart6,Tend7 <= 0
 R827: 100 Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2
   + Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3
   - 75 sc_commodity_outflow_1,3,2,Tstart6,Tend7 <= 0
 R828: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,2,Tstart6,Tend7 <= 0
 R829: 100 Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity2
   + Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,3,3,Tstart6,Tend11 <= 0
 R830: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,3,3,Tstart6,Tend11 <= 0
 R831: 100 Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart7,Tend10 <= 0
 R832: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,1,Tstart7,Tend10 <= 0
 R833: 100 Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart7,Tend8 <= 0
 R834: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart7,Tend8 <= 0
 R835: 100 Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart8,Tend9 <= 0
 R836: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart8,Tend9 <= 0
 R837: 100 Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart8,Tend9 <= 0
 R838: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,1,Tstart8,Tend9 <= 0
 R839: 100 Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,2,1,Tstart8,Tend11 <= 0
 R840: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,1,Tstart8,Tend11 <= 0
 R841: 100 Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart8,Tend9 <= 0
 R842: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart8,Tend9 <= 0
 R843: 100 Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart9,Tend10 <= 0
 R844: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart9,Tend10 <= 0
 R845: 100 Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart9,Tend10 <= 0
 R846: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,1,Tstart9,Tend10 <= 0
 R847: 100 Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,1,0,Tstart9,Tend10 <= 0
 R848: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,0,Tstart9,Tend10 <= 0
 R849: 100 Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart9,Tend10 <= 0
 R850: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,1,Tstart9,Tend10 <= 0
 R851: 100 Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity0
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity1
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity2
   + Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,2,2,Tstart9,Tend11 <= 0
 R852: Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,2,2,Tstart9,Tend11 <= 0
 R853: 100 Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,0,0,Tstart10,Tend11 <= 0
 R854: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,0,Tstart10,Tend11 <= 0
 R855: 100 Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,0,1,Tstart10,Tend11 <= 0
 R856: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,0,1,Tstart10,Tend11 <= 0
 R857: 100 Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,1,0,Tstart10,Tend11 <= 0
 R858: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,0,Tstart10,Tend11 <= 0
 R859: 100 Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity2
   + Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity3
   - 75 sc_commodity_outflow_1,1,1,Tstart10,Tend11 <= 0
 R860: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity4
   - 1.7e+06 sc_commodity_outflow_1,1,1,Tstart10,Tend11 <= 0
 R861: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity0 >= 0
 R862: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity1 >= 0
 R863: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity2 >= 0
 R864: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity3 >= 0
 R865: Classic_commodity_outflow_0,0,0,Tstart0,Tend4,Commodity4 >= 0
 R866: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity0 >= 0
 R867: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity1 >= 0
 R868: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity2 >= 0
 R869: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity3 >= 0
 R870: Classic_commodity_inflow_0,0,0,Tstart0,Tend4,Commodity4 >= 0
 R871: sc_commodity_outflow_0,0,0,Tstart0,Tend4 >= 0
 R872: sc_commodity_inflow_0,0,0,Tstart0,Tend4 >= 0
 R873: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity0 >= 0
 R874: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity1 >= 0
 R875: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity2 >= 0
 R876: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity3 >= 0
 R877: Classic_commodity_outflow_0,0,0,Tstart4,Tend8,Commodity4 >= 0
 R878: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity0 >= 0
 R879: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity1 >= 0
 R880: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity2 >= 0
 R881: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity3 >= 0
 R882: Classic_commodity_inflow_0,0,0,Tstart4,Tend8,Commodity4 >= 0
 R883: sc_commodity_outflow_0,0,0,Tstart4,Tend8 >= 0
 R884: sc_commodity_inflow_0,0,0,Tstart4,Tend8 >= 0
 R885: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity0 >= 0
 R886: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity1 >= 0
 R887: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity2 >= 0
 R888: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity3 >= 0
 R889: Classic_commodity_outflow_0,0,0,Tstart8,Tend9,Commodity4 >= 0
 R890: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity0 >= 0
 R891: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity1 >= 0
 R892: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity2 >= 0
 R893: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity3 >= 0
 R894: Classic_commodity_inflow_0,0,0,Tstart8,Tend9,Commodity4 >= 0
 R895: sc_commodity_outflow_0,0,0,Tstart8,Tend9 >= 0
 R896: sc_commodity_inflow_0,0,0,Tstart8,Tend9 >= 0
 R897: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity0 >= 0
 R898: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity1 >= 0
 R899: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity2 >= 0
 R900: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity3 >= 0
 R901: Classic_commodity_outflow_0,0,0,Tstart9,Tend10,Commodity4 >= 0
 R902: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity0 >= 0
 R903: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity1 >= 0
 R904: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity2 >= 0
 R905: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity3 >= 0
 R906: Classic_commodity_inflow_0,0,0,Tstart9,Tend10,Commodity4 >= 0
 R907: sc_commodity_outflow_0,0,0,Tstart9,Tend10 >= 0
 R908: sc_commodity_inflow_0,0,0,Tstart9,Tend10 >= 0
 R909: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity0 >= 0
 R910: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity1 >= 0
 R911: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity2 >= 0
 R912: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity3 >= 0
 R913: Classic_commodity_outflow_0,0,0,Tstart10,Tend11,Commodity4 >= 0
 R914: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity0 >= 0
 R915: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity1 >= 0
 R916: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity2 >= 0
 R917: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity3 >= 0
 R918: Classic_commodity_inflow_0,0,0,Tstart10,Tend11,Commodity4 >= 0
 R919: sc_commodity_outflow_0,0,0,Tstart10,Tend11 >= 0
 R920: sc_commodity_inflow_0,0,0,Tstart10,Tend11 >= 0
 R921: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity0 >= 0
 R922: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity1 >= 0
 R923: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity2 >= 0
 R924: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity3 >= 0
 R925: Classic_commodity_outflow_0,0,1,Tstart4,Tend5,Commodity4 >= 0
 R926: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity0 >= 0
 R927: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity1 >= 0
 R928: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity2 >= 0
 R929: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity3 >= 0
 R930: Classic_commodity_inflow_0,0,1,Tstart4,Tend5,Commodity4 >= 0
 R931: sc_commodity_outflow_0,0,1,Tstart4,Tend5 >= 0
 R932: sc_commodity_inflow_0,0,1,Tstart4,Tend5 >= 0
 R933: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity0 >= 0
 R934: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity1 >= 0
 R935: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity2 >= 0
 R936: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity3 >= 0
 R937: Classic_commodity_outflow_0,0,1,Tstart8,Tend9,Commodity4 >= 0
 R938: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity0 >= 0
 R939: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity1 >= 0
 R940: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity2 >= 0
 R941: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity3 >= 0
 R942: Classic_commodity_inflow_0,0,1,Tstart8,Tend9,Commodity4 >= 0
 R943: sc_commodity_outflow_0,0,1,Tstart8,Tend9 >= 0
 R944: sc_commodity_inflow_0,0,1,Tstart8,Tend9 >= 0
 R945: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity0 >= 0
 R946: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity1 >= 0
 R947: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity2 >= 0
 R948: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity3 >= 0
 R949: Classic_commodity_outflow_0,0,1,Tstart9,Tend10,Commodity4 >= 0
 R950: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity0 >= 0
 R951: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity1 >= 0
 R952: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity2 >= 0
 R953: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity3 >= 0
 R954: Classic_commodity_inflow_0,0,1,Tstart9,Tend10,Commodity4 >= 0
 R955: sc_commodity_outflow_0,0,1,Tstart9,Tend10 >= 0
 R956: sc_commodity_inflow_0,0,1,Tstart9,Tend10 >= 0
 R957: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity0 >= 0
 R958: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity1 >= 0
 R959: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity2 >= 0
 R960: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity3 >= 0
 R961: Classic_commodity_outflow_0,0,1,Tstart10,Tend11,Commodity4 >= 0
 R962: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity0 >= 0
 R963: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity1 >= 0
 R964: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity2 >= 0
 R965: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity3 >= 0
 R966: Classic_commodity_inflow_0,0,1,Tstart10,Tend11,Commodity4 >= 0
 R967: sc_commodity_outflow_0,0,1,Tstart10,Tend11 >= 0
 R968: sc_commodity_inflow_0,0,1,Tstart10,Tend11 >= 0
 R969: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity0 >= 0
 R970: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity1 >= 0
 R971: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity2 >= 0
 R972: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity3 >= 0
 R973: Classic_commodity_outflow_0,1,0,Tstart9,Tend10,Commodity4 >= 0
 R974: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity0 >= 0
 R975: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity1 >= 0
 R976: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity2 >= 0
 R977: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity3 >= 0
 R978: Classic_commodity_inflow_0,1,0,Tstart9,Tend10,Commodity4 >= 0
 R979: sc_commodity_outflow_0,1,0,Tstart9,Tend10 >= 0
 R980: sc_commodity_inflow_0,1,0,Tstart9,Tend10 >= 0
 R981: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity0 >= 0
 R982: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity1 >= 0
 R983: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity2 >= 0
 R984: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity3 >= 0
 R985: Classic_commodity_outflow_0,1,0,Tstart10,Tend11,Commodity4 >= 0
 R986: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity0 >= 0
 R987: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity1 >= 0
 R988: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity2 >= 0
 R989: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity3 >= 0
 R990: Classic_commodity_inflow_0,1,0,Tstart10,Tend11,Commodity4 >= 0
 R991: sc_commodity_outflow_0,1,0,Tstart10,Tend11 >= 0
 R992: sc_commodity_inflow_0,1,0,Tstart10,Tend11 >= 0
 R993: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity0 >= 0
 R994: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity1 >= 0
 R995: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity2 >= 0
 R996: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity3 >= 0
 R997: Classic_commodity_outflow_0,1,1,Tstart0,Tend5,Commodity4 >= 0
 R998: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity0 >= 0
 R999: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity1 >= 0
 R1000: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity2 >= 0
 R1001: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity3 >= 0
 R1002: Classic_commodity_inflow_0,1,1,Tstart0,Tend5,Commodity4 >= 0
 R1003: sc_commodity_outflow_0,1,1,Tstart0,Tend5 >= 0
 R1004: sc_commodity_inflow_0,1,1,Tstart0,Tend5 >= 0
 R1005: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity0 >= 0
 R1006: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity1 >= 0
 R1007: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity2 >= 0
 R1008: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity3 >= 0
 R1009: Classic_commodity_outflow_0,1,1,Tstart5,Tend9,Commodity4 >= 0
 R1010: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity0 >= 0
 R1011: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity1 >= 0
 R1012: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity2 >= 0
 R1013: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity3 >= 0
 R1014: Classic_commodity_inflow_0,1,1,Tstart5,Tend9,Commodity4 >= 0
 R1015: sc_commodity_outflow_0,1,1,Tstart5,Tend9 >= 0
 R1016: sc_commodity_inflow_0,1,1,Tstart5,Tend9 >= 0
 R1017: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity0 >= 0
 R1018: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity1 >= 0
 R1019: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity2 >= 0
 R1020: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity3 >= 0
 R1021: Classic_commodity_outflow_0,1,1,Tstart9,Tend10,Commodity4 >= 0
 R1022: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity0 >= 0
 R1023: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity1 >= 0
 R1024: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity2 >= 0
 R1025: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity3 >= 0
 R1026: Classic_commodity_inflow_0,1,1,Tstart9,Tend10,Commodity4 >= 0
 R1027: sc_commodity_outflow_0,1,1,Tstart9,Tend10 >= 0
 R1028: sc_commodity_inflow_0,1,1,Tstart9,Tend10 >= 0
 R1029: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity0 >= 0
 R1030: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity1 >= 0
 R1031: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity2 >= 0
 R1032: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity3 >= 0
 R1033: Classic_commodity_outflow_0,1,1,Tstart10,Tend11,Commodity4 >= 0
 R1034: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity0 >= 0
 R1035: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity1 >= 0
 R1036: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity2 >= 0
 R1037: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity3 >= 0
 R1038: Classic_commodity_inflow_0,1,1,Tstart10,Tend11,Commodity4 >= 0
 R1039: sc_commodity_outflow_0,1,1,Tstart10,Tend11 >= 0
 R1040: sc_commodity_inflow_0,1,1,Tstart10,Tend11 >= 0
 R1041: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity0 >= 0
 R1042: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity1 >= 0
 R1043: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity2 >= 0
 R1044: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity3 >= 0
 R1045: Classic_commodity_outflow_0,1,2,Tstart0,Tend3,Commodity4 >= 0
 R1046: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity0 >= 0
 R1047: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity1 >= 0
 R1048: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity2 >= 0
 R1049: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity3 >= 0
 R1050: Classic_commodity_inflow_0,1,2,Tstart0,Tend3,Commodity4 >= 0
 R1051: sc_commodity_outflow_0,1,2,Tstart0,Tend3 >= 0
 R1052: sc_commodity_inflow_0,1,2,Tstart0,Tend3 >= 0
 R1053: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity0 >= 0
 R1054: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity1 >= 0
 R1055: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity2 >= 0
 R1056: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity3 >= 0
 R1057: Classic_commodity_outflow_0,1,2,Tstart5,Tend8,Commodity4 >= 0
 R1058: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity0 >= 0
 R1059: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity1 >= 0
 R1060: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity2 >= 0
 R1061: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity3 >= 0
 R1062: Classic_commodity_inflow_0,1,2,Tstart5,Tend8,Commodity4 >= 0
 R1063: sc_commodity_outflow_0,1,2,Tstart5,Tend8 >= 0
 R1064: sc_commodity_inflow_0,1,2,Tstart5,Tend8 >= 0
 R1065: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity0 >= 0
 R1066: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity1 >= 0
 R1067: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity2 >= 0
 R1068: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity3 >= 0
 R1069: Classic_commodity_outflow_0,2,1,Tstart2,Tend5,Commodity4 >= 0
 R1070: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity0 >= 0
 R1071: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity1 >= 0
 R1072: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity2 >= 0
 R1073: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity3 >= 0
 R1074: Classic_commodity_inflow_0,2,1,Tstart2,Tend5,Commodity4 >= 0
 R1075: sc_commodity_outflow_0,2,1,Tstart2,Tend5 >= 0
 R1076: sc_commodity_inflow_0,2,1,Tstart2,Tend5 >= 0
 R1077: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity0 >= 0
 R1078: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity1 >= 0
 R1079: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity2 >= 0
 R1080: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity3 >= 0
 R1081: Classic_commodity_outflow_0,2,1,Tstart6,Tend9,Commodity4 >= 0
 R1082: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity0 >= 0
 R1083: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity1 >= 0
 R1084: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity2 >= 0
 R1085: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity3 >= 0
 R1086: Classic_commodity_inflow_0,2,1,Tstart6,Tend9,Commodity4 >= 0
 R1087: sc_commodity_outflow_0,2,1,Tstart6,Tend9 >= 0
 R1088: sc_commodity_inflow_0,2,1,Tstart6,Tend9 >= 0
 R1089: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity0 >= 0
 R1090: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity1 >= 0
 R1091: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity2 >= 0
 R1092: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity3 >= 0
 R1093: Classic_commodity_outflow_0,2,1,Tstart7,Tend10,Commodity4 >= 0
 R1094: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity0 >= 0
 R1095: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity1 >= 0
 R1096: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity2 >= 0
 R1097: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity3 >= 0
 R1098: Classic_commodity_inflow_0,2,1,Tstart7,Tend10,Commodity4 >= 0
 R1099: sc_commodity_outflow_0,2,1,Tstart7,Tend10 >= 0
 R1100: sc_commodity_inflow_0,2,1,Tstart7,Tend10 >= 0
 R1101: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity0 >= 0
 R1102: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity1 >= 0
 R1103: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity2 >= 0
 R1104: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity3 >= 0
 R1105: Classic_commodity_outflow_0,2,1,Tstart8,Tend11,Commodity4 >= 0
 R1106: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity0 >= 0
 R1107: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity1 >= 0
 R1108: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity2 >= 0
 R1109: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity3 >= 0
 R1110: Classic_commodity_inflow_0,2,1,Tstart8,Tend11,Commodity4 >= 0
 R1111: sc_commodity_outflow_0,2,1,Tstart8,Tend11 >= 0
 R1112: sc_commodity_inflow_0,2,1,Tstart8,Tend11 >= 0
 R1113: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity0 >= 0
 R1114: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity1 >= 0
 R1115: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity2 >= 0
 R1116: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity3 >= 0
 R1117: Classic_commodity_outflow_0,2,2,Tstart0,Tend1,Commodity4 >= 0
 R1118: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity0 >= 0
 R1119: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity1 >= 0
 R1120: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity2 >= 0
 R1121: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity3 >= 0
 R1122: Classic_commodity_inflow_0,2,2,Tstart0,Tend1,Commodity4 >= 0
 R1123: sc_commodity_outflow_0,2,2,Tstart0,Tend1 >= 0
 R1124: sc_commodity_inflow_0,2,2,Tstart0,Tend1 >= 0
 R1125: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity0 >= 0
 R1126: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity1 >= 0
 R1127: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity2 >= 0
 R1128: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity3 >= 0
 R1129: Classic_commodity_outflow_0,2,2,Tstart1,Tend2,Commodity4 >= 0
 R1130: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity0 >= 0
 R1131: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity1 >= 0
 R1132: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity2 >= 0
 R1133: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity3 >= 0
 R1134: Classic_commodity_inflow_0,2,2,Tstart1,Tend2,Commodity4 >= 0
 R1135: sc_commodity_outflow_0,2,2,Tstart1,Tend2 >= 0
 R1136: sc_commodity_inflow_0,2,2,Tstart1,Tend2 >= 0
 R1137: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity0 >= 0
 R1138: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity1 >= 0
 R1139: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity2 >= 0
 R1140: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity3 >= 0
 R1141: Classic_commodity_outflow_0,2,2,Tstart2,Tend3,Commodity4 >= 0
 R1142: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity0 >= 0
 R1143: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity1 >= 0
 R1144: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity2 >= 0
 R1145: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity3 >= 0
 R1146: Classic_commodity_inflow_0,2,2,Tstart2,Tend3,Commodity4 >= 0
 R1147: sc_commodity_outflow_0,2,2,Tstart2,Tend3 >= 0
 R1148: sc_commodity_inflow_0,2,2,Tstart2,Tend3 >= 0
 R1149: Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity0 >= 0
 R1150: Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity1 >= 0
 R1151: Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity2 >= 0
 R1152: Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity3 >= 0
 R1153: Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity4 >= 0
 R1154: Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity0 >= 0
 R1155: Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity1 >= 0
 R1156: Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity2 >= 0
 R1157: Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity3 >= 0
 R1158: Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity4 >= 0
 R1159: sc_commodity_outflow_0,2,2,Tstart3,Tend6 >= 0
 R1160: sc_commodity_inflow_0,2,2,Tstart3,Tend6 >= 0
 R1161: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0 >= 0
 R1162: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity1 >= 0
 R1163: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity2 >= 0
 R1164: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity3 >= 0
 R1165: Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity4 >= 0
 R1166: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity0 >= 0
 R1167: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity1 >= 0
 R1168: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity2 >= 0
 R1169: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity3 >= 0
 R1170: Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity4 >= 0
 R1171: sc_commodity_outflow_0,2,2,Tstart6,Tend7 >= 0
 R1172: sc_commodity_inflow_0,2,2,Tstart6,Tend7 >= 0
 R1173: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0 >= 0
 R1174: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity1 >= 0
 R1175: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity2 >= 0
 R1176: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity3 >= 0
 R1177: Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity4 >= 0
 R1178: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity0 >= 0
 R1179: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity1 >= 0
 R1180: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity2 >= 0
 R1181: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity3 >= 0
 R1182: Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity4 >= 0
 R1183: sc_commodity_outflow_0,2,2,Tstart7,Tend8 >= 0
 R1184: sc_commodity_inflow_0,2,2,Tstart7,Tend8 >= 0
 R1185: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0 >= 0
 R1186: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity1 >= 0
 R1187: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity2 >= 0
 R1188: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity3 >= 0
 R1189: Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity4 >= 0
 R1190: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0 >= 0
 R1191: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity1 >= 0
 R1192: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity2 >= 0
 R1193: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity3 >= 0
 R1194: Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity4 >= 0
 R1195: sc_commodity_outflow_0,2,2,Tstart8,Tend9 >= 0
 R1196: sc_commodity_inflow_0,2,2,Tstart8,Tend9 >= 0
 R1197: Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity0 >= 0
 R1198: Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity1 >= 0
 R1199: Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity2 >= 0
 R1200: Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity3 >= 0
 R1201: Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity4 >= 0
 R1202: Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity0 >= 0
 R1203: Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity1 >= 0
 R1204: Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity2 >= 0
 R1205: Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity3 >= 0
 R1206: Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity4 >= 0
 R1207: sc_commodity_outflow_0,2,2,Tstart9,Tend11 >= 0
 R1208: sc_commodity_inflow_0,2,2,Tstart9,Tend11 >= 0
 R1209: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0 >= 0
 R1210: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity1 >= 0
 R1211: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity2 >= 0
 R1212: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity3 >= 0
 R1213: Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity4 >= 0
 R1214: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity0 >= 0
 R1215: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity1 >= 0
 R1216: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity2 >= 0
 R1217: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity3 >= 0
 R1218: Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity4 >= 0
 R1219: sc_commodity_outflow_0,2,3,Tstart1,Tend2 >= 0
 R1220: sc_commodity_inflow_0,2,3,Tstart1,Tend2 >= 0
 R1221: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0 >= 0
 R1222: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity1 >= 0
 R1223: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity2 >= 0
 R1224: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity3 >= 0
 R1225: Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity4 >= 0
 R1226: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0 >= 0
 R1227: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity1 >= 0
 R1228: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity2 >= 0
 R1229: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity3 >= 0
 R1230: Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity4 >= 0
 R1231: sc_commodity_outflow_0,2,3,Tstart2,Tend3 >= 0
 R1232: sc_commodity_inflow_0,2,3,Tstart2,Tend3 >= 0
 R1233: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0 >= 0
 R1234: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity1 >= 0
 R1235: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity2 >= 0
 R1236: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity3 >= 0
 R1237: Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity4 >= 0
 R1238: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0 >= 0
 R1239: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity1 >= 0
 R1240: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity2 >= 0
 R1241: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity3 >= 0
 R1242: Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity4 >= 0
 R1243: sc_commodity_outflow_0,2,3,Tstart3,Tend4 >= 0
 R1244: sc_commodity_inflow_0,2,3,Tstart3,Tend4 >= 0
 R1245: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0 >= 0
 R1246: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity1 >= 0
 R1247: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity2 >= 0
 R1248: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity3 >= 0
 R1249: Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity4 >= 0
 R1250: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity0 >= 0
 R1251: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity1 >= 0
 R1252: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity2 >= 0
 R1253: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity3 >= 0
 R1254: Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity4 >= 0
 R1255: sc_commodity_outflow_0,3,2,Tstart0,Tend1 >= 0
 R1256: sc_commodity_inflow_0,3,2,Tstart0,Tend1 >= 0
 R1257: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0 >= 0
 R1258: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity1 >= 0
 R1259: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity2 >= 0
 R1260: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity3 >= 0
 R1261: Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity4 >= 0
 R1262: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0 >= 0
 R1263: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity1 >= 0
 R1264: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity2 >= 0
 R1265: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity3 >= 0
 R1266: Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity4 >= 0
 R1267: sc_commodity_outflow_0,3,2,Tstart2,Tend3 >= 0
 R1268: sc_commodity_inflow_0,3,2,Tstart2,Tend3 >= 0
 R1269: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity0 >= 0
 R1270: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity1 >= 0
 R1271: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity2 >= 0
 R1272: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity3 >= 0
 R1273: Classic_commodity_outflow_0,3,2,Tstart5,Tend6,Commodity4 >= 0
 R1274: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity0 >= 0
 R1275: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity1 >= 0
 R1276: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity2 >= 0
 R1277: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity3 >= 0
 R1278: Classic_commodity_inflow_0,3,2,Tstart5,Tend6,Commodity4 >= 0
 R1279: sc_commodity_outflow_0,3,2,Tstart5,Tend6 >= 0
 R1280: sc_commodity_inflow_0,3,2,Tstart5,Tend6 >= 0
 R1281: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity0 >= 0
 R1282: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity1 >= 0
 R1283: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity2 >= 0
 R1284: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity3 >= 0
 R1285: Classic_commodity_outflow_0,3,2,Tstart6,Tend7,Commodity4 >= 0
 R1286: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity0 >= 0
 R1287: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity1 >= 0
 R1288: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity2 >= 0
 R1289: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity3 >= 0
 R1290: Classic_commodity_inflow_0,3,2,Tstart6,Tend7,Commodity4 >= 0
 R1291: sc_commodity_outflow_0,3,2,Tstart6,Tend7 >= 0
 R1292: sc_commodity_inflow_0,3,2,Tstart6,Tend7 >= 0
 R1293: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity0 >= 0
 R1294: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity1 >= 0
 R1295: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity2 >= 0
 R1296: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity3 >= 0
 R1297: Classic_commodity_outflow_0,3,3,Tstart0,Tend2,Commodity4 >= 0
 R1298: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity0 >= 0
 R1299: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity1 >= 0
 R1300: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity2 >= 0
 R1301: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity3 >= 0
 R1302: Classic_commodity_inflow_0,3,3,Tstart0,Tend2,Commodity4 >= 0
 R1303: sc_commodity_outflow_0,3,3,Tstart0,Tend2 >= 0
 R1304: sc_commodity_inflow_0,3,3,Tstart0,Tend2 >= 0
 R1305: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity0 >= 0
 R1306: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity1 >= 0
 R1307: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity2 >= 0
 R1308: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity3 >= 0
 R1309: Classic_commodity_outflow_0,3,3,Tstart2,Tend3,Commodity4 >= 0
 R1310: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity0 >= 0
 R1311: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity1 >= 0
 R1312: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity2 >= 0
 R1313: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity3 >= 0
 R1314: Classic_commodity_inflow_0,3,3,Tstart2,Tend3,Commodity4 >= 0
 R1315: sc_commodity_outflow_0,3,3,Tstart2,Tend3 >= 0
 R1316: sc_commodity_inflow_0,3,3,Tstart2,Tend3 >= 0
 R1317: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity0 >= 0
 R1318: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity1 >= 0
 R1319: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity2 >= 0
 R1320: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity3 >= 0
 R1321: Classic_commodity_outflow_0,3,3,Tstart3,Tend4,Commodity4 >= 0
 R1322: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity0 >= 0
 R1323: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity1 >= 0
 R1324: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity2 >= 0
 R1325: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity3 >= 0
 R1326: Classic_commodity_inflow_0,3,3,Tstart3,Tend4,Commodity4 >= 0
 R1327: sc_commodity_outflow_0,3,3,Tstart3,Tend4 >= 0
 R1328: sc_commodity_inflow_0,3,3,Tstart3,Tend4 >= 0
 R1329: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity0 >= 0
 R1330: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity1 >= 0
 R1331: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity2 >= 0
 R1332: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity3 >= 0
 R1333: Classic_commodity_outflow_0,3,3,Tstart4,Tend5,Commodity4 >= 0
 R1334: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity0 >= 0
 R1335: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity1 >= 0
 R1336: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity2 >= 0
 R1337: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity3 >= 0
 R1338: Classic_commodity_inflow_0,3,3,Tstart4,Tend5,Commodity4 >= 0
 R1339: sc_commodity_outflow_0,3,3,Tstart4,Tend5 >= 0
 R1340: sc_commodity_inflow_0,3,3,Tstart4,Tend5 >= 0
 R1341: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity0 >= 0
 R1342: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity1 >= 0
 R1343: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity2 >= 0
 R1344: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity3 >= 0
 R1345: Classic_commodity_outflow_0,3,3,Tstart5,Tend6,Commodity4 >= 0
 R1346: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity0 >= 0
 R1347: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity1 >= 0
 R1348: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity2 >= 0
 R1349: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity3 >= 0
 R1350: Classic_commodity_inflow_0,3,3,Tstart5,Tend6,Commodity4 >= 0
 R1351: sc_commodity_outflow_0,3,3,Tstart5,Tend6 >= 0
 R1352: sc_commodity_inflow_0,3,3,Tstart5,Tend6 >= 0
 R1353: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity0 >= 0
 R1354: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity1 >= 0
 R1355: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity2 >= 0
 R1356: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity3 >= 0
 R1357: Classic_commodity_outflow_0,3,3,Tstart6,Tend11,Commodity4 >= 0
 R1358: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity0 >= 0
 R1359: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity1 >= 0
 R1360: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity2 >= 0
 R1361: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity3 >= 0
 R1362: Classic_commodity_inflow_0,3,3,Tstart6,Tend11,Commodity4 >= 0
 R1363: sc_commodity_outflow_0,3,3,Tstart6,Tend11 >= 0
 R1364: sc_commodity_inflow_0,3,3,Tstart6,Tend11 >= 0
 R1365: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity0 >= 0
 R1366: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity1 >= 0
 R1367: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity2 >= 0
 R1368: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity3 >= 0
 R1369: Classic_commodity_outflow_1,0,0,Tstart0,Tend4,Commodity4 >= 0
 R1370: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity0 >= 0
 R1371: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity1 >= 0
 R1372: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity2 >= 0
 R1373: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity3 >= 0
 R1374: Classic_commodity_inflow_1,0,0,Tstart0,Tend4,Commodity4 >= 0
 R1375: sc_commodity_outflow_1,0,0,Tstart0,Tend4 >= 0
 R1376: sc_commodity_inflow_1,0,0,Tstart0,Tend4 >= 0
 R1377: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity0 >= 0
 R1378: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity1 >= 0
 R1379: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity2 >= 0
 R1380: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity3 >= 0
 R1381: Classic_commodity_outflow_1,0,0,Tstart4,Tend8,Commodity4 >= 0
 R1382: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity0 >= 0
 R1383: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity1 >= 0
 R1384: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity2 >= 0
 R1385: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity3 >= 0
 R1386: Classic_commodity_inflow_1,0,0,Tstart4,Tend8,Commodity4 >= 0
 R1387: sc_commodity_outflow_1,0,0,Tstart4,Tend8 >= 0
 R1388: sc_commodity_inflow_1,0,0,Tstart4,Tend8 >= 0
 R1389: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity0 >= 0
 R1390: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity1 >= 0
 R1391: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity2 >= 0
 R1392: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity3 >= 0
 R1393: Classic_commodity_outflow_1,0,0,Tstart8,Tend9,Commodity4 >= 0
 R1394: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity0 >= 0
 R1395: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity1 >= 0
 R1396: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity2 >= 0
 R1397: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity3 >= 0
 R1398: Classic_commodity_inflow_1,0,0,Tstart8,Tend9,Commodity4 >= 0
 R1399: sc_commodity_outflow_1,0,0,Tstart8,Tend9 >= 0
 R1400: sc_commodity_inflow_1,0,0,Tstart8,Tend9 >= 0
 R1401: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity0 >= 0
 R1402: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity1 >= 0
 R1403: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity2 >= 0
 R1404: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity3 >= 0
 R1405: Classic_commodity_outflow_1,0,0,Tstart9,Tend10,Commodity4 >= 0
 R1406: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity0 >= 0
 R1407: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity1 >= 0
 R1408: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity2 >= 0
 R1409: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity3 >= 0
 R1410: Classic_commodity_inflow_1,0,0,Tstart9,Tend10,Commodity4 >= 0
 R1411: sc_commodity_outflow_1,0,0,Tstart9,Tend10 >= 0
 R1412: sc_commodity_inflow_1,0,0,Tstart9,Tend10 >= 0
 R1413: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity0 >= 0
 R1414: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity1 >= 0
 R1415: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity2 >= 0
 R1416: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity3 >= 0
 R1417: Classic_commodity_outflow_1,0,0,Tstart10,Tend11,Commodity4 >= 0
 R1418: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity0 >= 0
 R1419: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity1 >= 0
 R1420: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity2 >= 0
 R1421: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity3 >= 0
 R1422: Classic_commodity_inflow_1,0,0,Tstart10,Tend11,Commodity4 >= 0
 R1423: sc_commodity_outflow_1,0,0,Tstart10,Tend11 >= 0
 R1424: sc_commodity_inflow_1,0,0,Tstart10,Tend11 >= 0
 R1425: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity0 >= 0
 R1426: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity1 >= 0
 R1427: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity2 >= 0
 R1428: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity3 >= 0
 R1429: Classic_commodity_outflow_1,0,1,Tstart4,Tend5,Commodity4 >= 0
 R1430: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity0 >= 0
 R1431: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity1 >= 0
 R1432: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity2 >= 0
 R1433: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity3 >= 0
 R1434: Classic_commodity_inflow_1,0,1,Tstart4,Tend5,Commodity4 >= 0
 R1435: sc_commodity_outflow_1,0,1,Tstart4,Tend5 >= 0
 R1436: sc_commodity_inflow_1,0,1,Tstart4,Tend5 >= 0
 R1437: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity0 >= 0
 R1438: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity1 >= 0
 R1439: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity2 >= 0
 R1440: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity3 >= 0
 R1441: Classic_commodity_outflow_1,0,1,Tstart8,Tend9,Commodity4 >= 0
 R1442: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity0 >= 0
 R1443: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity1 >= 0
 R1444: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity2 >= 0
 R1445: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity3 >= 0
 R1446: Classic_commodity_inflow_1,0,1,Tstart8,Tend9,Commodity4 >= 0
 R1447: sc_commodity_outflow_1,0,1,Tstart8,Tend9 >= 0
 R1448: sc_commodity_inflow_1,0,1,Tstart8,Tend9 >= 0
 R1449: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity0 >= 0
 R1450: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity1 >= 0
 R1451: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity2 >= 0
 R1452: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity3 >= 0
 R1453: Classic_commodity_outflow_1,0,1,Tstart9,Tend10,Commodity4 >= 0
 R1454: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity0 >= 0
 R1455: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity1 >= 0
 R1456: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity2 >= 0
 R1457: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity3 >= 0
 R1458: Classic_commodity_inflow_1,0,1,Tstart9,Tend10,Commodity4 >= 0
 R1459: sc_commodity_outflow_1,0,1,Tstart9,Tend10 >= 0
 R1460: sc_commodity_inflow_1,0,1,Tstart9,Tend10 >= 0
 R1461: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity0 >= 0
 R1462: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity1 >= 0
 R1463: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity2 >= 0
 R1464: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity3 >= 0
 R1465: Classic_commodity_outflow_1,0,1,Tstart10,Tend11,Commodity4 >= 0
 R1466: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity0 >= 0
 R1467: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity1 >= 0
 R1468: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity2 >= 0
 R1469: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity3 >= 0
 R1470: Classic_commodity_inflow_1,0,1,Tstart10,Tend11,Commodity4 >= 0
 R1471: sc_commodity_outflow_1,0,1,Tstart10,Tend11 >= 0
 R1472: sc_commodity_inflow_1,0,1,Tstart10,Tend11 >= 0
 R1473: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity0 >= 0
 R1474: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity1 >= 0
 R1475: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity2 >= 0
 R1476: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity3 >= 0
 R1477: Classic_commodity_outflow_1,1,0,Tstart9,Tend10,Commodity4 >= 0
 R1478: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity0 >= 0
 R1479: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity1 >= 0
 R1480: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity2 >= 0
 R1481: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity3 >= 0
 R1482: Classic_commodity_inflow_1,1,0,Tstart9,Tend10,Commodity4 >= 0
 R1483: sc_commodity_outflow_1,1,0,Tstart9,Tend10 >= 0
 R1484: sc_commodity_inflow_1,1,0,Tstart9,Tend10 >= 0
 R1485: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity0 >= 0
 R1486: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity1 >= 0
 R1487: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity2 >= 0
 R1488: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity3 >= 0
 R1489: Classic_commodity_outflow_1,1,0,Tstart10,Tend11,Commodity4 >= 0
 R1490: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity0 >= 0
 R1491: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity1 >= 0
 R1492: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity2 >= 0
 R1493: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity3 >= 0
 R1494: Classic_commodity_inflow_1,1,0,Tstart10,Tend11,Commodity4 >= 0
 R1495: sc_commodity_outflow_1,1,0,Tstart10,Tend11 >= 0
 R1496: sc_commodity_inflow_1,1,0,Tstart10,Tend11 >= 0
 R1497: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity0 >= 0
 R1498: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity1 >= 0
 R1499: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity2 >= 0
 R1500: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity3 >= 0
 R1501: Classic_commodity_outflow_1,1,1,Tstart0,Tend5,Commodity4 >= 0
 R1502: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity0 >= 0
 R1503: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity1 >= 0
 R1504: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity2 >= 0
 R1505: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity3 >= 0
 R1506: Classic_commodity_inflow_1,1,1,Tstart0,Tend5,Commodity4 >= 0
 R1507: sc_commodity_outflow_1,1,1,Tstart0,Tend5 >= 0
 R1508: sc_commodity_inflow_1,1,1,Tstart0,Tend5 >= 0
 R1509: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity0 >= 0
 R1510: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity1 >= 0
 R1511: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity2 >= 0
 R1512: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity3 >= 0
 R1513: Classic_commodity_outflow_1,1,1,Tstart5,Tend9,Commodity4 >= 0
 R1514: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity0 >= 0
 R1515: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity1 >= 0
 R1516: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity2 >= 0
 R1517: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity3 >= 0
 R1518: Classic_commodity_inflow_1,1,1,Tstart5,Tend9,Commodity4 >= 0
 R1519: sc_commodity_outflow_1,1,1,Tstart5,Tend9 >= 0
 R1520: sc_commodity_inflow_1,1,1,Tstart5,Tend9 >= 0
 R1521: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity0 >= 0
 R1522: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity1 >= 0
 R1523: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity2 >= 0
 R1524: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity3 >= 0
 R1525: Classic_commodity_outflow_1,1,1,Tstart9,Tend10,Commodity4 >= 0
 R1526: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity0 >= 0
 R1527: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity1 >= 0
 R1528: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity2 >= 0
 R1529: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity3 >= 0
 R1530: Classic_commodity_inflow_1,1,1,Tstart9,Tend10,Commodity4 >= 0
 R1531: sc_commodity_outflow_1,1,1,Tstart9,Tend10 >= 0
 R1532: sc_commodity_inflow_1,1,1,Tstart9,Tend10 >= 0
 R1533: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity0 >= 0
 R1534: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity1 >= 0
 R1535: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity2 >= 0
 R1536: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity3 >= 0
 R1537: Classic_commodity_outflow_1,1,1,Tstart10,Tend11,Commodity4 >= 0
 R1538: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity0 >= 0
 R1539: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity1 >= 0
 R1540: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity2 >= 0
 R1541: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity3 >= 0
 R1542: Classic_commodity_inflow_1,1,1,Tstart10,Tend11,Commodity4 >= 0
 R1543: sc_commodity_outflow_1,1,1,Tstart10,Tend11 >= 0
 R1544: sc_commodity_inflow_1,1,1,Tstart10,Tend11 >= 0
 R1545: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity0 >= 0
 R1546: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity1 >= 0
 R1547: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity2 >= 0
 R1548: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity3 >= 0
 R1549: Classic_commodity_outflow_1,1,2,Tstart0,Tend3,Commodity4 >= 0
 R1550: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity0 >= 0
 R1551: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity1 >= 0
 R1552: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity2 >= 0
 R1553: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity3 >= 0
 R1554: Classic_commodity_inflow_1,1,2,Tstart0,Tend3,Commodity4 >= 0
 R1555: sc_commodity_outflow_1,1,2,Tstart0,Tend3 >= 0
 R1556: sc_commodity_inflow_1,1,2,Tstart0,Tend3 >= 0
 R1557: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity0 >= 0
 R1558: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity1 >= 0
 R1559: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity2 >= 0
 R1560: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity3 >= 0
 R1561: Classic_commodity_outflow_1,1,2,Tstart5,Tend8,Commodity4 >= 0
 R1562: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity0 >= 0
 R1563: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity1 >= 0
 R1564: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity2 >= 0
 R1565: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity3 >= 0
 R1566: Classic_commodity_inflow_1,1,2,Tstart5,Tend8,Commodity4 >= 0
 R1567: sc_commodity_outflow_1,1,2,Tstart5,Tend8 >= 0
 R1568: sc_commodity_inflow_1,1,2,Tstart5,Tend8 >= 0
 R1569: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity0 >= 0
 R1570: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity1 >= 0
 R1571: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity2 >= 0
 R1572: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity3 >= 0
 R1573: Classic_commodity_outflow_1,2,1,Tstart2,Tend5,Commodity4 >= 0
 R1574: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity0 >= 0
 R1575: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity1 >= 0
 R1576: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity2 >= 0
 R1577: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity3 >= 0
 R1578: Classic_commodity_inflow_1,2,1,Tstart2,Tend5,Commodity4 >= 0
 R1579: sc_commodity_outflow_1,2,1,Tstart2,Tend5 >= 0
 R1580: sc_commodity_inflow_1,2,1,Tstart2,Tend5 >= 0
 R1581: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity0 >= 0
 R1582: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity1 >= 0
 R1583: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity2 >= 0
 R1584: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity3 >= 0
 R1585: Classic_commodity_outflow_1,2,1,Tstart6,Tend9,Commodity4 >= 0
 R1586: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity0 >= 0
 R1587: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity1 >= 0
 R1588: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity2 >= 0
 R1589: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity3 >= 0
 R1590: Classic_commodity_inflow_1,2,1,Tstart6,Tend9,Commodity4 >= 0
 R1591: sc_commodity_outflow_1,2,1,Tstart6,Tend9 >= 0
 R1592: sc_commodity_inflow_1,2,1,Tstart6,Tend9 >= 0
 R1593: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity0 >= 0
 R1594: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity1 >= 0
 R1595: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity2 >= 0
 R1596: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity3 >= 0
 R1597: Classic_commodity_outflow_1,2,1,Tstart7,Tend10,Commodity4 >= 0
 R1598: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity0 >= 0
 R1599: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity1 >= 0
 R1600: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity2 >= 0
 R1601: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity3 >= 0
 R1602: Classic_commodity_inflow_1,2,1,Tstart7,Tend10,Commodity4 >= 0
 R1603: sc_commodity_outflow_1,2,1,Tstart7,Tend10 >= 0
 R1604: sc_commodity_inflow_1,2,1,Tstart7,Tend10 >= 0
 R1605: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity0 >= 0
 R1606: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity1 >= 0
 R1607: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity2 >= 0
 R1608: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity3 >= 0
 R1609: Classic_commodity_outflow_1,2,1,Tstart8,Tend11,Commodity4 >= 0
 R1610: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity0 >= 0
 R1611: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity1 >= 0
 R1612: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity2 >= 0
 R1613: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity3 >= 0
 R1614: Classic_commodity_inflow_1,2,1,Tstart8,Tend11,Commodity4 >= 0
 R1615: sc_commodity_outflow_1,2,1,Tstart8,Tend11 >= 0
 R1616: sc_commodity_inflow_1,2,1,Tstart8,Tend11 >= 0
 R1617: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity0 >= 0
 R1618: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity1 >= 0
 R1619: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity2 >= 0
 R1620: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity3 >= 0
 R1621: Classic_commodity_outflow_1,2,2,Tstart0,Tend1,Commodity4 >= 0
 R1622: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity0 >= 0
 R1623: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity1 >= 0
 R1624: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity2 >= 0
 R1625: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity3 >= 0
 R1626: Classic_commodity_inflow_1,2,2,Tstart0,Tend1,Commodity4 >= 0
 R1627: sc_commodity_outflow_1,2,2,Tstart0,Tend1 >= 0
 R1628: sc_commodity_inflow_1,2,2,Tstart0,Tend1 >= 0
 R1629: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity0 >= 0
 R1630: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity1 >= 0
 R1631: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity2 >= 0
 R1632: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity3 >= 0
 R1633: Classic_commodity_outflow_1,2,2,Tstart1,Tend2,Commodity4 >= 0
 R1634: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity0 >= 0
 R1635: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity1 >= 0
 R1636: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity2 >= 0
 R1637: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity3 >= 0
 R1638: Classic_commodity_inflow_1,2,2,Tstart1,Tend2,Commodity4 >= 0
 R1639: sc_commodity_outflow_1,2,2,Tstart1,Tend2 >= 0
 R1640: sc_commodity_inflow_1,2,2,Tstart1,Tend2 >= 0
 R1641: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity0 >= 0
 R1642: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity1 >= 0
 R1643: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity2 >= 0
 R1644: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity3 >= 0
 R1645: Classic_commodity_outflow_1,2,2,Tstart2,Tend3,Commodity4 >= 0
 R1646: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity0 >= 0
 R1647: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity1 >= 0
 R1648: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity2 >= 0
 R1649: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity3 >= 0
 R1650: Classic_commodity_inflow_1,2,2,Tstart2,Tend3,Commodity4 >= 0
 R1651: sc_commodity_outflow_1,2,2,Tstart2,Tend3 >= 0
 R1652: sc_commodity_inflow_1,2,2,Tstart2,Tend3 >= 0
 R1653: Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity0 >= 0
 R1654: Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity1 >= 0
 R1655: Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity2 >= 0
 R1656: Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity3 >= 0
 R1657: Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity4 >= 0
 R1658: Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity0 >= 0
 R1659: Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity1 >= 0
 R1660: Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity2 >= 0
 R1661: Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity3 >= 0
 R1662: Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity4 >= 0
 R1663: sc_commodity_outflow_1,2,2,Tstart3,Tend6 >= 0
 R1664: sc_commodity_inflow_1,2,2,Tstart3,Tend6 >= 0
 R1665: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0 >= 0
 R1666: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity1 >= 0
 R1667: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity2 >= 0
 R1668: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity3 >= 0
 R1669: Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity4 >= 0
 R1670: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity0 >= 0
 R1671: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity1 >= 0
 R1672: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity2 >= 0
 R1673: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity3 >= 0
 R1674: Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity4 >= 0
 R1675: sc_commodity_outflow_1,2,2,Tstart6,Tend7 >= 0
 R1676: sc_commodity_inflow_1,2,2,Tstart6,Tend7 >= 0
 R1677: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0 >= 0
 R1678: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity1 >= 0
 R1679: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity2 >= 0
 R1680: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity3 >= 0
 R1681: Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity4 >= 0
 R1682: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity0 >= 0
 R1683: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity1 >= 0
 R1684: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity2 >= 0
 R1685: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity3 >= 0
 R1686: Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity4 >= 0
 R1687: sc_commodity_outflow_1,2,2,Tstart7,Tend8 >= 0
 R1688: sc_commodity_inflow_1,2,2,Tstart7,Tend8 >= 0
 R1689: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0 >= 0
 R1690: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity1 >= 0
 R1691: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity2 >= 0
 R1692: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity3 >= 0
 R1693: Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity4 >= 0
 R1694: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0 >= 0
 R1695: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity1 >= 0
 R1696: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity2 >= 0
 R1697: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity3 >= 0
 R1698: Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity4 >= 0
 R1699: sc_commodity_outflow_1,2,2,Tstart8,Tend9 >= 0
 R1700: sc_commodity_inflow_1,2,2,Tstart8,Tend9 >= 0
 R1701: Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity0 >= 0
 R1702: Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity1 >= 0
 R1703: Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity2 >= 0
 R1704: Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity3 >= 0
 R1705: Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity4 >= 0
 R1706: Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity0 >= 0
 R1707: Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity1 >= 0
 R1708: Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity2 >= 0
 R1709: Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity3 >= 0
 R1710: Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity4 >= 0
 R1711: sc_commodity_outflow_1,2,2,Tstart9,Tend11 >= 0
 R1712: sc_commodity_inflow_1,2,2,Tstart9,Tend11 >= 0
 R1713: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0 >= 0
 R1714: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity1 >= 0
 R1715: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity2 >= 0
 R1716: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity3 >= 0
 R1717: Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity4 >= 0
 R1718: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity0 >= 0
 R1719: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity1 >= 0
 R1720: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity2 >= 0
 R1721: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity3 >= 0
 R1722: Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity4 >= 0
 R1723: sc_commodity_outflow_1,2,3,Tstart1,Tend2 >= 0
 R1724: sc_commodity_inflow_1,2,3,Tstart1,Tend2 >= 0
 R1725: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0 >= 0
 R1726: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity1 >= 0
 R1727: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity2 >= 0
 R1728: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity3 >= 0
 R1729: Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity4 >= 0
 R1730: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0 >= 0
 R1731: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity1 >= 0
 R1732: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity2 >= 0
 R1733: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity3 >= 0
 R1734: Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity4 >= 0
 R1735: sc_commodity_outflow_1,2,3,Tstart2,Tend3 >= 0
 R1736: sc_commodity_inflow_1,2,3,Tstart2,Tend3 >= 0
 R1737: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0 >= 0
 R1738: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity1 >= 0
 R1739: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity2 >= 0
 R1740: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity3 >= 0
 R1741: Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity4 >= 0
 R1742: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0 >= 0
 R1743: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity1 >= 0
 R1744: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity2 >= 0
 R1745: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity3 >= 0
 R1746: Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity4 >= 0
 R1747: sc_commodity_outflow_1,2,3,Tstart3,Tend4 >= 0
 R1748: sc_commodity_inflow_1,2,3,Tstart3,Tend4 >= 0
 R1749: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0 >= 0
 R1750: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity1 >= 0
 R1751: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity2 >= 0
 R1752: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity3 >= 0
 R1753: Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity4 >= 0
 R1754: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity0 >= 0
 R1755: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity1 >= 0
 R1756: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity2 >= 0
 R1757: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity3 >= 0
 R1758: Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity4 >= 0
 R1759: sc_commodity_outflow_1,3,2,Tstart0,Tend1 >= 0
 R1760: sc_commodity_inflow_1,3,2,Tstart0,Tend1 >= 0
 R1761: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0 >= 0
 R1762: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity1 >= 0
 R1763: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity2 >= 0
 R1764: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity3 >= 0
 R1765: Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity4 >= 0
 R1766: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0 >= 0
 R1767: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity1 >= 0
 R1768: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity2 >= 0
 R1769: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity3 >= 0
 R1770: Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity4 >= 0
 R1771: sc_commodity_outflow_1,3,2,Tstart2,Tend3 >= 0
 R1772: sc_commodity_inflow_1,3,2,Tstart2,Tend3 >= 0
 R1773: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity0 >= 0
 R1774: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity1 >= 0
 R1775: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity2 >= 0
 R1776: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity3 >= 0
 R1777: Classic_commodity_outflow_1,3,2,Tstart5,Tend6,Commodity4 >= 0
 R1778: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity0 >= 0
 R1779: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity1 >= 0
 R1780: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity2 >= 0
 R1781: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity3 >= 0
 R1782: Classic_commodity_inflow_1,3,2,Tstart5,Tend6,Commodity4 >= 0
 R1783: sc_commodity_outflow_1,3,2,Tstart5,Tend6 >= 0
 R1784: sc_commodity_inflow_1,3,2,Tstart5,Tend6 >= 0
 R1785: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity0 >= 0
 R1786: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity1 >= 0
 R1787: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity2 >= 0
 R1788: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity3 >= 0
 R1789: Classic_commodity_outflow_1,3,2,Tstart6,Tend7,Commodity4 >= 0
 R1790: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity0 >= 0
 R1791: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity1 >= 0
 R1792: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity2 >= 0
 R1793: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity3 >= 0
 R1794: Classic_commodity_inflow_1,3,2,Tstart6,Tend7,Commodity4 >= 0
 R1795: sc_commodity_outflow_1,3,2,Tstart6,Tend7 >= 0
 R1796: sc_commodity_inflow_1,3,2,Tstart6,Tend7 >= 0
 R1797: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity0 >= 0
 R1798: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity1 >= 0
 R1799: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity2 >= 0
 R1800: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity3 >= 0
 R1801: Classic_commodity_outflow_1,3,3,Tstart0,Tend2,Commodity4 >= 0
 R1802: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity0 >= 0
 R1803: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity1 >= 0
 R1804: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity2 >= 0
 R1805: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity3 >= 0
 R1806: Classic_commodity_inflow_1,3,3,Tstart0,Tend2,Commodity4 >= 0
 R1807: sc_commodity_outflow_1,3,3,Tstart0,Tend2 >= 0
 R1808: sc_commodity_inflow_1,3,3,Tstart0,Tend2 >= 0
 R1809: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity0 >= 0
 R1810: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity1 >= 0
 R1811: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity2 >= 0
 R1812: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity3 >= 0
 R1813: Classic_commodity_outflow_1,3,3,Tstart2,Tend3,Commodity4 >= 0
 R1814: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity0 >= 0
 R1815: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity1 >= 0
 R1816: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity2 >= 0
 R1817: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity3 >= 0
 R1818: Classic_commodity_inflow_1,3,3,Tstart2,Tend3,Commodity4 >= 0
 R1819: sc_commodity_outflow_1,3,3,Tstart2,Tend3 >= 0
 R1820: sc_commodity_inflow_1,3,3,Tstart2,Tend3 >= 0
 R1821: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity0 >= 0
 R1822: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity1 >= 0
 R1823: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity2 >= 0
 R1824: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity3 >= 0
 R1825: Classic_commodity_outflow_1,3,3,Tstart3,Tend4,Commodity4 >= 0
 R1826: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity0 >= 0
 R1827: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity1 >= 0
 R1828: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity2 >= 0
 R1829: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity3 >= 0
 R1830: Classic_commodity_inflow_1,3,3,Tstart3,Tend4,Commodity4 >= 0
 R1831: sc_commodity_outflow_1,3,3,Tstart3,Tend4 >= 0
 R1832: sc_commodity_inflow_1,3,3,Tstart3,Tend4 >= 0
 R1833: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity0 >= 0
 R1834: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity1 >= 0
 R1835: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity2 >= 0
 R1836: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity3 >= 0
 R1837: Classic_commodity_outflow_1,3,3,Tstart4,Tend5,Commodity4 >= 0
 R1838: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity0 >= 0
 R1839: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity1 >= 0
 R1840: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity2 >= 0
 R1841: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity3 >= 0
 R1842: Classic_commodity_inflow_1,3,3,Tstart4,Tend5,Commodity4 >= 0
 R1843: sc_commodity_outflow_1,3,3,Tstart4,Tend5 >= 0
 R1844: sc_commodity_inflow_1,3,3,Tstart4,Tend5 >= 0
 R1845: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity0 >= 0
 R1846: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity1 >= 0
 R1847: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity2 >= 0
 R1848: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity3 >= 0
 R1849: Classic_commodity_outflow_1,3,3,Tstart5,Tend6,Commodity4 >= 0
 R1850: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity0 >= 0
 R1851: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity1 >= 0
 R1852: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity2 >= 0
 R1853: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity3 >= 0
 R1854: Classic_commodity_inflow_1,3,3,Tstart5,Tend6,Commodity4 >= 0
 R1855: sc_commodity_outflow_1,3,3,Tstart5,Tend6 >= 0
 R1856: sc_commodity_inflow_1,3,3,Tstart5,Tend6 >= 0
 R1857: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity0 >= 0
 R1858: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity1 >= 0
 R1859: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity2 >= 0
 R1860: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity3 >= 0
 R1861: Classic_commodity_outflow_1,3,3,Tstart6,Tend11,Commodity4 >= 0
 R1862: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity0 >= 0
 R1863: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity1 >= 0
 R1864: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity2 >= 0
 R1865: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity3 >= 0
 R1866: Classic_commodity_inflow_1,3,3,Tstart6,Tend11,Commodity4 >= 0
 R1867: sc_commodity_outflow_1,3,3,Tstart6,Tend11 >= 0
 R1868: sc_commodity_inflow_1,3,3,Tstart6,Tend11 >= 0
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
 Classic_commodity_outflow_0,2,2,Tstart3,Tend6,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart6,Tend7,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart7,Tend8,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart8,Tend9,Commodity0
 Classic_commodity_outflow_0,2,2,Tstart9,Tend11,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart1,Tend2,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_0,2,3,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart0,Tend1,Commodity0
 Classic_commodity_outflow_0,3,2,Tstart2,Tend3,Commodity0
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
 Classic_commodity_outflow_1,2,2,Tstart3,Tend6,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart6,Tend7,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart7,Tend8,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart8,Tend9,Commodity0
 Classic_commodity_outflow_1,2,2,Tstart9,Tend11,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart1,Tend2,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart2,Tend3,Commodity0
 Classic_commodity_outflow_1,2,3,Tstart3,Tend4,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart0,Tend1,Commodity0
 Classic_commodity_outflow_1,3,2,Tstart2,Tend3,Commodity0
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
 Classic_commodity_inflow_0,2,2,Tstart3,Tend6,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart6,Tend7,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart7,Tend8,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart8,Tend9,Commodity0
 Classic_commodity_inflow_0,2,2,Tstart9,Tend11,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart1,Tend2,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_0,2,3,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart0,Tend1,Commodity0
 Classic_commodity_inflow_0,3,2,Tstart2,Tend3,Commodity0
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
 Classic_commodity_inflow_1,2,2,Tstart3,Tend6,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart6,Tend7,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart7,Tend8,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart8,Tend9,Commodity0
 Classic_commodity_inflow_1,2,2,Tstart9,Tend11,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart1,Tend2,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart2,Tend3,Commodity0
 Classic_commodity_inflow_1,2,3,Tstart3,Tend4,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart0,Tend1,Commodity0
 Classic_commodity_inflow_1,3,2,Tstart2,Tend3,Commodity0
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
 sc_commodity_outflow_0,2,2,Tstart3,Tend6
 sc_commodity_outflow_0,2,2,Tstart6,Tend7
 sc_commodity_outflow_0,2,2,Tstart7,Tend8
 sc_commodity_outflow_0,2,2,Tstart8,Tend9
 sc_commodity_outflow_0,2,2,Tstart9,Tend11
 sc_commodity_outflow_0,2,3,Tstart1,Tend2
 sc_commodity_outflow_0,2,3,Tstart2,Tend3
 sc_commodity_outflow_0,2,3,Tstart3,Tend4
 sc_commodity_outflow_0,3,2,Tstart0,Tend1
 sc_commodity_outflow_0,3,2,Tstart2,Tend3
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
 sc_commodity_outflow_1,2,2,Tstart3,Tend6
 sc_commodity_outflow_1,2,2,Tstart6,Tend7
 sc_commodity_outflow_1,2,2,Tstart7,Tend8
 sc_commodity_outflow_1,2,2,Tstart8,Tend9
 sc_commodity_outflow_1,2,2,Tstart9,Tend11
 sc_commodity_outflow_1,2,3,Tstart1,Tend2
 sc_commodity_outflow_1,2,3,Tstart2,Tend3
 sc_commodity_outflow_1,2,3,Tstart3,Tend4
 sc_commodity_outflow_1,3,2,Tstart0,Tend1
 sc_commodity_outflow_1,3,2,Tstart2,Tend3
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
 sc_commodity_inflow_0,2,2,Tstart3,Tend6
 sc_commodity_inflow_0,2,2,Tstart6,Tend7
 sc_commodity_inflow_0,2,2,Tstart7,Tend8
 sc_commodity_inflow_0,2,2,Tstart8,Tend9
 sc_commodity_inflow_0,2,2,Tstart9,Tend11
 sc_commodity_inflow_0,2,3,Tstart1,Tend2
 sc_commodity_inflow_0,2,3,Tstart2,Tend3
 sc_commodity_inflow_0,2,3,Tstart3,Tend4
 sc_commodity_inflow_0,3,2,Tstart0,Tend1
 sc_commodity_inflow_0,3,2,Tstart2,Tend3
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
 sc_commodity_inflow_1,2,2,Tstart3,Tend6
 sc_commodity_inflow_1,2,2,Tstart6,Tend7
 sc_commodity_inflow_1,2,2,Tstart7,Tend8
 sc_commodity_inflow_1,2,2,Tstart8,Tend9
 sc_commodity_inflow_1,2,2,Tstart9,Tend11
 sc_commodity_inflow_1,2,3,Tstart1,Tend2
 sc_commodity_inflow_1,2,3,Tstart2,Tend3
 sc_commodity_inflow_1,2,3,Tstart3,Tend4
 sc_commodity_inflow_1,3,2,Tstart0,Tend1
 sc_commodity_inflow_1,3,2,Tstart2,Tend3
 sc_commodity_inflow_1,3,2,Tstart5,Tend6
 sc_commodity_inflow_1,3,2,Tstart6,Tend7
 sc_commodity_inflow_1,3,3,Tstart0,Tend2
 sc_commodity_inflow_1,3,3,Tstart2,Tend3
 sc_commodity_inflow_1,3,3,Tstart3,Tend4
 sc_commodity_inflow_1,3,3,Tstart4,Tend5
 sc_commodity_inflow_1,3,3,Tstart5,Tend6
 sc_commodity_inflow_1,3,3,Tstart6,Tend11
End
