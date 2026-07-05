"""
Compatibility entry point for the V2 payload model with ISRU and MILP design.

The implementation lives in classic_apollo_design_milp.model so the variable,
constraint, and visualization helpers can be read separately.
"""

from classic_apollo_design_milp.model import (
    DesignConfig,
    ISRUConfig,
    NetworkData,
    VehicleData,
    build_model,
    solve_model,
    extract_results,
    visualize_results,
    spacecraft_propulsion_structure_mass,
    spacecraft_structure_mass,
)


if __name__ == "__main__":
    context = build_model()
    print(f"Built {context['model'].ModelName} with {context['model'].NumVars} variables.")
