from Model_runner import build_model


"""
Commodities for apollo mission

"crew",
"crew_interim",
"crew_return",
"consumables",
"equipment",
"samples",
"propellant"
"""

#Sensitivity analysis parameters
#format for commodity analysis: dict as follows {0:{commodity name:, i_dem:, t_dem:, demand_change:, i_sup:, t_sup:},...}
#Demand network is defined as [Node][Time][Commodity]

#multi commodity checks have a entries value that tells you how many commodities are achanged together

Commodity = {
    1:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":4, "demand_change":1, "i_sup":None, "t_sup":None}, #original D[3][4][4] = -420
    2:{"Type":"Single","commodity":"samples", "i_dem":0, "t_dem":11, "demand_change":1, "i_sup":None, "t_sup":None}, #D[0][11][5] = -110,
    3:{"Type":"Multi",'entries':3,"commodity":"crew", "i_dem":2, "t_dem":3, "demand_change":1, "i_sup":1, "t_sup":0}, # D[2][3][0] = -1
    4:{"Type":"Multi",'entries':3,"commodity":"crew_interim", "i_dem":2, "t_dem":6, "demand_change":1, "i_sup":2, "t_sup":3}, # D[2][6][1] = -1
    5:{"Type":"Multi",'entries':3,"commodity":"crew_return", "i_dem":0, "t_dem":11, "demand_change":1, "i_sup":2, "t_sup":6}, # D[0][11][2] = -3
    6:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":5, "demand_change":100, "i_sup":None, "t_sup":None}, #D[0][11][5] = -110,
    7:{"Type":"Single","commodity":"crew", "i_dem":3, "t_dem":4, "demand_change":1, "i_sup":1, "t_sup":0}, # D[2][3][0] = -1
}

#remember: at some point, if you increase the demand enough, you need a new ship: thus the difference between 100 and lower equipment increases (exact number not yet found and also not relevant)
commodity2 = {
    1:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":5, "demand_change":100, "i_sup":None, "t_sup":None}, #D[0][11][5] = -110,
    2:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":5, "demand_change":70, "i_sup":None, "t_sup":None}, #D[0][11][5] = -110,
    3:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":5, "demand_change":80, "i_sup":None, "t_sup":None}, #D[0][11][5] = -110,
    4:{"Type":"Single","commodity":"crew", "i_dem":3, "t_dem":4, "demand_change":1, "i_sup":1, "t_sup":0}, # D[2][3][0] = -1

}

context = build_model(optimize=True, vizualize=True, sensitivity_analysis=True,commodity_analysis= commodity2)


print(f"Built {context['model'].ModelName} with {context['model'].NumVars} variables.")

print(context['shadow prices'])