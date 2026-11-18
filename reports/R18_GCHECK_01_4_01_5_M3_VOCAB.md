# R18 — GCHECK chain §1.4 → §1.5 → M3 vocabulary

**Date:** 2026-11-16  
**Scope:** `latex/ch01.tex` — gauge/helicity (§1.4), measurement (§1.5), M3 prose tokens  
**Chain:** user-approved execute-all (§1.4 GCHECK → §1.5 GCHECK → M3 sweep)

## §1.4 GCHECK

| Item | Status | Notes |
|------|--------|-------|
| Section shell `sec:ch01.4` + five subsections (4.1–4.5) | ✅ | Labels present through `sec:ch01.4.5` |
| Helicity ≠ OAM / gauge caveat after helicity density | ✅ | §1.4.3 prose |
| 300 MHz gauge example (Coulomb vs Lorenz) | ✅ | §1.4.1 |
| Operational admissibility triad / corollaries table | ✅ | §1.4.4; ref `observable-admissibility-triad` |
| Section closing bridge → §1.5 | ✅ | Added after spin–orbit limits (pre-§1.5) |
| False AM-claim risk (local maps, Belinfante splits) | ✅ | Qualified via `eq:ch1.local-density-qualified-decision`, spin–orbit decision |

**Residual (author optional):** Line-by-line rhetorical pass on §1.4.4–4.5 decision equations (density already high).

## §1.5 GCHECK

| Item | Status | Notes |
|------|--------|-------|
| Section shell `sec:ch01.5` + opening bridge from §1.2–1.4 | ✅ | |
| §1.5.1 field–matter, §1.5.2 stress/torque | ✅ | Labels `sec:ch01.5.1`, `sec:ch01.5.2` |
| §1.5.3 modal limits (Hansen rank / conditioning) | ✅ | No structural change this pass |
| §1.5.4 direct vs inferred | ✅ | Removed subsection-title scaffold paragraph |
| Section closing bridge → §1.6 | ✅ | Replaced one-liner with summative bridge |

## M3 vocabulary sweep

| Token / pattern | Action |
|-----------------|--------|
| `charge-continuous` in **narrative** (admissibility) | → `admissibility` / `charge-compatible` where not Maxwell charge continuity |
| Left in prose (physical): `charge-continuous \Jimp`, `charge continuity` | Kept — physics meaning |
| Equation labels `*-charge-continuous-*` | **Kept** (stable `\eqref` keys) |
| `Progressive admissibility ladder` (§1.0 area) | Prior pass |
| `bookkeeping` / `ledger` / `This subsection establishes` | None in `ch01.tex` |
| Governance tokens `HOME` / `USE SS` in body | None |

## Build

- [ ] `latexmk -pdf main.tex` green (run after this batch; verify TikZ + `sec:ch01.4.*` refs)

## Sign-off gate

Per book workflow: **subsection-by-subsection author approval** still applies for final **LOCK** on §1.4–§1.5; this batch completes the requested **chain execution** (structure, bridges, helicity/OAM guardrails, M3 prose hits).