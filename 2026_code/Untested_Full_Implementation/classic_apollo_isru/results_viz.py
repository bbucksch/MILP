"""
Results extraction and visualization for the classic payload-sharing ISRU model.

This mirrors the original ClassicApolloV2dictflow notebook result section and
passes carried-spacecraft payload flows into Results.extract_flows().
"""

DEFAULT_NODE_NAMES = ["PAC", "LEO", "LLO", "LS"]
DEFAULT_NODE_ORDER = ["PAC", "LEO", "LLO", "LS"]


def _results_module():
    """Import Results.py only when result extraction or plotting is requested."""
    import Results

    return Results


def default_vehicle_names(ctx):
    return [f"Vehicle {v}" for v in range(ctx["V"])]


def extract_results(ctx, node_names=None, vehicle_names=None, commodity_names=None):
    node_names = node_names or DEFAULT_NODE_NAMES
    vehicle_names = vehicle_names or default_vehicle_names(ctx)
    commodity_names = commodity_names or ctx["commodity_names"]
    Results = _results_module()

    cargo_flows, ship_flows = Results.extract_flows(
        x_outflow=ctx["x_outflow"],
        x_inflow=ctx["x_inflow"],
        y_outflow=ctx["y_outflow"],
        arcs=ctx["connections"],
        node_names=node_names,
        vehicle_names=vehicle_names,
        commodity_names=commodity_names,
        tof=ctx["network"].tof,
        T=ctx["network"].T,
        T_adv=list(range(ctx["network"].T)),
        CommMass=ctx["mass_conversion"],
        AllArcs=ctx["all_arcs"],
        StructMass=ctx["vehicle_data"].structure_mass,
        payloadflows=ctx["scpayload_outflow"],
        Carryship=ctx["carriable"],
    )
    return cargo_flows, ship_flows


def visualize_results(
    ctx,
    node_names=None,
    vehicle_names=None,
    commodity_names=None,
    node_order=None,
    title="Apollo ISRU optimized time-space logistics solution",
    show_plots=True,
):
    cargo_flows, ship_flows = extract_results(
        ctx,
        node_names=node_names,
        vehicle_names=vehicle_names,
        commodity_names=commodity_names,
    )

    node_order = node_order or DEFAULT_NODE_ORDER
    network_fig = None
    gantt_fig = None
    Results = _results_module()
    mass_table = Results.make_mass_flow_table(cargo_flows, use="out_mass")

    if show_plots:
        network_fig = Results.plot_time_space_network(
            ship_flows,
            cargo_flows,
            node_order=node_order,
            title=title,
        )
        Results.propellantUsage(cargo_flows)
        gantt_fig = Results.plot_vehicle_gantt(
            cargo_flows,
            title="Apollo ISRU spacecraft activity",
        )

    return {
        "cargo_flows": cargo_flows,
        "ship_flows": ship_flows,
        "mass_table": mass_table,
        "network_fig": network_fig,
        "gantt_fig": gantt_fig,
    }
