"""
verification.py
================
Post-optimality verification audits for the time-expanded GMCNF Apollo model
(Chen & Ho 2018 reimplementation, ClassicApolloV2dictflow.ipynb).

Every audit here re-derives what the solution *should* satisfy from first
principles (rocket equation, flow accounting, capacities), completely
independently of the Gurobi constraint objects. This is deliberate: if a
constraint was encoded with an indexing/sign mistake, Gurobi will satisfy the
wrong constraint and report OPTIMAL -- only an independent recomputation of
the intended model can catch that.

Usage (in the notebook, in a cell AFTER m.optimize()):

    import sys
    sys.path.append("<folder containing this file>")
    import verification as vf

    report = vf.run_all_audits(globals())
    vf.print_report(report)

All audits return a list of violation dicts (empty list = PASS).
"""

import numpy as np
from collections import defaultdict

TOL = 1e-4          # numerical tolerance for continuous quantities
INT_TOL = 1e-5      # tolerance for integrality checks


# ----------------------------------------------------------------------------
# Helpers to pull solution values out of the notebook's data structures
# ----------------------------------------------------------------------------

def _xval(arr):
    """(p,1) numpy array of gurobi Vars -> 1-D numpy array of floats."""
    return np.array([a[0].X for a in arr])


def _yval(arr):
    """(1,) numpy array holding one gurobi Var -> float."""
    return arr[0].X


def _iter_arcs(AllArcs):
    """Yield (t_depart, i, j, t_arrive, duration) for every arc in AllArcs."""
    for t, nodes in AllArcs.items():
        for i, dests in nodes.items():
            for j, info in dests.items():
                yield t, i, j, info["ArrivalTime"], info["FullTravelTime"]


def _phi(i, j, v, delta_V, I_sp, g_0):
    """Independent recomputation of the propellant mass fraction phi
    (rocket equation), mirroring the intended physics of Eq. (8)."""
    dv = delta_V[i][j]
    if dv <= 0:
        return 0.0
    if I_sp[v] == 0:
        return 1.0
    return 1.0 - np.exp(-(1000.0 * dv) / (I_sp[v] * g_0))


# ----------------------------------------------------------------------------
# AUDIT 1 -- structural time-window check (Eq. 6)
# ----------------------------------------------------------------------------

def audit_time_windows(g):
    """Every arc must depart at a time in the origin node's window and arrive
    at a time in the destination node's window. Since flow variables only
    exist for arcs in AllArcs, verifying AllArcs verifies Eq. (6)."""
    AllArcs, N_Window, TOF = g["AllArcs"], g["N_Window"], g["TOF"]
    violations = []
    for t, i, j, t_arr, dur in _iter_arcs(AllArcs):
        if t not in N_Window[i]:
            violations.append(dict(check="departure outside window",
                                   arc=(i, j, t), window=N_Window[i]))
        if t_arr not in N_Window[j]:
            violations.append(dict(check="arrival outside window",
                                   arc=(i, j, t), arrival=t_arr,
                                   window=N_Window[j]))
        if i != j and dur != TOF[i][j]:
            violations.append(dict(check="transport arc duration != TOF",
                                   arc=(i, j, t), dur=dur, TOF=TOF[i][j]))
        if dur <= 0:
            violations.append(dict(check="non-positive arc duration",
                                   arc=(i, j, t), dur=dur))
    return violations


# ----------------------------------------------------------------------------
# AUDIT 2 -- commodity mass balance at every node/time (Eq. 2)
# ----------------------------------------------------------------------------

def audit_mass_balance(g, tol=TOL):
    """Recompute net commodity flow (out - in) at every (node, window time)
    by accumulating over the FORWARD arc list, i.e. without using the
    notebook's RevAllArcs machinery. Net flow must be <= D[i][t][x]."""
    AllArcs, N_Window, D, X, V = (g["AllArcs"], g["N_Window"], g["D"],
                                  g["X"], g["V"])
    x_out, x_in = g["x_outflow"], g["x_inflow"]
    p = len(X)

    net = defaultdict(lambda: np.zeros(p))
    for t, i, j, t_arr, dur in _iter_arcs(AllArcs):
        for v in range(V):
            net[(i, t)] += _xval(x_out[v][i][j][t])
            net[(j, t_arr)] -= _xval(x_in[v][i][j][t])

    violations = []
    for i in N_Window:
        for t in N_Window[i]:
            for x in range(p):
                lhs = net[(i, t)][x]
                rhs = D[i][t][x]
                if lhs > rhs + tol:
                    violations.append(dict(check="mass balance violated",
                                           node=i, time=t, commodity=x,
                                           net_outflow=lhs, D=rhs))
    return violations


# ----------------------------------------------------------------------------
# AUDIT 3 -- spacecraft balance, incl. carried-spacecraft flows (Eq. 3)
# ----------------------------------------------------------------------------

def audit_sc_balance(g, tol=TOL):
    """Spacecraft accounting per (node, time, vehicle type). A vehicle can
    move either actively (y flow) or as payload inside a carrier
    (SCpayload flow); both count towards the node balance. Mirrors the
    notebook's intent: strict equality for 0 < t < T-1 (no spacecraft may
    vanish mid-campaign), <= d otherwise."""
    AllArcs, N_Window, d, V, T = (g["AllArcs"], g["N_Window"], g["d"],
                                  g["V"], g["T"])
    y_out, y_in = g["y_outflow"], g["y_inflow"]
    pay_out, pay_in = g["SCpayload_Outflow"], g["SCpayload_Inflow"]
    Carriable = g["Carriable"]

    net = defaultdict(float)
    for t, i, j, t_arr, dur in _iter_arcs(AllArcs):
        for v in range(V):
            net[(i, t, v)] += _yval(y_out[v][i][j][t])
            net[(j, t_arr, v)] -= _yval(y_in[v][i][j][t])
            # vehicle v travelling as payload inside any carrier v1
            if v in Carriable:
                for v1 in range(V):
                    net[(i, t, v)] += pay_out[v1][i][j][t][v][0].X
                    net[(j, t_arr, v)] -= pay_in[v1][i][j][t][v][0].X

    violations = []
    for i in N_Window:
        for t in N_Window[i]:
            for v in range(V):
                lhs = net[(i, t, v)]
                rhs = d[i][v][t]
                if 0 < t < T - 1:
                    if abs(lhs - rhs) > tol:
                        violations.append(dict(
                            check="SC balance equality violated (mid-horizon)",
                            node=i, time=t, vehicle=v, net=lhs, d=rhs))
                else:
                    if lhs > rhs + tol:
                        violations.append(dict(
                            check="SC balance violated", node=i, time=t,
                            vehicle=v, net=lhs, d=rhs))
    return violations


# ----------------------------------------------------------------------------
# AUDIT 4 -- arc transformation / rocket equation (Eq. 4, Eq. 8)
# ----------------------------------------------------------------------------

def audit_transformation(g, tol=1e-3):
    """For every arc & vehicle, recompute the expected inflow vector directly
    from the rocket equation and consumable consumption, and compare with the
    solved inflow variables.

    Expected physics (per Chen & Ho Eq. 8 and the notebook's extension):
      crew_in       = crew_out
      cons_in       = cons_out - consumption * duration * crew_out
      equip_in      = equip_out
      sample_in     = sample_out
      prop_in       = (1-phi)*prop_out
                      - phi*(crew_mass*crew + cons + equip + sample)_out
                      - phi*StructureMass[v]*y_out
                      - phi*sum_k StructureMass[k]*payload_k_out
      y_in          = y_out
      payload_k_in  = payload_k_out

    NOTE on duration: consumable consumption *should* scale with the actual
    arc duration (FullTravelTime), which for non-uniform holdover arcs can
    exceed the static TOF[i][j] = 1. The audit first checks against the
    actual duration; on mismatch it re-checks against static TOF and, if
    that matches, flags it as 'uses static TOF' -- i.e. the implementation
    under-consumes on long holdover arcs. That is a modelling finding, not
    a solver error, and is exactly what verification is meant to surface.
    """
    AllArcs, V = g["AllArcs"], g["V"]
    x_out, x_in = g["x_outflow"], g["x_inflow"]
    y_out, y_in = g["y_outflow"], g["y_inflow"]
    pay_out, pay_in = g["SCpayload_Outflow"], g["SCpayload_Inflow"]
    delta_V, I_sp, g_0 = g["delta_V"], g["I_sp"], g["g_0"]
    StructureMass, Carriable = g["StructureMass"], g["Carriable"]
    crew_mass, consumption, TOF = g["crew_mass"], g["consumption"], g["TOF"]
    PropIndex = g["PropIndex"]

    violations = []
    for t, i, j, t_arr, dur in _iter_arcs(AllArcs):
        for v in range(V):
            xo = _xval(x_out[v][i][j][t])
            xi = _xval(x_in[v][i][j][t])
            yo = _yval(y_out[v][i][j][t])
            yi = _yval(y_in[v][i][j][t])
            po = {k: pay_out[v][i][j][t][k][0].X for k in Carriable}
            pi = {k: pay_in[v][i][j][t][k][0].X for k in Carriable}

            ph = _phi(i, j, v, delta_V, I_sp, g_0)

            def expected_inflow(duration):
                exp = xo.copy()
                exp[1] = xo[1] - consumption * duration * xo[0]
                exp[PropIndex] = ((1 - ph) * xo[PropIndex]
                                  - ph * (crew_mass * xo[0] + xo[1]
                                          + xo[2] + xo[3])
                                  - ph * StructureMass[v] * yo
                                  - ph * sum(StructureMass[k] * po[k]
                                             for k in Carriable))
                return exp

        # -- commodity vector ------------------------------------------------
            exp_actual = expected_inflow(dur)
            if np.all(np.abs(xi - exp_actual) <= tol):
                pass
            else:
                exp_static = expected_inflow(TOF[i][j])
                if np.all(np.abs(xi - exp_static) <= tol):
                    if not np.allclose(exp_static, exp_actual, atol=tol):
                        violations.append(dict(
                            check=("consumable consumption uses static TOF, "
                                   "not actual holdover duration"),
                            arc=(i, j, t), vehicle=v, duration=dur,
                            static_TOF=TOF[i][j],
                            inflow=xi.tolist(),
                            expected_actual_duration=exp_actual.tolist()))
                else:
                    violations.append(dict(
                        check="transformation mismatch (rocket eq./consumption)",
                        arc=(i, j, t), vehicle=v, phi=ph,
                        inflow=xi.tolist(),
                        expected=exp_actual.tolist()))

        # -- spacecraft & carried spacecraft are conserved along the arc ----
            if abs(yi - yo) > tol:
                violations.append(dict(check="y inflow != y outflow on arc",
                                       arc=(i, j, t), vehicle=v,
                                       y_out=yo, y_in=yi))
            for k in Carriable:
                if abs(pi[k] - po[k]) > tol:
                    violations.append(dict(
                        check="carried-SC inflow != outflow on arc",
                        arc=(i, j, t), carrier=v, carried=k,
                        out=po[k], inn=pi[k]))
    return violations


# ----------------------------------------------------------------------------
# AUDIT 5 -- concurrency / capacity limits (Eq. 5)
# ----------------------------------------------------------------------------

def audit_concurrency(g, tol=TOL):
    """Recompute the three capacity rows from raw vehicle data:
      1. payload mass (crew, consumables, equipment, samples, carried-SC
         structure) <= PayloadCap[v] * y
      2. propellant <= PropCapacity[v] * y + sum_k PropCapacity[k]*carried_k
         (a carried spacecraft's own tank may hold propellant)
      3. payload mass + propellant <= (PayloadCap[v]+PropCapacity[v]) * y
    Also re-checks the per-arc tank-burn constraint:
      prop_in >= prop_out - PropCapacity[v]
    (only propellant inside the active vehicle's own tank may be burned)."""
    AllArcs, V = g["AllArcs"], g["V"]
    x_out, x_in = g["x_outflow"], g["x_inflow"]
    y_out = g["y_outflow"]
    pay_out = g["SCpayload_Outflow"]
    StructureMass, PayloadCap, PropCapacity = (g["StructureMass"],
                                               g["PayloadCap"],
                                               g["PropCapacity"])
    Carriable, crew_mass, PropIndex = (g["Carriable"], g["crew_mass"],
                                       g["PropIndex"])

    violations = []
    for t, i, j, t_arr, dur in _iter_arcs(AllArcs):
        for v in range(V):
            xo = _xval(x_out[v][i][j][t])
            xi = _xval(x_in[v][i][j][t])
            yo = _yval(y_out[v][i][j][t])
            po = {k: pay_out[v][i][j][t][k][0].X for k in Carriable}

            payload_mass = (crew_mass * xo[0] + xo[1] + xo[2] + xo[3]
                            + sum(StructureMass[k] * po[k] for k in Carriable))
            prop = xo[PropIndex]

            cap_pay = PayloadCap[v] * yo
            cap_prop = (PropCapacity[v] * yo
                        + sum(PropCapacity[k] * po[k] for k in Carriable))
            cap_comb = (PayloadCap[v] + PropCapacity[v]) * yo

            if payload_mass > cap_pay + tol:
                violations.append(dict(check="payload capacity exceeded",
                                       arc=(i, j, t), vehicle=v,
                                       payload_mass=payload_mass,
                                       capacity=cap_pay))
            if prop > cap_prop + tol:
                violations.append(dict(check="propellant capacity exceeded",
                                       arc=(i, j, t), vehicle=v,
                                       propellant=prop, capacity=cap_prop))
            if payload_mass + prop > cap_comb + tol:
                violations.append(dict(check="combined capacity exceeded",
                                       arc=(i, j, t), vehicle=v,
                                       total=payload_mass + prop,
                                       capacity=cap_comb))
            if xi[PropIndex] < xo[PropIndex] - PropCapacity[v] - tol:
                violations.append(dict(
                    check="burned more propellant than own tank capacity",
                    arc=(i, j, t), vehicle=v,
                    burned=xo[PropIndex] - xi[PropIndex],
                    own_tank=PropCapacity[v]))

            # a flow with zero vehicles cannot carry anything
            if yo <= INT_TOL and (payload_mass > tol or prop > tol):
                violations.append(dict(
                    check="commodity flow on arc with zero spacecraft",
                    arc=(i, j, t), vehicle=v,
                    payload_mass=payload_mass, propellant=prop))
    return violations


# ----------------------------------------------------------------------------
# AUDIT 6 -- no self-carrying, non-negativity, integrality
# ----------------------------------------------------------------------------

def audit_variable_domains(g, tol=TOL):
    AllArcs, V, X = g["AllArcs"], g["V"], g["X"]
    x_out, x_in = g["x_outflow"], g["x_inflow"]
    y_out, y_in = g["y_outflow"], g["y_inflow"]
    pay_out = g["SCpayload_Outflow"]
    Carriable = g["Carriable"]

    violations = []
    for t, i, j, t_arr, dur in _iter_arcs(AllArcs):
        for v in range(V):
            xo, xi = _xval(x_out[v][i][j][t]), _xval(x_in[v][i][j][t])
            yo, yi = _yval(y_out[v][i][j][t]), _yval(y_in[v][i][j][t])

            for name, arr in (("x_out", xo), ("x_in", xi)):
                if np.any(arr < -tol):
                    violations.append(dict(check="negative commodity flow",
                                           which=name, arc=(i, j, t),
                                           vehicle=v, values=arr.tolist()))
            # crew is commodity 0 and must be integer
            for name, val_ in (("crew out", xo[0]), ("crew in", xi[0])):
                if abs(val_ - round(val_)) > INT_TOL:
                    violations.append(dict(check="crew not integer",
                                           which=name, arc=(i, j, t),
                                           vehicle=v, value=val_))
            for name, val_ in (("y out", yo), ("y in", yi)):
                if val_ < -tol or abs(val_ - round(val_)) > INT_TOL:
                    violations.append(dict(check="spacecraft count invalid",
                                           which=name, arc=(i, j, t),
                                           vehicle=v, value=val_))
            for k in Carriable:
                pk = pay_out[v][i][j][t][k][0].X
                if pk < -tol or abs(pk - round(pk)) > INT_TOL:
                    violations.append(dict(check="carried-SC count invalid",
                                           arc=(i, j, t), carrier=v,
                                           carried=k, value=pk))
                if k == v and pk > INT_TOL:
                    violations.append(dict(check="vehicle carries itself",
                                           arc=(i, j, t), vehicle=v,
                                           value=pk))
    return violations


# ----------------------------------------------------------------------------
# AUDIT 7 -- demand satisfaction (mission requirements actually met)
# ----------------------------------------------------------------------------

def audit_demand_satisfaction(g, tol=TOL):
    """Every strictly negative entry of D (a demand) must be covered by net
    inflow at that node/time: (in - out) >= |D|. This is the user-facing
    sanity check: did 3 crew actually come home on day 11 with 110 kg of
    samples, and did 420 kg of equipment reach the lunar surface on day 5?"""
    AllArcs, N_Window, D, X, V = (g["AllArcs"], g["N_Window"], g["D"],
                                  g["X"], g["V"])
    x_out, x_in = g["x_outflow"], g["x_inflow"]
    p = len(X)

    net_in = defaultdict(lambda: np.zeros(p))
    for t, i, j, t_arr, dur in _iter_arcs(AllArcs):
        for v in range(V):
            net_in[(i, t)] -= _xval(x_out[v][i][j][t])
            net_in[(j, t_arr)] += _xval(x_in[v][i][j][t])

    violations = []
    for i in N_Window:
        for t in N_Window[i]:
            for x in range(p):
                if D[i][t][x] < 0:
                    delivered = net_in[(i, t)][x]
                    if delivered < -D[i][t][x] - tol:
                        violations.append(dict(check="demand not satisfied",
                                               node=i, time=t, commodity=x,
                                               required=-D[i][t][x],
                                               delivered=delivered))
    return violations


# ----------------------------------------------------------------------------
# AUDIT 8 -- objective value recomputation (Eq. 1, IMLEO)
# ----------------------------------------------------------------------------

def audit_objective(g, tol=1e-2):
    """Recompute IMLEO from the solution: all commodity mass, active
    spacecraft structure mass, and carried spacecraft structure mass leaving
    LEO (node 1) at t = 0, and compare with m.ObjVal."""
    m, AllArcs, V = g["m"], g["AllArcs"], g["V"]
    x_out, y_out = g["x_outflow"], g["y_outflow"]
    pay_out = g["SCpayload_Outflow"]
    CommodityMassConversion = g["CommodityMassConversion"]
    StructureMass, Carriable = g["StructureMass"], g["Carriable"]

    if 0 not in AllArcs or 1 not in AllArcs[0]:
        return [dict(check="no arcs leave LEO at t=0; cannot audit objective")]

    imleo = 0.0
    for v in range(V):
        for j in AllArcs[0][1]:
            xo = _xval(x_out[v][1][j][0])
            imleo += float(np.dot(CommodityMassConversion, xo))
            imleo += StructureMass[v] * _yval(y_out[v][1][j][0])
            for k in Carriable:
                imleo += StructureMass[k] * pay_out[v][1][j][0][k][0].X

    if abs(imleo - m.ObjVal) > tol:
        return [dict(check="objective mismatch",
                     recomputed_IMLEO=imleo, solver_ObjVal=m.ObjVal)]
    return []


# ----------------------------------------------------------------------------
# Runner
# ----------------------------------------------------------------------------

AUDITS = [
    ("Time windows (Eq. 6, structural)", audit_time_windows),
    ("Commodity mass balance (Eq. 2)", audit_mass_balance),
    ("Spacecraft balance incl. carried SC (Eq. 3)", audit_sc_balance),
    ("Arc transformation / rocket equation (Eq. 4/8)", audit_transformation),
    ("Concurrency & capacity limits (Eq. 5)", audit_concurrency),
    ("Variable domains (non-neg., integrality, no self-carry)",
     audit_variable_domains),
    ("Demand satisfaction", audit_demand_satisfaction),
    ("Objective (IMLEO) recomputation (Eq. 1)", audit_objective),
]


def run_all_audits(g):
    """g: the notebook's globals() dict, after m.optimize().
    Returns {audit name: list of violations}."""
    try:
        status = g["m"].Status
    except Exception:
        raise RuntimeError("Model 'm' not found or not built.")
    # Gurobi OPTIMAL == 2; SUBOPTIMAL/feasible incumbents can also be audited
    if not hasattr(g["m"], "ObjVal"):
        raise RuntimeError("No solution available -- run m.optimize() first "
                           f"(model status = {status}).")
    return {name: fn(g) for name, fn in AUDITS}


def print_report(report, max_shown=10):
    print("=" * 72)
    print("VERIFICATION AUDIT REPORT")
    print("=" * 72)
    total = 0
    for name, violations in report.items():
        status = "PASS" if not violations else f"FAIL ({len(violations)})"
        print(f"[{status:>9}]  {name}")
        for viol in violations[:max_shown]:
            print(f"            -> {viol}")
        if len(violations) > max_shown:
            print(f"            ... and {len(violations) - max_shown} more")
        total += len(violations)
    print("-" * 72)
    print(f"TOTAL VIOLATIONS: {total}")
    print("=" * 72)
    return total
