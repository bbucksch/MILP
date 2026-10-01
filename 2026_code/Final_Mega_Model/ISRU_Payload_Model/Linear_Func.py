import math
import numpy as np
import gurobipy as gp
from gurobipy import GRB


def add_log_pwl_1d(model,func,x_lb,x_ub,n_segments,name="pwl",
                   x_var=None,z_var=None,breakpoints=None,
                   forbid_unused_codes=True,verify=True,maxval = True):

    if n_segments < 1:
        raise ValueError("n_segments must be at least 1!!!")

    if breakpoints is None:
        x_bp = np.linspace(x_lb, x_ub, n_segments + 1)
    else:
        x_bp = np.array(breakpoints, dtype=float)
        x_bp = np.sort(x_bp)
        n_segments = len(x_bp) - 1

        if n_segments < 1:
            raise ValueError("breakpoints must contain at least two points!!!")

        x_lb = float(x_bp[0])
        x_ub = float(x_bp[-1])

    n_breakpoints = n_segments + 1

    # Evaluate function at the breakpoints
    z_bp = np.array([float(func(float(x))) for x in x_bp])

    if x_var is None:
        x_var = model.addVar(
            lb=x_lb,
            ub=x_ub,
            vtype=GRB.CONTINUOUS,
            name=f"{name}_x",
        )

    if z_var is None:
        z_var = model.addVar(
            lb=min(z_bp),
            ub=max(z_bp),
            vtype=GRB.CONTINUOUS,
            name=f"{name}_z",
        )

    lam = []

    for k in range(n_breakpoints):
        lam.append(
            model.addVar(
                lb=0,
                ub=1,
                vtype=GRB.CONTINUOUS,
                name=f"{name}_lambda_{k}",
            )
        )

    model.addConstr(
        gp.quicksum(lam[k] for k in range(n_breakpoints)) == 1,
        name=f"{name}_lambda_sum",
    )

    # Interpolation equations
    model.addConstr(
        x_var == gp.quicksum(float(x_bp[k]) * lam[k] for k in range(n_breakpoints)),
        name=f"{name}_x_interp",
    )

    if maxval:
        model.addConstr(
            z_var == gp.quicksum(float(z_bp[k]) * lam[k] for k in range(n_breakpoints)),
            name=f"{name}_z_interp",
        )
    else:
        model.addConstr(
                    z_var <= gp.quicksum(float(z_bp[k]) * lam[k] for k in range(n_breakpoints)),
                    name=f"{name}_z_interp",
                )

    n_bits = (n_segments - 1).bit_length()

    segment_codes = []

    for s in range(n_segments):
        gray = s ^ (s >> 1)
        code = format(gray, f"0{n_bits}b")
        segment_codes.append(code)

    # binary variables for gray-code bits
    y = []

    for b in range(n_bits):
        y.append(
            model.addVar(
                vtype=GRB.BINARY,
                name=f"{name}_graybit_{b}",
            )
        )

    pos_idx = [[] for _ in range(n_bits)]  # lambdas requiring y_b = 1
    neg_idx = [[] for _ in range(n_bits)]  # lambdas requiring y_b = 0

    for k in range(n_breakpoints):
        adjacent_segments = []

        if k > 0:
            adjacent_segments.append(k - 1)

        if k < n_segments:
            adjacent_segments.append(k)

        for b in range(n_bits):
            bit_values = {segment_codes[s][b] for s in adjacent_segments}

            if bit_values == {"1"}:
                pos_idx[b].append(k)

            elif bit_values == {"0"}:
                neg_idx[b].append(k)

            # if bit_values == {"0", "1"}, lambda_k is compatible with both values of this bit, so it is not constrained by y_b

    # add branching constraints
    for b in range(n_bits):
        model.addConstr(
            gp.quicksum(lam[k] for k in pos_idx[b]) <= y[b],
            name=f"{name}_branch_pos_bit_{b}",
        )

        model.addConstr(
            gp.quicksum(lam[k] for k in neg_idx[b]) <= 1 - y[b],
            name=f"{name}_branch_neg_bit_{b}",
        )

    if forbid_unused_codes and n_bits > 0:
        used_codes = set(segment_codes)

        all_codes = {
            format(i, f"0{n_bits}b")
            for i in range(1 << n_bits)
        }

        unused_codes = sorted(all_codes - used_codes)

        for code in unused_codes:
            mismatch_expr = gp.quicksum(
                (1 - y[b]) if code[b] == "1" else y[b]
                for b in range(n_bits)
            )

            model.addConstr(
                mismatch_expr >= 1,
                name=f"{name}_forbid_unused_code_{code}",
            )

    if verify:
        def allowed_lambdas_for_code(code):
            allowed = set(range(n_breakpoints))

            for b, bit in enumerate(code):
                if bit == "0":
                    # if y_b = 0, lambdas requiring y_b = 1 are not allowed
                    allowed -= set(pos_idx[b])
                else:
                    # if y_b = 1, lambdas requiring y_b = 0 are not allowed
                    allowed -= set(neg_idx[b])

            return allowed

        for s, code in enumerate(segment_codes):
            allowed = allowed_lambdas_for_code(code)
            expected = {s, s + 1}

            if allowed != expected:
                raise ValueError("branching verification failed!!!")

    return {
        "x_var": x_var,
        "z_var": z_var,
        "lambdas": lam,
        "binaries": y,
        "breakpoints": x_bp,
        "values": z_bp,
        "segment_codes": segment_codes,
        "pos_idx": pos_idx,
        "neg_idx": neg_idx,
    }