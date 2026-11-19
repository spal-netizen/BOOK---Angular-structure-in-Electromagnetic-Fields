# Chapter 1 — problems and solutions final audit

**Date:** 2026-11-19  
**Sources:** `latex/ch01-problems.tex`, `latex/ch01-problems-solutions.tex`

## Scope

Ten worked problems (§1.8–1.9) checked against corrected main text: \(\exp(+j\omega t)\), outgoing phase, Chu numerics, Theorem 1.5 / Rellich wording, flux dimensions.

## Problem-by-problem summary

| Problem | Focus | Audit result |
|---------|--------|--------------|
| 1(a)–(e) | Poynting, stress, SI | Dimensions consistent with Table 1.1 |
| **1(f)** | Angular-momentum flux units | **CLOSED** — N·m (J) flux, prior fix retained |
| 2 | Green function / retarded | Outgoing \(e^{-jkR}\) consistent with Ch. 1 |
| **3(c)(d)** | Uniqueness, Rellich route | **CLOSED** — \(P_\infty\Rightarrow\mathbf E_\infty\Rightarrow\) VSW; no undefined \(u_\Delta\) |
| 4–5 | Stress and torque integrals | Signs match §1.1.5–1.1.6 |
| **6(c)** | Modal AM interpretation | Qualification language matches main text |
| **7(b)–(d)** | Gauge / helicity | Consistent with corrected §1.4.1 |
| **8** | Outgoing spatial phase | \(e^{-jkr}\) retained |
| **9** | Hertzian dipole | Matches Eqs. dipole radial set |
| **10** | Radiation \(Q\), Chu | **CLOSED** — no obsolete \(0.57+j0.40\) in problems tree |

## Cross-references

Problem hints reference subsections present in `ch01.tex`; no stale §1.6.3 shell comparison after dipole example (main text uses §1.6.4).

## Solutions stronger than hypotheses

No solution invokes existence or full weak trace theory beyond Theorem 1.5 statement.

## Regression

No `deterministic torque`, `bookkeeping`, or obsolete Chu values in solutions file.

**Overall:** **CLOSED WITH QUALIFICATION** on Problems 3(d) and 6(c) where answers cite Stratton/Harrington infrastructure not re-proved in the problem set.