# R20 — Chapter 1 author-review gate audit (classical EM)

**Role:** Independent classical electromagnetics audit (Stratton/Jackson/Harrington register).  
**Date:** 2026-11-17  
**Benchmark PDF:** `VOLUME_I_RELEASE/CHAPTER1_BENCHMARK_A05B9CCE.pdf` (~62 pp, ~1.27 MB)  
**Specification:** `CHAPTER1_FORENSIC_AUDIT_STAGE1_20261010/CHAPTER1_A05B9CCE_OVERHAUL_EXECUTION_REGISTER.md`  
**Live manuscript:** `latex/ch01.tex` (~4.2k lines), `latex/ch01-problems.tex`, `latex/references.bib`

---

## 1. Executive verdict (strict)

| Criterion | Status |
|-----------|--------|
| Chapter 1 scientifically readable as a **standalone classical chapter** | **Mostly yes** in source; **not certifiable in PDF** until build gate passes |
| **M1 mechanical closure** (Ch.1-only, no fatals) | **No** — log shows TikZ fatals (~§1.3.1 L2223), historic `\E`/`\B` in VolIPhys figures (partially patched), amsmath duplicate-label on ex61 (patched) |
| **Full Vol I** `latex/main.tex` green build | **No** — Ch.2+ errors (`\HCurl_` double subscript, undefined forward refs); unsuitable as Ch.1 review artifact |
| **Every subsection GCHECK’d** (R17) | **No** — locked: §1.2.3–§1.2.4, §1.3; partial: §1.4–§1.7, §1.6 prose |
| **Saved / versioned** for author compare | **No** — large dirty working tree; last commit unrelated; `ch01-problems.tex` was untracked until recently |
| **Comparable PDF** to A05B9CCE | **Not yet** — no fresh `main-ch01-only.pdf` from **current** `latex/ch01.tex` in `latex/` |

**Bottom line:** The chapter is **substantially advanced** toward the A05B9CCE specification, but you **cannot** yet run a trustworthy side-by-side PDF audit against the benchmark without a **dedicated Ch.1 build lane** and a **frozen export package**.

---

## 2. What is already in good shape (preserve)

1. **Structure:** §1.2.4 HOME restored; §1.3–§1.5 section shells; §1.6 four-case ladder; §1.7 synthesis lightened; §1.8 Problems present.
2. **Physics discipline (high value):** flux-before-labels; helicity ≠ OAM; counter-rotating cancellation (§1.6.2); gauge-stable flux vs local maps (§1.6.3); **300 MHz** two-shell protocol §1.6.4 (aligned with register A7).
3. **Approved locks (do not reopen without author):** §1.2.3, §1.2.4, §1.3.
4. **Prose batch (R18–R19):** §1.4.4–4.5 rhetoric; partial §1.6–§1.7 de-template; `fig-macros.tex` dispatch rewrite.

---

## 3. Blockers before author PDF (must-fix)

### 3.1 Build lane (critical)

1. **Add** `latex/main-ch01-only.tex` (copy from R13.1 build_package template): `\input{ch01}` only if problems are **not** duplicated inside `ch01.tex`.
2. **Resolve duplicate Problems:** `ch01.tex` now ends with `\input{ch01-problems}` **and** has chapter-local `\bibliography`. Standalone wrapper must use **one** inclusion path (recommend: problems only inside `ch01.tex` **or** only in wrapper, not both).
3. **Remove double `\bibliography`** if standalone file also runs bib (chapter currently inlines bib at end of `ch01.tex` inside `\include{ch01}` — verify `main.tex` does not double-run; for Ch.1-only, prefer single backmatter block).
4. **`latexmk -pdf main-ch01-only.tex` ×2** until `main-ch01-only.log` has:
   - **zero** `! Package tikz Error`
   - **zero** `! Undefined control sequence` inside `ch01` include
   - **zero** `Multiple \label's` on one equation
5. **Do not** use full `main.tex` success as Ch.1 gate (Ch.2–4 WIP will mask or pollute).

### 3.2 Known TeX defects (Ch.1 scope)

| Defect | Location | Action |
|--------|----------|--------|
| TikZ active/passive rotation | `ch01.tex` ~L2183–2223 | Verify `^{\prime}` on axis labels; rebuild |
| VolIPhys vacuum map | `vol-i-physical-figure-library.tex` | Use `$\mathbf{E}$`, `$\mathbf{B}$` (not `\E`, `\B`) in TikZ nodes |
| `fig-macros.tex` | Fixed via `\csname` | Confirm all `\VolIFigInclude{...}` slugs resolve |
| ex61 admissibility label | §1.6.1 | One `\label` in equation + `\phantomsection` alias (no twin `\label` in `amsmath`) |
| Remaining §1.6 worksheet prose | §1.6.2 L3809+, §1.6.4 L4330+ | De-template “schematic organizes / solution proceeds” (scientific presentation debt) |

### 3.3 Scientific honesty (EM content)

Still **audit-flagged** per execution register (not all closed in source):

- **A1** Abraham–Minkowski symmetry narrative (§1.0–§1.1.5).
- **B1** Exterior uniqueness proof posture (§1.1.3 — `% PROOF: AUTHOR REVIEW` where claimed).
- **B4/B6** Modal transport laws — scope of `eq:ch1.ex61-helicity-transport-law` and problem set vs Ch.3 handoff.
- **A8** Problem items 6–8 vs corrected Fraunhofer/gauge/VSH statements.
- **Pedagogical inconsistency:** §1.1 radial zones may still show **kr=0.5,3,10** pedagogy vs **§1.6.4 protocol kr₁=0.1π, kr₂=10π** — need explicit “pedagogical vs measurement protocol” sentence or harmonize.

---

## 4. What must be performed next (ordered plan)

### Phase 0 — Freeze inputs (½ day)
- [ ] Author confirms: Problems live **inside** `ch01.tex` **or** standalone wrapper only.
- [ ] Copy `main-ch01-only.tex` into `latex/`; add `build-ch01-review.ps1` (latexmk ×2, copy PDF).

### Phase 1 — M1 Ch.1-only green (1 day)
- [ ] Fix remaining Ch.1 TeX fatals (table §3.2).
- [ ] Grep `main-ch01-only.log`: `^!` count = 0 for ch01 pages.
- [ ] Duplicate-label scan: `ch01.aux` vs `ch01.tex` `\label{eq:ch1.*}`.
- [ ] Undefined **Ch.1** `\ref`/`\eqref` after second pass (Ch.2–4 stubs OK via fake `\label{ch:02}` in wrapper).

### Phase 2 — Export for author (same day)
- [ ] Output: `VOLUME_I_RELEASE/CHAPTER1_AUTHOR_REVIEW_YYYYMMDD.pdf` (+ copy of `main-ch01-only.log`).
- [ ] Sidecar: `reports/CH01_BUILD_MANIFEST_YYYYMMDD.md` (git sha, file list, page count, figure count).
- [ ] **Git:** one commit **only** Ch.1 surface: `ch01.tex`, `ch01-problems.tex`, `ch01-tikz-styles.tex`, `fig-macros.tex`, `vol-i-physical-figure-library.tex` (Ch.1 figures), `references.bib` (Ch.1 keys), `00-NOTATION.md` if touched. Tag e.g. `ch01-review-YYYYMMDD`.

### Phase 3 — Comparative audit vs A05B9CCE (1–2 days, author + tool assist)
- [ ] Page count vs ~62 pp benchmark (expect drift: live source is **longer**; document delta).
- [ ] Equation inventory diff: `extract_ch01_tex_equations.csv` vs current labels (register §9.4).
- [ ] Figure checklist Figs 1.1–1.30: print-scale spot + caption/body tie-in (M4).
- [ ] Section-by-section **spot audit** using benchmark PDF + R17 must-steps M2–M6.

### Phase 4 — Remaining manuscript quality (parallel, post first PDF)
- [ ] M3: complete GCHECK §1.0.1–§1.7 (subsection approval cadence).
- [ ] M5: Ch.1-only no-recursion audit + `TOC/CH01-MANUSCRIPT-SIGNOFF-LOCK.md`.
- [ ] M6: Abraham 1909 + Chu cite policy on §1.6.4.

**Do not** block Phase 2 on Phase 4 if author needs a **marked-up comparative PDF** now; ship **“review draft”** PDF with manifest listing open scientific items.

---

## 5. Comparative audit guidance (author)

When reviewing against `CHAPTER1_BENCHMARK_A05B9CCE.pdf`:

1. **Judge transport claims** only through Poynting/stress integrals and Beth-style torque closure — ignore phase-colour alone (§1.6.2 is the canonical counterexample).
2. **Check gauge section (§1.4)** for absence of OAM/helicity conflation — benchmark’s main reputational risk.
3. **Check §1.6.4** for single frequency narrative (300 MHz) and shell radii consistent with table `tab:ch1.regime-numeric-dipole`.
4. **Expect pagination growth** if prose expanded vs 62 pp freeze; use **subsection alignment**, not page equality, as primary compare.
5. **Problems §1.8:** verify no exercise asks for theorems deferred to Ch.2–3 without `[Chapter N]` tag.

---

## 6. Risk register (candid)

| Risk | Severity |
|------|----------|
| Building only `main.tex` and assuming Ch.1 OK | **High** — hides Ch.1 TikZ failures amid Ch.2 noise |
| Duplicate Problems + double bibliography in Ch.1-only | **High** — wrong TOC/page count for compare |
| Uncommitted snapshot | **High** — cannot reproduce author PDF |
| Residual `(m+\sigma)P/\omega` modal law in §1.6.1 without Ch.3 VSH | **Medium** — acceptable if disclaimers hold; re-read after GCHECK |
| Worksheet prose in §1.6.2/§1.6.4 | **Medium** — stylistic, not wrong physics |

---

## 7. Recommended immediate next command (single batch)

**“Ch.1 review lane” batch:** fix Problem duplication + install `main-ch01-only.tex` + M1 green on Ch.1-only + export PDF to `VOLUME_I_RELEASE/` + build manifest + optional git tag.

No further **content** overhaul until author holds that PDF beside A05B9CCE.