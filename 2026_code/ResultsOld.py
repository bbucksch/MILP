import plotly.express as px
import plotly.graph_objects as go
import pandas as pd
import numpy as np

#TOF tells you the travel times
def check_destination_window(startnode, endnode, tstart, All_nodes, TOF):
    arrival =  TOF[startnode][endnode]+tstart

    if arrival in All_nodes:
        return True
    else:
        return False

def val(x):
    """Safely get Gurobi variable value."""
    try:
        return x.X
    except AttributeError:
        try:
            return x[0].X
        except:
            return float(x)






#Extract Ships and Commodities
def extract_flows(
    x_outflow,
    x_inflow,
    y_outflow,
    arcs,
    node_names,
    vehicle_names,
    commodity_names,
    tof,
    T,
    T_adv,
    CommMass,
    StructMass,
    tol=1e-6,
    
    
):
    rows = []
    
    Shiprows = []

    for v, vehicle in enumerate(vehicle_names):
        for i in arcs:
            for j in arcs[i]:    
                for t in T_adv:
                    if check_destination_window(i,j,t,T_adv,tof):
                        #if t + tof[i][j] in T_adv:
                            #if (t in AllArcs) and (i in AllArcs[t]) and (j in AllArcs[t][i]):
                        
                    
                        
                        
                                n_ships = val(y_outflow[v][i][j][t][0])

                                # Skip unused vehicle arcs
                                if n_ships <= tol:
                                    continue
                                
                                totalmassout = 0
                                #Commodities
                                for k, commodity in enumerate(commodity_names):
                                    out_mass = val(x_outflow[v][i][j][t][k])*CommMass[k] 
                                    in_mass = val(x_inflow[v][i][j][t][k])*CommMass[k]

                                    totalmassout += out_mass

                                    if abs(out_mass) <= tol and abs(in_mass) <= tol:
                                        continue

                                    rows.append({
                                        "vehicle": vehicle,
                                        "v": v,
                                        "from_node": node_names[i],
                                        "to_node": node_names[j],
                                        "i": i,
                                        "j": j,
                                        "t_depart": t,
                                        "t_arrive": t+tof[i][j], #this line must be changed if allarcs is not used
                                        "commodity": commodity,
                                        "out_mass": out_mass,
                                        "in_mass": in_mass,
                                        "mass_change": in_mass - out_mass,
                                        "n_ships": n_ships
                                    })


                                

                                totalmassout += StructMass[v]*n_ships


                                #Ships
                                Shiprows.append({
                                    "vehicle": vehicle,
                                    "v": v,
                                    "from_node": node_names[i],
                                    "to_node": node_names[j],
                                    "i": i,
                                    "j": j,
                                    "t_depart": t,
                                    "t_arrive": t+tof[i][j],
                                    "total_outoging_Mass": totalmassout,
                                    "n_ships": n_ships
                                    })


    return pd.DataFrame(rows), pd.DataFrame(Shiprows)

def plot_time_space_network(
    legs,
    cargo=None,
    node_order=None,
    title="Time-space spacecraft solution"
):
    if legs.empty:
        print("No spacecraft legs found.")
        return

    if node_order is None:
        node_order = list(
            dict.fromkeys(
                list(legs["from_node"]) + list(legs["to_node"])
            )
        )

    node_y = {node: idx for idx, node in enumerate(node_order)}

    # Optional: add cargo summary to each spacecraft leg
    if cargo is not None and not cargo.empty:
        cargo_summary = (
            cargo.pivot_table(
                index=[
                    "vehicle",
                    "v",
                    "from_node",
                    "to_node",
                    "i",
                    "j",
                    "t_depart",
                    "t_arrive"
                ],
                columns="commodity",
                values="out_mass",
                aggfunc="sum",
                fill_value=0
            )
            .reset_index()
        )

        legs_plot = legs.merge(
            cargo_summary,
            on=[
                "vehicle",
                "v",
                "from_node",
                "to_node",
                "i",
                "j",
                "t_depart",
                "t_arrive"
            ],
            how="left"
        )

        commodity_cols = [
            c for c in cargo_summary.columns
            if c not in [
                "vehicle", "v", "from_node", "to_node",
                "i", "j", "t_depart", "t_arrive"
            ]
        ]

        for c in commodity_cols:
            legs_plot[c] = legs_plot[c].fillna(0)

        legs_plot["total_cargo_mass"] = legs_plot[commodity_cols].sum(axis=1)

    else:
        legs_plot = legs.copy()
        commodity_cols = []
        legs_plot["total_cargo_mass"] = 0.0

    fig = go.Figure()

    # Small vertical offsets prevent identical arcs from hiding each other
    vehicles = list(legs_plot["vehicle"].unique())
    offsets = {
        vehicle: (idx - (len(vehicles) - 1) / 2) * 0.06
        for idx, vehicle in enumerate(vehicles)
    }

    used_legend = set()

    for _, row in legs_plot.iterrows():
        vehicle = row["vehicle"]
        from_node = row["from_node"]
        to_node = row["to_node"]

        y0 = node_y[from_node] + offsets[vehicle]
        y1 = node_y[to_node] + offsets[vehicle]

        showlegend = vehicle not in used_legend
        used_legend.add(vehicle)

        # Empty spacecraft legs are still plotted, but thinner/dashed
        is_empty = row["total_cargo_mass"] <= 1e-6

        line_width = 2 if is_empty else 4
        line_dash = "dot" if is_empty else "solid"

        hover_lines = [
            f"<b>{vehicle}</b>",
            f"{from_node} → {to_node}",
            f"Depart: day {row['t_depart']}",
            f"Arrive: day {row['t_arrive']}",
            f"Number of ships: {row['n_ships']}",
            f"Cargo mass: {row['total_cargo_mass']:.2f} kg"
        ]

        if is_empty:
            hover_lines.append("<b>Empty spacecraft transfer</b>")
        else:
            hover_lines.append("")
            hover_lines.append("<b>Commodities</b>")
            for c in commodity_cols:
                if row[c] > 1e-6:
                    hover_lines.append(f"{c}: {row[c]:.2f} kg")

        fig.add_trace(go.Scatter(
            x=[row["t_depart"], row["t_arrive"]],
            y=[y0, y1],
            mode="lines+markers",
            name=vehicle,
            legendgroup=vehicle,
            showlegend=showlegend,
            line=dict(width=line_width, dash=line_dash),
            marker=dict(size=8),
            hovertext="<br>".join(hover_lines),
            hoverinfo="text"
        ))

    fig.update_layout(
        title=title,
        xaxis_title="Time [days]",
        yaxis=dict(
            title="Node",
            tickmode="array",
            tickvals=list(node_y.values()),
            ticktext=list(node_y.keys())
        ),
        height=600,
        hovermode="closest"
    )

    fig.show()
    return

#mass flows table may have extra code in the show file
def make_mass_flow_table(flows, use="out_mass"):
    table = flows.pivot_table(
        index=[
            "t_depart",
            "t_arrive",
            "from_node",
            "to_node",
            "vehicle",
            "n_ships"
        ],
        columns="commodity",
        values=use,
        aggfunc="sum",
        fill_value=0
    )

    table["total_flow"] = table.sum(axis=1)

    return table.reset_index().sort_values(
        ["t_depart", "from_node", "to_node", "vehicle"]
    )

def propellantUsage(flows):
    prop = flows[flows["commodity"] == "propellant"].copy()
    prop["propellant_used"] = prop["out_mass"] - prop["in_mass"]

    prop_by_leg = (
        prop.groupby(["from_node", "to_node", "t_depart", "vehicle"], as_index=False)
        .agg(propellant_used=("propellant_used", "sum"))
    )

    fig = go.Figure()

    for vehicle, group in prop_by_leg.groupby("vehicle"):
        fig.add_trace(go.Bar(
            x=[
                f"{r.from_node}→{r.to_node}<br>day {r.t_depart}"
                for r in group.itertuples()
            ],
            y=group["propellant_used"],
            name=vehicle
        ))

    fig.update_layout(
        title="Propellant used by active transfer leg",
        xaxis_title="Leg",
        yaxis_title="Propellant used [kg]",
        barmode="stack",
        height=500
    )

    fig.show()
    return


def plot_vehicle_gantt(flows, title="Spacecraft activity timeline"):
    legs = (
        flows.groupby(
            ["vehicle", "from_node", "to_node", "t_depart", "t_arrive"],
            as_index=False
        )
        .agg(total_mass=("out_mass", "sum"))
    )

    legs["arc"] = legs["from_node"] + " → " + legs["to_node"]
    legs["vehicle_arc"] = legs["vehicle"] + " | " + legs["arc"]

    # Plotly timeline works best with dates, so use an arbitrary base date.
    base = pd.Timestamp("2000-01-01")
    legs["start"] = base + pd.to_timedelta(legs["t_depart"], unit="D")
    legs["finish"] = base + pd.to_timedelta(legs["t_arrive"], unit="D")

    fig = px.timeline(
        legs,
        x_start="start",
        x_end="finish",
        y="vehicle",
        color="arc",
        hover_data=["total_mass", "t_depart", "t_arrive"],
        title=title
    )

    fig.update_yaxes(autorange="reversed")
    fig.update_layout(
        xaxis_title="Mission day",
        yaxis_title="Vehicle",
        height=500
    )

    fig.show()
    return

