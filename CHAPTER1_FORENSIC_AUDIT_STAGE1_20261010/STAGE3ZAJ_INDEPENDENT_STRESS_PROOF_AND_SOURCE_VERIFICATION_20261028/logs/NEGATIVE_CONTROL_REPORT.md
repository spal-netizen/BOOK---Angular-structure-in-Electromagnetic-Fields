# Stage 3Z-AJ — Engine negative controls

## Engine A

| Control | Expected | Observed |
|---|---|---|
| Complex negation `(N×M*)_r = -(M×N*)_r` | **Must fail** | `complex_sum ≈ 0.20` (nonzero) |
| `Re[(M×N*)+(N×M*)]_r` | 0 pointwise | `Re_sum = 0` |
| Omit integrated mixed P formula | N/A | `mixed_P_rel ≈ 6×10⁻¹⁰` vs `(|a|²+|b|²)P₀` |

## Engine B

| Control | Expected | Observed |
|---|---|---|
| Incoming Hankel branch | Negative outgoing power | `incoming_P ≈ -8.27×10⁴` W (scale test) |
| Deliberate conjugation error | Large deviation from law | `noconj_delta ≈ 1` (detected) |
| `J_z/P` vs `m/ω` | Match at convergence | `worst_law ≈ 10⁻¹⁸` |

Full stdout: `ENGINE_A.log`, `ENGINE_B.log`. JSON: `../ENGINE_A_RESULTS.json`, `../ENGINE_B_RESULTS.json`.
