network=None, vehicle_data=None, Demands=None, V_demands=None, isru_config=None,
                isru_prod_model=ISRU_total_annual_output,
                commodities=None, model_name="MissionPlanning+ISRU", optimize=False, vizualize=False,
                sensitivity_analysis=False, commodity_analysis=None):
    network = network or NetworkModel(campaign=False)
    vehicle_data = vehicle_data or VehicleModel()
    isru_config = isru_config or ISRUModel()
    Commodities = commodities or define_com