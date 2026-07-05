"""
Results helpers for the design-enabled V2 payload model.

The design model optimizes spacecraft dry mass, so this module passes the
optimized s_v values to Results.extract_flows instead of the fixed dry masses
from the original notebook data.
"""

import numpy as np


DEFAULT_NODE_NAMES = ["PAC", "LEO", "LLO", "LS"]
DEFAULT_NODE_ORDER = ["PAC", "LEO", "LLO", "LS"]


def _results_module():
    import Results

    return Results


def _value(x, fallback=None):
    try:
        return float(x.X)
    except AttributeError:
        return fallback if fallback is not None else float(x)


def design_structure_masses(ctx):
    """Return optimized design dry masses, falling back before optimization."""
    return np.array([
        _value(
            ctx["design_vars"]["structure_mass"][v],
            fallback=float(ctx["vehicle_data"].structure_mass[v]),
        )
        for v in range(ctx["V"])
    ])


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
        StructMass=design_structure_masses(ctx),
        payloadflows=ctx["scpayload_outflow"],
        Carryship=ctx["carriable"],
    )
    return cargo_flows, ship_flows


def design_table(ctx):
    """Small table of optimized spacecraft design variables."""
    Results = _results_module()
    pd = Results.pd
    rows = []
    for v in range(ctx["V"]):
        rows.append({
            "vehicle_index": v,
            "payload_capacity": _value(ctx["design_vars"]["payload_capacity"][v]),
            "propellant_capacity": _value(ctx["design_vars"]["propellant_capacity"][v]),
            "structure_mass": _value(ctx["design_vars"]["structure_mass"][v]),
        })
    return pd.DataFrame(rows)


def visualize_results(
    ctx,
    node_names=None,
    vehicle_names=None,
    commodity_names=None,
    node_order=None,
    title="Apollo ISRU design optimized time-space logistics solution",
    show_plots=True,
):
    cargo_flows, ship_flows = extract_results(
        ctx,
        node_names=node_names,
        vehicle_names=vehicle_names,
        commodity_names=commodity_names,
    )

    Results = _results_module()
    node_order = node_order or DEFAULT_NODE_ORDER
    network_fig = None
    gantt_fig = None
    mass_table = Results.make_mass_flow_table(cargo_flows, use="out_mass")
    designs = design_table(ctx)

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
            title="Apollo ISRU design spacecraft activity",
        )

    return {
        "cargo_flows": cargo_flows,
        "ship_flows": ship_flows,
        "mass_table": mass_table,
        "design_table": designs,
        "network_fig": network_fig,
        "gantt_fig": gantt_fig,
    }
