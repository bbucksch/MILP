import gurobipy as gp
from gurobipy import GRB
import math
import numpy as np
import matplotlib.pyplot as plt

import copy


def ISRUfunc(x):
    if x < 400:
        return 0
    if x >= 400:
        c1 = -0.438
        c2 = 1- math.exp(x/-812.15163)
        c3 = 1 - math.exp(x/-3967.2644)
        return c1 +(6.9623*c2) + (2.0173*c3)
    

x = list(range(10000))
z  =[ISRUfunc(i) for i in x]



# Number of piecewise-linear segments
n_segments = 1000

# Breakpoints: n_segments segments need n_segments + 1 breakpoints
cornerX = np.linspace(0, 10000, n_segments + 1)

# ISRU productivity, kg O2/year/kg ISRU
cornerNM = np.array([ISRUfunc(M) for M in cornerX])

# Better for logistics: total oxygen production per year
# This avoids later multiplying M_ISRU * NM, which would be nonlinear.
cornerNO = cornerX * cornerNM

#one variable per breakpoint
# Create Model
m = gp.Model("Model_1")


# One lambda per breakpoint
lam = []
for k, M in enumerate(cornerX):
    lam.append(
        m.addVar(
            lb=0,
            ub=1,
            vtype=GRB.CONTINUOUS,
            name=f"lambda_{k}_M_{M:.2f}"
        )
    )

m.addConstr(gp.quicksum(lam) == 1, name="lambda_sum")

# Interpolated ISRU plant mass
M_ISRU = m.addVar(lb=0, ub=10000, vtype=GRB.CONTINUOUS, name="M_ISRU")

# Interpolated oxygen production per year
NO_ISRU = m.addVar(lb=0, vtype=GRB.CONTINUOUS, name="NO_ISRU_per_year")


# Number of binary variables required
# For S segments, need ceil(log2(S)) bits.
n_bits = (n_segments - 1).bit_length()

# Gray-code sequence, one code per segment
segment_codes = []
for s in range(n_segments):
    gray = s ^ (s >> 1)
    code = format(gray, f"0{n_bits}b")
    segment_codes.append(code)
    


print(len(segment_codes))


# Binary variables
y = []
for b in range(n_bits):
    y.append(m.addVar(vtype=GRB.BINARY, name=f"graybit_{b}"))


# Build L and R sets by checking each lambda's adjacent segment codes
pos_idx = [[] for _ in range(n_bits)]  # lambdas constrained by <= y[b]
neg_idx = [[] for _ in range(n_bits)]  # lambdas constrained by <= 1 - y[b]


for k in range(n_segments + 1):
    adjacent_segments = []

    # lambda_k is the right endpoint of segment k-1
    if k > 0:
        adjacent_segments.append(k - 1)

    # lambda_k is the left endpoint of segment k
    if k < n_segments:
        adjacent_segments.append(k)

    #since segment codes are already in binary, you can extract the relevant bit and compare withthe following code
    for b in range(n_bits):
        bit_values = {segment_codes[s][b] for s in adjacent_segments}

        if bit_values == {"1"}:
            pos_idx[b].append(k)

        elif bit_values == {"0"}:
            neg_idx[b].append(k)

        # If bit_values == {"0", "1"}, do nothing.
        # This lambda is compatible with both bit values for this bit.

# Add logarithmic branching constraints
for b in range(n_bits):
    m.addConstr(
        gp.quicksum(lam[k] for k in pos_idx[b]) <= y[b],
        name=f"log_branch_pos_bit_{b}"
    )

    m.addConstr(
        gp.quicksum(lam[k] for k in neg_idx[b]) <= 1 - y[b],
        name=f"log_branch_neg_bit_{b}"
    )