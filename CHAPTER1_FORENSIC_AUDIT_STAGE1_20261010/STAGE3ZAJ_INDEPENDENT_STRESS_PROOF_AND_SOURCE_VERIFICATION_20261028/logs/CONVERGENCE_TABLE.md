# Stage 3Z-AJ — Engine B convergence (excerpt)

From `ENGINE_B_RESULTS.json` and `ENGINE_B.log`:

| Metric | Value |
|---|---|
| Stress/power quadrature residual (`conv_rel`) | ≈ 1.44×10⁻⁹ |
| Worst random-coefficient power residual (`worst_P_rel`) | ≈ 7.55×10⁻⁸ |
| Worst `J_z/P − m/ω` (`worst_law`) | ≈ 1.04×10⁻¹⁸ |

Quadrature order sweeps are implemented inside Engine B; increase order until `conv_rel` falls below 10⁻⁸ before accepting mixed-mode cases.
