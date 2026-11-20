# Chapter 1 — prioritized correction status (2026-11-20)

Assessment inputs: mathematical foundation before prose; release **not ready** until Priority 1–3 close.

## Priority 1 — §1.4.1 Ampère–Maxwell / scalar consistency

**PDF numbering after rebuild:** (1.105) `eq:ch1.ampere-for-potentials`; (1.106) substituted form; (1.110)–(1.111) divergence chain (formerly cited as 1.109–1.110).

| Step | Action | Status |
|------|--------|--------|
| Ampère from $\curl\H=\Jimp+\jj\omega\varepsilon\E$ | Corrected Eq. (1.105); added explicit substituted form with $-k^2\mathbf{A}$ | **CLOSED** |
| Gauge wave equation | Unchanged bracket $\nabla(\nabla\cdot\mathbf{A}+\jj\omega\mu\varepsilon\phi)$; follows from corrected (1.105) | **CLOSED** |
| Div consistency (1.109–1.110) | Re-derived from substituted Ampère; equivalent form with $-\jj\omega\mu\rho$ | **CLOSED** |
| Lorenz/Coulomb | Scalar (1.111) from Gauss; vector (1.108) unchanged | **CLOSED** |

Evidence: `eq:ch1.ampere-for-potentials-substituted`, updated `ampere-div-potentials`.

## Priority 2 — Theorem 1.5/1.6 (exterior uniqueness)

| Step | Status |
|------|--------|
| Regularity in statement | **CLOSED** |
| PEC/PMC/zero flux in proof | **CLOSED** — explicit in proof body |
| Far-field $\mathcal{P}_\infty$ | **CLOSED** |
| VSW + Faraday $\jj/\eta_0$ factor | **CLOSED** |
| Rellich | **CLOSED WITH QUALIFICATION** (cited Maxwell continuation) |

## Priority 3 — §§1.1.5–1.1.6 balances

| Item | Status |
|------|--------|
| $\exp(+\jj\omega t)$ curl signs | **CLOSED** — aligned with Eqs. (1.1)–(1.2) centre |
| Dipole spherical verification | **CLOSED** — displayed in §1.6.4 |
| Route A / vacuum shell torque | **CLOSED** — prior pass retained |

## Priority 4 — §1.4.2 duality

| Item | Status |
|------|--------|
| $\eta=\sqrt{\mu/\varepsilon}$ | **CLOSED** — stated in equation block |
| Maxwell curl invariance | **CLOSED** — inline verification added |

## Priority 5 — Modal vs stress (§§1.2, 1.6.1–1.6.2)

| Item | Status |
|------|--------|
| Remark admissibility | **CLOSED** |
| §1.6.2 modal vs $\Gamma_R$ | **CLOSED** — explicit sentence |

## Priority 6 — §1.6.4 dipole / Chu

| Item | Status |
|------|--------|
| Fields + curls | **CLOSED** |
| $|P_{\mathrm{reac}}|/P_{\mathrm{rad}}\approx(kr)^{-3}$ | **CLOSED** — numeric example |
| $z_1(0.5)$, $Q_{\mathrm{LB}}$ | **CLOSED** |

## Priority 7 — Figures

| Item | Status |
|------|--------|
| Print-scale QA all 30 | **PASS (source)** — `CHAPTER1_FIGURE_PRINT_QA_20261120.md`; author zoom on Fig.~1.25 optional |

## Priority 8 — Prose §§1.0–1.7

| Item | Status |
|------|--------|
| §§1.2–1.6 repetition pass | **CLOSED WITH QUALIFICATION** (2026-11-20 reports) |

## Priority 9 — Problems §§1.8–1.9

| Item | Status |
|------|--------|
| Full worked solutions Problems 1–10 | **CLOSED** — `ch01-problems-solutions.tex` (§1.9 worked solutions) |

## Priority 10 — Bibliography

| Item | Status |
|------|--------|
| Chu TR-064 note shortened | **CLOSED** |

## Release decision

**NOT RELEASE READY (conservative)** — Priorities 1–6, 9 **CLOSED**; Priority 7 **source PASS** + optional author zoom on Fig.~1.25; Priority 8–10 partial. Rellich step remains qualified in theorem proof.

**PDF:** `VOLUME_I_RELEASE/CHAPTER1_FINAL_BENCHMARK_20261120.pdf` (70 pp; rebuilt 2026-11-20).