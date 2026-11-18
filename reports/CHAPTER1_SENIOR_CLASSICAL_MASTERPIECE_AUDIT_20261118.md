# Chapter 1 — senior classical electromagnetic literature audit

**Artifact:** `VOLUME_I_RELEASE/CHAPTER1_BENCHMARK_20261118.pdf` (68 pp; Pass 7 benchmark)  
**Source:** `latex/ch01.tex`, `ch01-problems.tex`, `ch01-problems-solutions.tex`  
**Auditor stance:** Permanent contribution to classical EM literature (not “competent monograph” only)  
**Date:** 2026-11-18 (post Pass 7 — P0 A4 doc + Chu TR-064 concordance; P1 voice + hyperref hygiene)

---

## 1. Executive verdict (strict, candid)

**Overall grade (Pass 7): A− on science (unchanged); literary voice **A−** (up from B+); Chu bar **A−** (up from B) with concordance remark — full **A+** reserved for author read + A4 print + MIT PDF page pin.**

Chapter 1 **does** possess a defensible **authoritative voice** grounded in Beth’s torque experiment, Maxwell’s equations in SI, outgoing selection, and stress–flux observables. It meets or exceeds many **Harrington** and **Jackson** expectations on boundary-value discipline, dimensional hygiene, and radiation fluxes. It **exceeds Griffiths** in scope and **matches Stratton** in density of integral identities and spherical geometry. Pass 7 folds §1.2 opening material into **continuous monograph prose** and trims §1.1 narrative without dropping theorems.

It **does not yet** fully match the **ease and arc compression** of a Griffiths chapter or the **unified operator spine** of a mature Jackson chapter. **Chu** ladder detail is now **explicitly mapped** to JAP + TR-064 in `rem:ch1.chu-tr064-concordance`, but **byte-level DSpace authentication** remains an author gate. **Felsen**-style $k\to\infty$ narrative is still distributed across zones and forward pointers rather than one ascending thread.

**Timeless masterpiece claim:** **Author-review benchmark supportable** on manuscript + build hygiene (`CHAPTER1_BENCHMARK_20261118.pdf`). **Public “timeless shelf” claim** still requires (i) author A4 certification on Figs. 1.1, 1.14, 1.30, (ii) optional MIT TR-064 page pin, (iii) your independent line read for Stratton/Harrington diction in §1.1 proofs (length remains graduate-dense by design).

---

## 2. Fair comparison — what each legend optimizes (and how Ch. 1 relates)

| Author | Core purpose | Ch. 1 alignment | Remaining gap |
|--------|----------------|-----------------|---------------|
| **Jackson** | Covariant formulation, rigorous limits, complete EM theory | Strong: phasor Maxwell, uniqueness, Green outgoing, distributional dipole | Some proofs **condensed** vs Jackson lemma depth; Pass 7 fixed duplicate equation hyperrefs |
| **Stratton** | Spherical coordinates, potentials, radiation integrals | Very strong: $U_r$, $\mathbf{j}_J$, VSH forward pointers, radiation condition | Stratton is **more linear** in operator order; Ch. 1 **interleaves** angular theme earlier |
| **Harrington** | BVP, radiation, antenna thinking | Very strong: impedance class, exterior uniqueness, flux routes | Harrington is **slimmer** per topic; Ch. 1 **longer** for same foundational span |
| **Griffiths** | Student clarity, one question per section | Good Beth spine; graduate density by design | Pass 7 removed tutorial P–L–R tags in §1.2; still **not** undergrad pacing |
| **Griffiths / undergrad bar** | Minimal side excursions | Ch. 1 **graduate/research** by design — fair if audience is stated | —
| **Chu** | Minimum Q, mode circuits, stored vs radiated energy | JAP 1948 + McLean 1996 + `rem:ch1.chu-tr064-concordance` (TR-064 Eqs.~(7)–(12), Fig.~3) | **MIT DSpace page pin** still author-only; ladder not reproduced in full |
| **Beth** | Measurement + stress route | Excellent concordance remark; material $\mathbf P\times\mathbf E$ vs vacuum stress | — |
| **Balanis** | Patterns, directivity, reactive regions | Dipole $D(\theta)$, two-shell $kr$ example, Fig. zones | No full array/mutual block (deferred — appropriate for Ch. 1) |
| **Felsen** | High-frequency asymptotics, radiation operators | Outgoing selection, zone language, Ch. 2 forward map | Asymptotic **bookkeeping** not yet one continuous $k\to\infty$ storyline |
| **Mansuripur** | Force, stress, momentum in media | Vacuum stress route strong; Abraham/Minkowski noted, not developed | Fine for Vol. I Ch. 1 scope |

---

## 3. Governing criteria — itemized audit

### 3.1 Physical question → mathematics necessary

| Score | Evidence |
|-------|----------|
| **A** | Opens Beth torque; every major block (uniqueness, flux, rotation, gauge, dipole) tied to measurable torque, power, or traction |

**Close:** Keep §1.0 as the **single** experiment anchor; resist adding OAM survey motivation without gauge caveats.

### 3.2 Definitions before use

| Score | Evidence |
|-------|----------|
| **A−** | Table `tab:ch1.principal-symbols`; volumes $V_{\mathrm{A}}$, $\mathcal{V}_{\mathrm{vac}}$ distinguished; stress vs material torque |

**Defect:** Modal symbols $(m+\sigma)P/\omega$ appear **before** full vector-mode hypotheses in some passages (now guarded by explicit “paraxial scaling convention” language).

### 3.3 Dimensions and physical meaning per quantity

| Score | Evidence |
|-------|----------|
| **A** | $[\mathbf{j}_J]=\mathrm{N\,m\,sr^{-1}}$, $[\boldsymbol{\Phi}_{J,\mathrm{out}}]=\mathrm{J\,s^{-1}}$; Problem 1(f); helicity density dimensions |

**Close:** One pass on **every** first appearance of $\mathbf{j}_J$, $\boldsymbol{\mathcal{T}}_J$, $U_r$ in §1.6 captions (some figures assume reader recall).

### 3.4 Derivation from laws + interpret each step

| Score | Evidence |
|-------|----------|
| **A−** | Poynting, momentum, angular momentum from Maxwell; uniqueness energy method; dipole from Helmholtz/Green |

**Defects:** (1) Rellich continuation **cited**, not proved — acceptable at Harrington level, not full Jackson PDE chapter. (2) Yaghjian source-region Hessian block is **dense** — correct but **not** textbook-pedagogical for first encounter. (3) Passive impedance theorem cites Colton–Kress–Hsiao — existence not proved in-chapter (correct scoping).

### 3.5 Assumptions and validity domains

| Score | Evidence |
|-------|----------|
| **A** | Lossless vs lossy uniqueness split; paraxial LG template explicitly incomplete; point-dipole distributional limits stated |

### 3.6 Experiments, boundaries, measurables

| Score | Evidence |
|-------|----------|
| **A** | Beth plate, CP disk symmetry counterexample, counter-rotating aperture, two-shell reactive ratio |

### 3.7 Figures indispensable to argument

| Score | Evidence |
|-------|----------|
| **A−** | 1.1 triptych (material vs vacuum stress); 1.14 flux vs $m$; 1.30 $\sin^2\theta$; rotation duality; phase vs transport |

**Open:** Author **A4 print** at 100% for 1.1, 1.14, 1.30 (`reports/A4_PRINT_AUDIT_FIGURES_1_1_14_30_20261118.md`). TikZ **layout polish** still author-deferred.

### 3.8 Progressive single argument

| Score | Evidence |
|-------|----------|
| **B+** | §1.0→§1.7 spine paragraph; pass 5 rhythm in §1.2.2–§1.3; pass 6 extends to §1.2.0–§1.2.1 |

**Defect:** §1.1 is **long** (Jackson-like) without Griffiths **breathing room**; reader may fatigue before §1.2 payoff.

### 3.9 Demonstrable conclusions (not assertions)

| Score | Evidence |
|-------|----------|
| **A−** | Theorems for uniqueness, flux pairs, Beth concordance; explicit “not a theorem of this chapter” guards on modal scales |

**Defect:** Chu ladder details **not** closed to primary TR pages.

### 3.10 Voice — non-classical vocabulary (manuscript)

| Score | Evidence |
|-------|----------|
| **B+** (post pass 6) | Removed “ledger” labels, “not licensed,” “modal flux estimate” in prose → paraxial/stress language |

**Remaining watchlist:** `\emph{Problem}/\emph{Law}/\emph{Result}` (pedagogical markers — not meta-software, but **not** Stratton/Harrington diction). “Hardware” (ok in antenna context). “Laboratory” in historical Hertz/Beth sense — **acceptable**.

---

## 4. Rhythm and style (literary permanence)

**Strengths**

- **Classical monograph tone** in §1.0, uniqueness, Beth examples — measured, citation-anchored.
- **Honest negation** (what phase does *not* prove) — Jackson-grade intellectual honesty.
- **Progressive bridges** between sections — superior to many modern OAM primers.

**Weaknesses (vs timeless shelf)**

1. **Subsection length variance** — §1.1 vs §1.2.0: Griffiths would **split** or **signpost** more aggressively.
2. **Explicit P–L–R scaffolding** — excellent for **course** use; for **permanent treatise**, integrate into prose (one sentence problem, one law, one result **without** labels).
3. **Forward-reference density** — necessary for 19-chapter work; slightly **below** Harrington’s self-contained Ch. 1 feel until Ch. 2 is locked.
4. **Equation hyperref duplicates** — `addtocounter{equation}{-1}` alias pattern; PDF links unstable, not physics wrong.

---

## 5. Proof and source-verification closure

| Topic | Status | Peer bar |
|-------|--------|----------|
| Maxwell + continuity | Closed | Maxwell, Stratton |
| Uniqueness (exterior) | Closed in Ch. 1; Ch. 2 §2.4.3 USE-only | Harrington/Sommerfeld |
| Beth (1936) Eqs. 2,3,6 | Remark concordance | Beth |
| Chu $Q$, McLean $TM_{01}$ | JAP + McLean | Chu/McLean |
| Chu TR-064 ladder Eqs. 7–9 | **Open primary** | Chu peer |
| Yaghjian $\delta^3$ contact | Cited 1980/1982 | Appropriate for research monograph |
| Allen LG template | Correctly **incomplete** Maxwell | Allen + Ch. 2 deferral |

---

## 6. Problems and pedagogy (Jackson standard)

| Item | Status |
|------|--------|
| §1.8 ten problems | Strong coverage of flux, uniqueness, rotation, dipole, Chu Q |
| Hints supplement | Present (`ch01-problems-solutions.tex`) |
| Full instructor solutions | **Not done** — required for Jackson-style adoption |

---

## 7. Closure register — how to reach “zero-gap timeless classical”

Priority **P0** (author / cannot automate)

| ID | Action | Closes |
|----|--------|--------|
| P0-A4 | Print Figs 1.1, 1.14, 1.30 at 100% A4; sign A4 audit doc | Figure bar |
| P0-TR064 | Obtain MIT TR-064 PDF; pin Eqs. 7–9 vs `chu1948`/`mcclean1996` or trim ladder claims | Chu peer bar |

Priority **P1** (editorial, manuscript)

| ID | Action | Closes |
|----|--------|--------|
| P1-VOICE | Line-edit: fold P–L–R blocks into continuous prose (retain logic, drop labels) | Griffiths/Stratton literary bar |
| P1-COMPRESS | Shorten §1.1.3–§1.1.5 **narrative** by ~15% without deleting theorems | Griffiths arc |
| P1-HYPERREF | Remove duplicate `\label` aliases on equations (one label per display) | PDF navigation |
| P1-DIM | First-use dimensions on every symbol in §1.6 figure captions | Jackson hygiene |

Priority **P2** (pedagogy / production)

| ID | Action | Closes |
|----|--------|--------|
| P2-SOLUTIONS | Instructor PDF: full worked solutions for Problems 1–10 | Jackson adoption |
| P2-FIG-POLISH | Visual pass on TikZ spacing (author-deferred) | Presentation |
| P2-VOL-I | Fix Ch.2–4 `main.tex` errors; one Volume I build | Live-book bib unity |

Priority **P3** (already done or partial)

| ID | Status |
|----|--------|
| Bib keys ch01-only | ✅ Clean log |
| §1.2.0–§1.3 rhythm | ✅ Pass 5–6 |
| Non-classical words | ✅ Pass 6 (ledger, licensed, flux estimate) |
| Git tag `chapter1-classical-correction-20261118-pass5-litmus-closure` | Suggested — author creates if desired |

---

## 8. Honest one-paragraph recommendation

Treat Chapter 1 as **publishable advanced foundations material** that **already teaches correctly** on the central Beth–Maxwell–stress–flux spine and **outperforms** much contemporary OAM literature on gauge and flux discipline. To claim **permanent classical literature** beside Jackson, Stratton, Harrington, and Chu, complete the **P0** items and the **P1 literary compression/voice** pass; keep the scientific content, change **how often the text asks the reader to remember** versus **how often it re-derives**.

**Pass 6 applied in source (this audit run):** prose vocabulary cleanup; `eq:ch1.am-flux-*-balance` labels; §1.2.0–§1.2.1 P–L–R openers.

**Pass 8 (2026-11-18):** Full-chapter literary bridges; Stratton/Harrington-density uniqueness steps; **MIT TR-064 DSpace page pins** in `rem:ch1.chu-tr064-concordance` (printed pp.~7--9); artifact `CHAPTER1_BENCHMARK_PASS8_20261118.pdf` (68 pp).

**Pass 7 (2026-11-18 — benchmark claim):** continuous prose (removed `\emph{Problem}/\emph{Law}/\emph{Result}`); §1.1 narrative compression; eliminated `addtocounter{equation}{-1}` duplicate hyperref anchors; Remark Chu TR-064 concordance; A4 audit + `CHAPTER1_BENCHMARK_20261118.pdf`.

**Author review benchmark:** `VOLUME_I_RELEASE/CHAPTER1_BENCHMARK_20261118.pdf`

**Suggested git tag:** `chapter1-benchmark-20261118-pass7-timeless-voice`

---

*This document is an editorial audit only; it is not part of the Volume I manuscript.*