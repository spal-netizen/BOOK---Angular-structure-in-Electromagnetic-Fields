# Chapter 2 — Stage 2 Transformation Report

**Date:** 2026-10-05  
**Stage:** 2 — governance + reconciliation + architecture (no manuscript edits)

---

## A. Scientifically sound — must survive

- Operator chain \(\mathcal{S}_\omega\), \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\), \(\mathcal{R}_\omega\).  
- Admissibility screen \(\mathcal{D}_J\), charge continuity linkage to Ch.1.  
- Retarded causality ↔ harmonic specialization.  
- Outgoing Sommerfeld class, \(\mathcal{O}_{\mathrm{out}}\) idempotency on \(\mathcal{F}_{\mathrm{SF}}\).  
- Green dyadic, outgoing branch selection, radiation integral structure.  
- Near / far partitioning, radiated power via Poynting (with convention reconciliation).  
- \(\ker\mathcal{R}_\omega\), NR sources, evanescent non-reconstructability.  
- Lorentz reciprocity (operator form).  
- Plane-wave angular spectrum action of \(\mathcal{R}_\omega\).  
- Worked examples §2.10 (physics core).  
- §2.11 forward inheritance to Ch.3–4.

---

## B. Scientifically sound — over-formalized

- Full §2.1 Sobolev/adjoint taxonomy (Classes B–C).  
- Formal spectral projectors on \(\widehat{\mathcal{F}}_\Omega\) before Ch.3 (~3316).  
- Repeated operator domain displays mirroring same composition law.  
- Multiple finite-rank rank-cap equations (same inequality restated).  
- Graph norm / self-adjoint extension pathway for general reader (§2.1.4).

---

## C. Repetitive

- Compact-range vignette boilerplate (**86** `physicalvignette` instances).  
- Stratton/Harrington historical opener duplicated in §2.0 / §2.0.1 / §2.4.2.  
- Operator composition Eqs. repeated (`eq:ch2.radiation-operator-def`, `measurement chain-composition`, etc.).  
- “Measurement chain” TikZ figures (~15+) with similar node topology.

---

## D. Misplaced (relocate / defer)

| Material | Disposition |
|----------|-------------|
| Rotational spectral degeneracy (§2.6.3) | **Defer** detail to Ch.3 — motivate only |
| VSH / SO(3) completeness mentions | **Defer** — Ch.3 HOME |
| Deep realizability / synthesis | **Defer** — Ch.4 |
| Rigged Hilbert projector proofs | **Defer** — Ch.3 subsections cited in text |

---

## E. Mathematically questionable / conditional (do not strengthen)

- “Orthogonal projection” language for \(\Pi_{\mathrm{rad}}\) on \(\mathcal{F}_\Omega\) — **overstated** (see reconciliation).  
- Idempotency on \(\mathcal{F}_\Omega\) without Sommerfeld — **false** (text partially qualifies).  
- Illustrative “~10×” reactive overstated power — **not universal**.  
- Formal projectors — **conditional** until Ch.3.  
- **CH2-D012:** Green sign audit **blocked** on AD-001.

---

## F. Requires author decision

See `04_WORK/DECISIONS/CHAPTER2_AUTHOR_DECISIONS.md`:

- **AD-001** Time convention (critical path)  
- **AD-002** \(\mathcal{Q}_\omega\) notation  
- **AD-003** \(\Pi_{\mathrm{rad}}\) terminology  
- **AD-004** Figure / PDF map  
- **AD-005** Governance package files  
- **AD-006** Angular-momentum flux depth  
- **AD-007** `book-consistency.mdc` alignment with AD-001  

---

## G. Belongs in Chapter 3

- SO(3) representation theory, angular momentum operators.  
- Vector spherical harmonics, modal normalization/completeness.  
- Rigged completion of spectral projectors.  
- Detailed rotational covariance of radiation operators.

---

## H. Belongs in Chapter 4

- Source realizability and synthesis constraints.  
- Singular-value realizability, effective dimension (full treatment).  
- Detailed reconstruction algorithms beyond rank/null-space **statement**.

---

## I. Scaffolding to remove from final prose (preserve underlying physics)

- `% PHYSICAL-MEMORY:*` comments.  
- `physicalvignette` template paragraphs (replace with ≤1 classical lab paragraph where needed).  
- Governance/deferral narration (“this subsection establishes…”, “Subsection X states the formal…”).  
- Artificial continuity equations and report-style classification blocks (analogous to \(A_{\mathrm{ch2}}^{(\mathrm{report})}\) if present in later sections).  
- Duplicate measurement-chain prose tying every section to rank \(N\) before physics warrants it.

---

## J. Final classical Chapter 2 — continuous read (target feel)

A bounded admissible current fixes a Maxwell problem. Green’s retarded solution propagates that current’s field, but open domains still admit non-physical incoming partners until an outgoing condition selects the radiating branch. Only then does a far-zone transverse \(1/r\) field become meaningful; the radiation map \(\mathcal{R}_\omega\) is exactly that selection applied to the Maxwell solution. Finite apertures and probes cannot resolve arbitrary source detail: null spaces and rank limits explain invisible currents and ambiguous inversion. Reciprocity ties transmission to reception. The angular spectrum expresses the same radiative content direction by direction, preparing the harmonic labeling of Chapter 3. The voice is calm, Maxwell-first, with mathematics entering when the physical question demands it—matching the **methodological** benchmark of Chapter 1 MICROR1-R3B, not its section clone.

---

## K. Transformation dependencies (ordered)

1. AD-001 approved → sign reconciliation pass (Ch.2 TeX + governance files).  
2. AD-004 → figure merge list + optional build manifest.  
3. AD-002, AD-003 ratified → single notation pass.  
4. Execute architecture in `CHAPTER2_ARCHITECTURE_PLAN.md` (one prose pass).  
5. Verify: defect ledger CLOSED items only after author review.  
6. Build PDF vs baseline intent (new SHA recorded, not overwriting immutable baseline).

---

## L. Files changed in Stage 2

**Governance / records only:**

- `01_GOVERNANCE/GOVERNANCE_PACKAGE_GAP_REPORT.md` (updated)  
- `01_GOVERNANCE/vol-i-time-convention_CH1_SNAPSHOT_REFERENCE.tex` (reference copy)  
- `01_GOVERNANCE/AGENTS_README_CH1_ARCHIVE_REFERENCE.md` (reference copy)  
- `03_RECORDS/BASELINE/CHAPTER2_DEFECT_LEDGER.md`  
- `03_RECORDS/BASELINE/CHAPTER2_NOTATION_MAP.md`  
- `03_RECORDS/BASELINE/CHAPTER2_FIGURE_AUDIT.md`  
- `03_RECORDS/ARCHITECTURE/CHAPTER2_ARCHITECTURE_PLAN.md` (new)  
- `03_RECORDS/RECONCILIATION/CHAPTER2_RECONCILIATION.md` (new)  
- `04_WORK/DECISIONS/CHAPTER2_AUTHOR_DECISIONS.md` (new)  
- `04_WORK/TRANSFORMATION/CHAPTER2_TRANSFORMATION_REPORT.md` (this file)

**Not changed:** `latex/ch02.tex`, `latex/ch01.tex`, immutable PDF, Chapter 1 archive.

---

## M. Single-pass readiness

**Ready when:** AD-001, AD-004, AD-005 resolved; AD-002/AD-003 ratified or overridden in writing.

**Not ready for:** prose transformation until author reviews this report + reconciliation + architecture.

---

## Stage 3 R2 addendum (2026-10-06)

**Executed:** Controlled classical transformation (R2 master command). See `CURSOR_COMMAND_REPORT_STAGE3_R2.md`.

| Category | Outcome |
|----------|---------|
| **Transformed** | Full recomposition into `latex/ch02-classical/`; first-principles derivations for Maxwell→wave eq., Green, Sommerfeld, far-field expansion, Poynting power, \(\Pi_{\mathrm{rad}}\)/\(\mathcal{R}_\omega\)/\(\Qomega\), null space, Lorentz reciprocity, dispersion, dipole example |
| **Preserved (science)** | Operator chain, NR/null-space physics, reciprocity, angular-spectrum role, Ch.~3/4 bridges |
| **Compressed** | 86 vignettes, 53→6 figures (interim), operator-chain duplication |
| **Reorganized** | §2.1–2.12 classical spine per architecture plan |
| **Newly derived** | Eqs. `ch2.R-expansion`, `ch2.dyadic-free-space`, `ch2.kz-dispersion`, `ch2.power-sphere`, expanded Lorentz steps |
| **Scientifically corrected** | None marked CLOSED; signs tied to +j convention and Eq.~\eqref{eq:ch1.maxwell-local} |
| **Unchanged** | Ch.~1 TeX; immutable baseline PDF |
| **Unresolved** | AD-004 figures; AD-005 governance; archive bulk migration (~13k lines) |
| **Limitation** | Chapter length substantially below pre-transform; **Pass 1b migration** required for full scientific mass |

---

## Stage 3B-R1 addendum (2026-10-07)

**Executed:** Scientific preservation + classical expansion on R2 spine (not Stage 4; not frozen).

| Category | Outcome |
|----------|---------|
| **Preservation matrix** | `CHAPTER2_SCIENTIFIC_PRESERVATION_MATRIX_STAGE3B_R1.md` (57 archive blocks + global ledger) |
| **Manuscript** | `latex/ch02-classical/` expanded **403 → ~690** source lines; **10** parts; **~50+** `eq:ch2.*` labels; **9** TikZ figures |
| **Recovered / expanded** | Scalar Helmholtz Green; H(curl)/Fredholm; full Hertzian dipole + \(P_{\mathrm{rad}}\); NR constructive examples; Lorentz surface step; SVD / \(\mathcal{K}_\omega\) / aperture decay; plane-wave spectrum integrals; Problems A–F |
| **Compressed without loss** | 86 vignettes / PHYSICAL-MEMORY (physics in examples) |
| **Still open** | Archive depth (~13k lines): time-domain §2.2 detail, full dyadic derivation steps, §2.6 eigenfunction catalog, rotation degeneracy, momentum/angular-momentum flux, many archive figures |
| **Build** | `main-ch02-only.tex` compile attempted (long Ch.1+2 run) |
| **Not done** | Stage 4 reconciliation; canonical freeze; full checklist XLIII–XLVIII sign-off |

See `CURSOR_COMMAND_REPORT_STAGE3B_R1.md`.

---

## Stage 3B-R1b addendum (2026-10-07)

**Executed:** Controlled tranche — time/frequency chain, dyadic singularity, spectral/rotational core.

| Movement | Manuscript | Outcome |
|----------|------------|---------|
| R1b-1 | `part01b-time-frequency-chain.tex` | TD Maxwell, continuity, harmonic reduction (+j), retarded form, Laplace link, light-cone figure |
| R1b-2 | `part02b-dyadic-derivation-singularity.tex` | \(\mathcal{W}_E\), dyadic inverse, \(E_i\)–\(G_{ij}\), singular expansion, sing/reg split |
| R1b-3 | `part10-spectral-rotational-core.tex` | Radiation modes, multipole motivation, rotation commutation, Ch.3 bridge |

See `STAGE3B_R1B_DEPENDENCY_MAP.md` and `CURSOR_COMMAND_REPORT_STAGE3B_R1B.md`. **Chapter 2 not frozen.**

---

## Stage 3B-R1c addendum (2026-10-07)

**Executed:** Scientific completeness tranche — Duhamel, eigenpairs, Fredholm, reconciliation, targeted depth.

| Item | Outcome |
|------|---------|
| R1c-1 | `part01c-duhamel-semigroup.tex` |
| R1c-2 | `part10c-eigenfunction-spectral.tex` |
| R1c-3 | `part11-fredholm-solvability.tex` |
| R1c-4 | `STAGE3B_R1C_COMPLETENESS_MAP.md`; preservation matrix R1c rows |
| R1c-5 | Cross-links; Problem G; **no** global rewrite |
| CH2-D015 | Function-complete spine; residual flux/examples/figures |

See `CURSOR_COMMAND_REPORT_STAGE3B_R1C.md`. **Chapter 2 not frozen.**

---

## Stage 3B-R1d addendum (2026-10-07)

**Executed:** Final Stage-3 scientific tranche — momentum/angular-momentum flux, example recovery, figure reconciliation (partial), continuity bridges, pre–Stage-4 gate.

| Item | Outcome |
|------|---------|
| R1d-A/B | `part12-momentum-angular-momentum-flux.tex`; USE Ch.1 Maxwell stress |
| R1d-B examples | `part05` §2.11.3–2.11.5 (loop, evanescent, outgoing) |
| R1d-C figures | **16** TikZ; new `fig:ch2.momentum-flux-sphere`; AD-004 open |
| R1d-D continuity | Bridges in part02, part08; Problem A |
| R1d-E gate | **B — READY FOR STAGE 4 WITH MINOR SCIENTIFIC ERRATA** |
| CH2-D015 | Final disposition in `STAGE3B_R1D_FINAL_SCIENTIFIC_CLOSURE_MAP.md` |

See `CURSOR_COMMAND_REPORT_STAGE3B_R1D.md`. **Stage 4 not started. Chapter 2 not frozen.**

---

## Stage 4 addendum (2026-10-08)

**Executed:** Forensic reconciliation + controlled repair (continuity, convention prose, dedupe).

| Item | Outcome |
|------|---------|
| 4A | `CHAPTER2_STAGE4_FORENSIC_RECONCILIATION.md` |
| 4B | Split `part02-near-far-radiated-power.tex`; reorder `ch02.tex`; subsection fixes; null-space order |
| Acceptance | **ACCEPTED WITH MINOR ERRATA** |

See `CURSOR_COMMAND_REPORT_STAGE4.md`. **Chapter 2 not frozen.**

---

## Stage 5 addendum (2026-10-08)

**Executed:** Independent whole-chapter audit + targeted repair (section hierarchy, input order).

| Item | Outcome |
|------|---------|
| Pass A | `CHAPTER2_STAGE5_INDEPENDENT_AUDIT.md` |
| Pass B | §2.7 section fix; spectrum before SVD; `main-ch02-classical-only.tex` |
| Acceptance | **ACCEPTED WITH MINOR ERRATA** |

See `CURSOR_COMMAND_REPORT_STAGE5.md`. **Chapter 2 not frozen.**
