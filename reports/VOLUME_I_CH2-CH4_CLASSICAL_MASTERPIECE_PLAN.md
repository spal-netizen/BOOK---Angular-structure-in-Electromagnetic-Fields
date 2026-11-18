# Volume I Chapters 2–4 — classical masterpiece transformation plan

**Purpose:** Bring Ch.2, Ch.3, and Ch.4 to the same **progressive, non-recursive, Stratton/Harrington** standard as the locked Ch.1 benchmark (`CHAPTER1_FINAL_BENCHMARK_20261118.pdf`), one chapter per chat, subsection-by-subsection author approval.

**Prerequisite:** Ch.1 frozen per `TOC/CHAPTER1_FINAL_BENCHMARK_LOCK_20261118.md`.

---

## 0. Global rules (inherit from Ch.1 passes)

| Rule | Source |
|------|--------|
| Forward-only | `00-FORWARD-MAP.yaml`, `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` |
| HOME vs USE | `TOC/THEOREM-HOME-MATRIX-19CH-ULTIMATE.md` — Ch.1 theorems cited, not re-proved |
| Citations at claim | `TOC/CITATION-CONTRACT-ULTIMATE.md` |
| Voice | Version A classical monograph; no governance vocabulary in manuscript |
| Depth | Section intro + summative bridge; ~3–5 PDF pages per subsection unless author overrides |
| Build lane | One `main-chNN-only.tex` per chapter; `latexmk` log must be clean before benchmark tag |

**Ch.1 inheritance set (USE only in Ch.2–4):** `eq:ch1.scalar-green-outgoing`, `thm:ch1.exterior-uniqueness`, `eq:ch1.outward-am-flux`, `eq:ch1.charge-continuity-harmonic`, radiation/outgoing conventions, symbol table discipline.

---

## 1. Source-of-truth files per chapter

| Ch. | Primary manuscript | Notes |
|----|-------------------|--------|
| **2** | `latex/ch02.tex` **and/or** `latex/ch02-stage11.tex` + `latex/ch02-classical/` restored tree | Confirm active build in `main.tex` / `main-ch02-only.tex` before editing; last coordinated branch: `volume-i/ch2-4-coordinated-transformation` |
| **3** | `latex/ch03.tex` | Large monograph file; check `TOC/CH03-TOC-AUDIT-FLOW-LOCK.md`, `TOC/CH03-MONOGRAPH-FINAL-LOCK.md` for conflicts |
| **4** | `latex/ch04.tex` | Align with `volume-I-ch01-04-FINAL.txt` §4.x ownership |

**Rule:** Edit **one canonical spine** per chapter per transformation; archive superseded stages under `latex/archive/` with date stamp; do not fork prose across `ch02-stage8/9/10` without a merge decision recorded in governance.

---

## 2. Transformation pipeline (repeat per chapter)

### Phase A — Inventory (no prose yet)

1. Read governance stack (same order as `GCHECK` in `.cursor/rules/book-consistency.mdc`).
2. Map TOC lines `volume-I-ch01-04-FINAL.txt` → `\subsection` labels in active `.tex`.
3. Run **no-recursion audit**: list every display that duplicates Ch.1 or prior-chapter HOME results.
4. Produce `reports/CHAPTERn_BASELINE_AUDIT_YYYYMMDD.md` (structure, defects, figure list, cite gaps).

### Phase B — Subsection cadence (author approval)

For each subsection `n.m.k` in order:

1. **Literary pass:** continuous prose; remove scaffolding (\emph{Problem}/\emph{Law}/\emph{Result}, template openers).
2. **Proof pass:** Stratton/Harrington lemma depth — state hypotheses, intermediate displays, validity domains, physical sentence per major equation.
3. **USE pass:** replace re-derivations with `Eq.~\eqref{...} (§x.y)` or theorem cite.
4. **Citation pass:** `references.bib` keys only; point-of-claim placement.
5. **Figure pass:** TikZ/schematic + caption + in-body interpretation; no duplicate diagrams.
6. **Author checkpoint:** PDF slice or full `main-chNN-only` build; user approves before `n.m.(k+1)`.

### Phase C — Chapter closure

1. Section  summary + problem set aligned to **proved** results only.
2. Inheritance section (`§n.11` pattern): sole location for DEFER lists.
3. Senior audit + correction register (mirror Ch.1 reports).
4. `CHAPTERn_FINAL_BENCHMARK_YYYYMMDD.pdf` + TOC lock markdown + git tag.

---

## 3. Chapter-specific priorities

### Chapter 2 — Radiation operators, Green functions, spectra

**Narrative spine:** Impressed source → outgoing Maxwell operator → radiation integrals → compactness/null-space → angular spectrum **without** re-proving Ch.1 uniqueness or scalar Green singularity.

| Priority | Target | Action |
|----------|--------|--------|
| P0 | §2.3.1 Green | USE `eq:ch1.scalar-green-outgoing`; one sentence outgoing selection |
| P0 | §2.4.3 uniqueness | USE `thm:ch1.exterior-uniqueness`; Rellich only forward pointer if needed |
| P1 | §2.0–§2.2 | Operator-domain prose; match Ch.1 phasor convention explicitly once |
| P1 | §2.5–§2.6 | Flux operators USE Ch.1 stress/Poynting labels |
| P2 | §2.9–§2.10 | Examples: one compact aperture + one null-space example, no modal hype |
| P2 | Build | Stabilize `main-ch02-only.tex` (or stage11) — fix pre-existing LaTeX errors blocking Vol. I `main.tex` |
| P3 | `ch02-classical/restored/*` | Merge only approved subsections into canonical spine; avoid dual maintenance |

**Deliverable chat prompt:** `GCHECK 2.0.1` then sequential subsections per `volume-I-ch01-04-FINAL.txt`.

### Chapter 3 — (per governance locks)

**Constraint:** Existing `CH03-MONOGRAPH-FINAL-LOCK` may conflict with full rewrite — **author decision** at chat open: (a) classical polish on current `ch03.tex`, or (b) governed unlock + structural align to V3 TOC.

| Priority | Action |
|----------|--------|
| P0 | TOC audit vs `CH03-TOC-AUDIT-FLOW-LOCK.md` — single subsection list |
| P1 | Remove Ch.1 Maxwell repeats; USE VSH/radiation operators from Ch.2 once HOME |
| P1 | Belinfante/helicity: gauge caveats from Ch.1 §1.4 by reference |
| P2 | Figure/equation renumbering audit monotone within chapter |

### Chapter 4 — Synthesis toward Volume I boundary

| Priority | Action |
|----------|--------|
| P0 | §4.11 inheritance only pointer to Ch.5+ |
| P1 | Harmonize notation with `00-NOTATION.md` and Ch.1 symbol table extensions |
| P2 | Examples must **compose** Ch.2–3 results, not re-introduce dipole/Green |

---

## 4. Anti-repetition / anti-scaffolding checklist

Before marking any subsection **complete**, verify:

- [ ] No second HOME proof of a theorem owned elsewhere.
- [ ] No duplicate equation display (only `\ref` + one-line reminder if needed).
- [ ] No repeated “this subsection establishes” / “for physical interpretation” template.
- [ ] Opening paragraph of section **unique**; closing bridge **unique** (not copied from Ch.1).
- [ ] Figures not reused unless new regime stated in caption.
- [ ] Problems do not introduce laws absent from chapter body.

Run `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` checklist in the chapter audit report.

---

## 5. Suggested chat sequence (your workflow)

| Order | Chat focus | Entry command |
|-------|------------|----------------|
| 1 | **Ch.2** baseline audit + §2.0–§2.1 approval loop | `GCHECK 2.0.1` |
| 2 | **Ch.2** §2.2–§2.4 operators & radiation | continue subsection IDs |
| 3 | **Ch.2** §2.5–§2.11 + benchmark PDF + tag | `chapter2-final-benchmark-YYYYMMDD` |
| 4 | **Ch.3** unlock decision + audit + §3.0… | `GCHECK 3.0.1` |
| 5 | **Ch.4** same pattern | `GCHECK 4.0.1` |
| 6 | **Volume I** `main.tex` integration smoke build | after Ch.2–4 locks |

---

## 6. Pass 8b (optional, Ch.1 only)

If you later want Stratton page-by-page depth on Ch.1 **without** blocking Ch.2:

- Subsections: §1.1.5 angular-balance walk; §1.6.4 dipole construction; any subsection flagged in senior audit.
- One subsection per approval tranche; branch `chapter1-pass8b-lemma-depth` or unlock via `GCHECK UNLOCK CH01-FINAL-BENCHMARK`.

---

## 7. Administrative artifacts to update each chapter

- `reports/CHAPTERn_*_AUDIT_*.md`, `CHAPTERn_COMPREHENSIVE_*_CORRECTION_*.md`
- `TOC/CHAPTERn_FINAL_BENCHMARK_LOCK_*.md`
- `TOC/GCHECK-MASTER-CUMULATIVE.md` (status row)
- `00-FORWARD-MAP.yaml` (if new HOME/USE assignments)
- `latex/references.bib` (chapter cites only with keys)
- `VOLUME_I_RELEASE/CHAPTERn_FINAL_BENCHMARK_*.pdf`