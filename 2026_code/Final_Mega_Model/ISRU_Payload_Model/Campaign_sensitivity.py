from Model_runner_campaign import build_model


"""
Commodities for campaign mission

"crew",
"crew_return",
"consumables",
"equipment",
"samples",
"propellant_oxygen",
"crew_interim",
ISRUModelvar.packaged_name,
ISRUModelvar.active_name,
"propellant_kerosene",
"maintenance_mass"
"""

#Sensitivity analysis parameters
#format for commodity analysis: dict as follows {0:{commodity name:, i_dem:, t_dem:, demand_change:, i_sup:, t_sup:},...}
#Demand network is defined as [Node][Time][Commodity]

#multi commodity checks have a entries value that tells you how many commodities are achanged together

Commodity = {
    1:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":5, "demand_change":1, "i_sup":0, "t_sup":0}, #original D[3][5][3] = -4200
    2:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":370, "demand_change":1, "i_sup":0, "t_sup":365}, #original D[3][370][3] = -4200
    3:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":735, "demand_change":1, "i_sup":0, "t_sup":730}, #original D[3][735][3] = -4200
    
    4:{"Type":"Single","commodity":"samples", "i_dem":0, "t_dem":13, "demand_change":1, "i_sup":3, "t_sup":8}, #D[0][13][4] = -500,
    5:{"Type":"Single","commodity":"samples", "i_dem":0, "t_dem":378, "demand_change":1, "i_sup":3, "t_sup":373}, #D[0][378][4] = -500,
    6:{"Type":"Single","commodity":"samples", "i_dem":0, "t_dem":743, "demand_change":1, "i_sup":3, "t_sup":738}, #D[0][743][4] = -500,

    7:{"Type":"Multi",'entries':3,"commodity":"crew", "i_dem":3, "t_dem":5, "demand_change":1, "i_sup":None, "t_sup":None}, # D[3][5][0] = -12
    8:{"Type":"Multi",'entries':3,"commodity":"crew_interim", "i_dem":3, "t_dem":8, "demand_change":1, "i_sup":3, "t_sup":5}, # D[3][8][6] = -12
    9:{"Type":"Multi",'entries':3,"commodity":"crew_return", "i_dem":0, "t_dem":13, "demand_change":1, "i_sup":3, "t_sup":8}, # D[0][13][1] = -12
    
    10:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":5, "demand_change":100, "i_sup":0, "t_sup":0}, #D[0][11][5] = -500,
        

    11:{"Type":"Multi",'entries':3,"commodity":"crew", "i_dem":3, "t_dem":370, "demand_change":1, "i_sup":None, "t_sup":None}, # D[3][370][0] = -12
    12:{"Type":"Multi",'entries':3,"commodity":"crew_interim", "i_dem":3, "t_dem":373, "demand_change":1, "i_sup":3, "t_sup":370}, # D[3][373][1] = -12
    13:{"Type":"Multi",'entries':3,"commodity":"crew_return", "i_dem":0, "t_dem":378, "demand_change":1, "i_sup":3, "t_sup":373}, # D[0][378][2] = -12

    14:{"Type":"Single","commodity":"crew", "i_dem":3, "t_dem":5, "demand_change":10, "i_sup":0, "t_sup":0}, # D[3][5][0] = -12
    
    15:{"Type":"Multi",'entries':3,"commodity":"crew", "i_dem":3, "t_dem":735, "demand_change":1, "i_sup":None, "t_sup":None}, # D[3][735][0] = -12
    16:{"Type":"Multi",'entries':3,"commodity":"crew_interim", "i_dem":3, "t_dem":738, "demand_change":1, "i_sup":3, "t_sup":735}, # D[3][738][1] = -12
    17:{"Type":"Multi",'entries':3,"commodity":"crew_return", "i_dem":0, "t_dem":743, "demand_change":1, "i_sup":3, "t_sup":738}, # D[0][743][2] = -12
      
    18:{"Type":"Single","commodity":"equipment", "i_dem":3, "t_dem":5, "demand_change":100, "i_sup":0, "t_sup":0}, #D[0][11][5] = -500,
    19:{"Type":"Single","commodity":"crew", "i_dem":3, "t_dem":5, "demand_change":10, "i_sup":0, "t_sup":0}, # D[3][5][0] = -12
}


context = build_model(optimize=True, vizualize=False, sensitivity_analysis=True,commodity_analysis= Commodity)


print(f"Built {context['model'].ModelName} with {context['model'].NumVars} variables.")

print(context['shadow prices'])

Commodity2 = Commodity
for x in Commodity2.values():
    x["Type"] = "Single"
print(Commodity2)

context2 = build_model(optimize=True, vizualize=False, sensitivity_analysis=True,commodity_analysis= Commodity2)


print(f"Built {context['model'].ModelName} with {context['model'].NumVars} variables.")

for x in context['shadow prices'].keys():
    print(x,context['shadow prices'][x])
print("LINEBREAK")
print(f"Built {context2['model'].ModelName} with {context2['model'].NumVars} variables.")

for x in context2['shadow prices'].keys():
    print(x, context2['shadow prices'][x])