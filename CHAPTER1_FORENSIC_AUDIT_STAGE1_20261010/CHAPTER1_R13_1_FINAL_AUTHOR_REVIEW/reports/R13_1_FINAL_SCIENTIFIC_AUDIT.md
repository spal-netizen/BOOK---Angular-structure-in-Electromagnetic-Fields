# R13.1 final scientific audit — Chapter 1

**Date:** 2026-11-13  
**Branch:** `chapter1/r13.1-final-closure`  
**Role:** Independent re-verification of R13.1 corrections + bounded regression audit (no scope expansion)

## Artifact identity

| Artifact | SHA-256 | Notes |
|----------|---------|--------|
| Author-verified PDF (immutable tag) | `CA5F1972…E35B1` | Tag `chapter1-r13.1-release-ca5f1972` @ `4537f2e` |
| Post–prose-clean TeX (working candidate) | `F9E363B5…3403F` | Removed audit/process phantom labels + TR-064 workspace sentence |
| Post–prose-clean PDF (61 pp) | `F58D279D…24C9` | Rebuilt; citations PASS |
| Prior correction commit | `d18d6e4` | Chu $Z_n$, uniqueness split, Beth phasor, dipole weak forms |
| Release lock commit | `4537f2e` | VSW Maxwell pair, $Q_{\mathrm{LB}}$ scope, problem 3(c) |

## Principal corrections — verification status

| Item | Source/PDF check | Classification |
|------|------------------|----------------|
| **1.1** VSW pair under $e^{+j\omega t}$: $\Delta\mathbf E=\sum(a\mathbf M^+ + b\mathbf N^+)$, $\Delta\mathbf H=(j/\eta_0)\sum(a\mathbf N^+ + b\mathbf M^+)$; curl identities displayed | TeX labels `eq:ch1.vsw-*`; both curls checked algebraically; `ch01_vsw_maxwell_check.py` | **verified and closed** |
| **1.2** Exterior uniqueness chain: lossless vs complex Poynting; passive impedance sign; far-field coefficient annihilation; Rellich **hypothesis** cited | Prose §1.1.3; no existence/continuous dependence claimed | **verified and closed** (scope explicit) |
| **1.3** Chu $\mathcal{Z}_n$ with $[ph^{(2)}]'/(ph^{(2)})$; $Q_{\mathrm{LB}}$ exact ideal $TM_{01}$ | JAP + McLean; TR-064 binary open | **verified and closed** (formula); **major qualification** (TR-064 bytes) |
| **1.4** Problem **3(c)** lossless vs lossy uniqueness split | `ch01-problems.tex`; report typo “2(c)” corrected in reconciliation doc | **verified and closed** |

## Regression audit (§2 command) — summary

| Block | Result |
|-------|--------|
| Maxwell conventions, Green function, Poynting $1/2$ factors | No new defect |
| Distributional dipole + weak curls | `ch01_dipole_weak_form_check.py` PASS |
| Uniqueness identities | `ch01_uniqueness_identity_check.py` PASS |
| Beth SI phasor torque | `ch01_beth_phasor_torque_check.py` PASS |
| Route A/B storage | `ch01_route_b_storage_check.py` PASS |
| Hertzian numerics / $Q_{\mathrm{vol}}$ shell | `ch01_qvol_shell_check.py`, `ch01_dipole_maxwell_checks.py` PASS |
| Equation register | 182 `eq:ch1.*` labels; orphaned Lorenz refs removed in prior pass |

## Figure audit

- **30** figures (1.1–1.30); see `R13_1_FINAL_FIGURE_AUDIT.md`.
- **No** demonstrable defect repaired (bounded policy).
- **Major qualification:** print-resolution certification of every label/arrow **not** closed.

## Prose and structure

- Scientific narrative flow matches command outline (Maxwell → uniqueness → balances → observables → examples → dipole → problems).
- Removed forensic phantom labels (`eq:ch1.report-class-lock`, etc.) and R10 pipeline comment from scholarly TeX.
- Chapter does not read as an audit report; qualifications remain **scientific** (Rellich scope, $Q_{\mathrm{LB}}$ modality, gauge limits).

## Findings ledger

| ID | Finding | Class | Disposition |
|----|---------|-------|-------------|
| F1 | MIT TR-064 binary not authenticated | major scientific qualification | Documented; claims lean on JAP + McLean |
| F2 | Full print figure audit incomplete | major presentation qualification | Register + contact review only |
| F3 | Rellich step not proved in chapter | minor (by design) | Hypotheses + citation retained |
| — | VSW sign/prefactor (prior fatal) | critical (historical) | **closed** in `4537f2e` / verified |
| — | $Q_{\mathrm{LB}}$ mislabeled asymptotic-only | critical (historical) | **closed** |
| — | Problem uniqueness cross-ref | critical (historical) | **closed** (3(c)) |

## Final grade

**B — Scientifically strong and suitable for authorial release of Chapter 1**, with transparent non-critical limitations:

- Chu TR-064 binary authentication open (JAP + McLean support retained claims).
- Figure artwork: consistent style and caption-level review; **not** a complete print-resolution sign-off.

**Not A:** Full primary-source binary pin for TR-064 and per-figure print certification are incomplete.

**Not C:** No unresolved critical Maxwell, uniqueness, or $Q_{\mathrm{LB}}$ scope defects in the release line.

## Release decision

**Chapter 1 is locked** for Volume I continuity. **No R13.2 or further R-series cycle** is recommended unless a new evidence-backed scientific contradiction appears.

Post-lock deliverable PDF for ongoing builds: SHA-256 `F58D279DEE3E3C3A85E25C7A00D45C24FEF83FA2839F9F850CFE827FE6A924C9` (61 pages). Author byte-identical reference remains tag `chapter1-r13.1-release-ca5f1972`.
