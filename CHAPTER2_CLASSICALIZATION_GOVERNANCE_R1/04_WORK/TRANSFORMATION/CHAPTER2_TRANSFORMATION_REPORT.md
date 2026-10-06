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
