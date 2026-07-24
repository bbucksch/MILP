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


#Extract Ships and Commodities
def val(x):
    """Safely get Gurobi variable value."""
    try:
        return x.X
    except AttributeError:
        try:
            return x[0].X
        except Exception:
            return float(x)


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
    AllArcs=None,
    payloadflows=None,
    Carryship=None
):
    """
    Returns:
        cargo_df:
            One row per commodity or carried spacecraft on each active vehicle arc.

        ship_df:
            One row per active spacecraft leg, including total outgoing mass.
    """

    cargo_rows = []
    ship_rows = []

    for v, vehicle in enumerate(vehicle_names):
        for i in arcs:
            for j in arcs[i]:
                for t in T_adv:

                    #if not check_destination_window(i, j, t, T_adv, tof):
                    #    continue

                    if AllArcs is not None:
                        if not (
                            (t in AllArcs)
                            and (i in AllArcs[t])
                            and (j in AllArcs[t][i])
                        ):
                            continue

                        t_arrive = AllArcs[t][i][j]["ArrivalTime"]
                    else:
                        t_arrive = t + tof[i][j]

                    n_ships = val(y_outflow[v][i][j][t][0])

                    # Skip arcs without an active carrier spacecraft
                    if n_ships <= tol:
                        continue

                    total_mass_out = 0.0

                    # --------------------------------------------------
                    # 1. Normal commodities
                    # --------------------------------------------------
                    for k, commodity in enumerate(commodity_names):
                        out_quantity = val(x_outflow[v][i][j][t][k])
                        in_quantity = val(x_inflow[v][i][j][t][k])

                        out_mass = out_quantity * CommMass[k]
                        in_mass = in_quantity * CommMass[k]

                        total_mass_out += out_mass

                        if abs(out_mass) <= tol and abs(in_mass) <= tol:
                            continue

                        cargo_rows.append({
                            "vehicle": vehicle,
                            "v": v,
                            "from_node": node_names[i],
                            "to_node": node_names[j],
                            "i": i,
                            "j": j,
                            "t_depart": t,
                            "t_arrive": t_arrive,

                            # Common cargo fields
                            "cargo_type": "commodity",
                            "item": commodity,
                            "quantity": out_quantity,
                            "out_mass": out_mass,
                            "in_mass": in_mass,
                            "mass_change": in_mass - out_mass,

                            # Carried-spacecraft-specific fields
                            "carried_ship_type": None,
                            "carried_ship_index": None,

                            "n_ships": n_ships
                        })

                    # --------------------------------------------------
                    # 2. Carried spacecraft as cargo
                    # --------------------------------------------------
                    if payloadflows is not None and Carryship is not None:
                        for v1 in Carryship:
                            carried_number = val(payloadflows[v][i][j][t][v1])

                            if abs(carried_number) <= tol:
                                continue

                            carried_mass = carried_number * StructMass[v1]
                            total_mass_out += carried_mass

                            cargo_rows.append({
                                "vehicle": vehicle,
                                "v": v,
                                "from_node": node_names[i],
                                "to_node": node_names[j],
                                "i": i,
                                "j": j,
                                "t_depart": t,
                                "t_arrive": t_arrive,

                                # Common cargo fields
                                "cargo_type": "carried_spacecraft",
                                "item": f"Carried SC: {vehicle_names[v1]}",
                                "quantity": carried_number,
                                "out_mass": carried_mass,
                                "in_mass": carried_mass,
                                "mass_change": 0.0,

                                # Carried-spacecraft-specific fields
                                "carried_ship_type": vehicle_names[v1],
                                "carried_ship_index": v1,

                                "n_ships": n_ships
                            })

                    # --------------------------------------------------
                    # 3. Active spacecraft dry mass
                    # --------------------------------------------------
                    active_vehicle_mass = StructMass[v] * n_ships
                    total_mass_out += active_vehicle_mass

                    ship_rows.append({
                        "vehicle": vehicle,
                        "v": v,
                        "from_node": node_names[i],
                        "to_node": node_names[j],
                        "i": i,
                        "j": j,
                        "t_depart": t,
                        "t_arrive": t_arrive,
                        "active_vehicle_mass": active_vehicle_mass,
                        "cargo_mass": total_mass_out - active_vehicle_mass,
                        "total_outgoing_mass": total_mass_out,
                        "n_ships": n_ships
                    })

    return pd.DataFrame(cargo_rows), pd.DataFrame(ship_rows)

def plot_time_space_network(
    legs,
    cargo=None,
    node_order=None,
    title="Time-space spacecraft solution",
    tol=1e-6
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

    merge_cols = [
        "vehicle",
        "v",
        "from_node",
        "to_node",
        "i",
        "j",
        "t_depart",
        "t_arrive"
    ]

    # --------------------------------------------------
    # Build cargo summary for normal commodities + carried spacecraft
    # --------------------------------------------------
    if cargo is not None and not cargo.empty:
        cargo_summary = (
            cargo.pivot_table(
                index=merge_cols,
                columns="item",
                values="out_mass",
                aggfunc="sum",
                fill_value=0
            )
            .reset_index()
        )

        legs_plot = legs.merge(
            cargo_summary,
            on=merge_cols,
            how="left"
        )

        item_cols = [
            c for c in cargo_summary.columns
            if c not in merge_cols
        ]

        for c in item_cols:
            legs_plot[c] = legs_plot[c].fillna(0)

        legs_plot["total_cargo_mass"] = legs_plot[item_cols].sum(axis=1)

        # Also keep quantity summary for carried spacecraft
        carried_summary = (
            cargo[cargo["cargo_type"] == "carried_spacecraft"]
            .pivot_table(
                index=merge_cols,
                columns="item",
                values="quantity",
                aggfunc="sum",
                fill_value=0
            )
            .reset_index()
        )

    else:
        legs_plot = legs.copy()
        item_cols = []
        carried_summary = pd.DataFrame()
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

        print(from_node)
        print(node_y)
        y0 = node_y[from_node] + offsets[vehicle]
        y1 = node_y[to_node] + offsets[vehicle]

        showlegend = vehicle not in used_legend
        used_legend.add(vehicle)

        is_empty = row["total_cargo_mass"] <= tol

        line_width = 2 if is_empty else 4
        line_dash = "dot" if is_empty else "solid"

        hover_lines = [
            f"<b>{vehicle}</b>",
            f"{from_node} → {to_node}",
            f"Depart: day {row['t_depart']}",
            f"Arrive: day {row['t_arrive']}",
            f"Active ships: {row['n_ships']}",
            f"Active vehicle dry mass: {row.get('active_vehicle_mass', 0):.2f} kg",
            f"Cargo + carried spacecraft mass: {row['total_cargo_mass']:.2f} kg",
            f"Total outgoing mass: {row.get('total_outgoing_mass', 0):.2f} kg"
        ]

        if is_empty:
            hover_lines.append("<b>Empty spacecraft transfer</b>")
        else:
            hover_lines.append("")
            hover_lines.append("<b>Cargo and carried spacecraft</b>")

            for item in item_cols:
                mass = row[item]
                if mass <= tol:
                    continue

                if str(item).startswith("Carried SC:"):
                    hover_lines.append(f"{item}: {mass:.2f} kg dry mass")
                else:
                    hover_lines.append(f"{item}: {mass:.2f} kg")

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
    return fig

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
        columns="item",
        values=use,
        aggfunc="sum",
        fill_value=0
    )

    table["total_flow"] = table.sum(axis=1)

    return table.reset_index().sort_values(
        ["t_depart", "from_node", "to_node", "vehicle"]
    )

def propellantUsage(flows):
    prop = flows[flows["item"] == "propellant"].copy()
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

