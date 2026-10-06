# Chapter 2 — Classicalization Pass 1 Report

**Date:** 2026-10-06  
**Command:** Master Classicalization (single controlled transformation — **Pass 1 executed**)

---

## What was done

| Item | Action |
|------|--------|
| Pre-transform source | Archived to `03_RECORDS/CANONICAL/ch02_PRE_CLASSICALIZATION_20261006.tex` |
| New manuscript | `latex/ch02.tex` + `latex/ch02-classical/part01–part05.tex` |
| Time convention | **\(e^{+\jj\omega t}\)** in Ch.~2 prose and `\eim` macro (`latex/macros.tex`) |
| Operators | \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\), \(\mathcal{R}_\omega=\Pi_{\mathrm{rad}}\circ\mathcal{S}_\omega\), **\(\mathcal{Q}_\omega\)** for measurement |
| Scaffolding | **Removed:** 86 `physicalvignette` blocks, `% PHYSICAL-MEMORY`, report-style chains from pre-transform file |
| Build | `latex/main-ch02-only.pdf` produced (Ch.~1 + Ch.~2); full `main.tex` still missing some frontmatter assets |

---

## Scope honesty (author review)

Pass 1 **recomposes the intellectual spine** and applies conventions/notation per Stage 2 reconciliation. It is **not** yet the full scientific mass of the pre-transform chapter (~13.6k lines, ~438 equations). Legitimate content from the archive remains available for **dependency-local expansion** (Green dyadic closed form, spectral/Fredholm detail, extended examples, reciprocity boundary cases) without reopening Stage 1/2.

Recommended **Pass 1b** (same anti-recursion rule): expand named gaps only from `CHAPTER2_PRESERVATION_LEDGER.md`, one section at a time, using archived `ch02_PRE_CLASSICALIZATION_20261006.tex` as migration source.

---

## AD status (implemented in Ch.~2 text)

- **AD-001:** Implemented in Ch.~2 (\(+j\omega t\)). Volume-wide `latex/ch01.tex` prose still states \(-j\) — **not modified** per Ch.~1 freeze instruction; harmonize in separate governed pass if author orders TeX alignment.
- **AD-002:** \(\mathcal{Q}_\omega\) in use; \(\mathcal{M}_\omega\) reserved for Maxwell operator (Ch.~1 block).
- **AD-003:** “Outgoing radiative extraction map”; no unqualified orthogonal projection.

---

## Files changed

- `latex/ch02.tex`, `latex/ch02-classical/*.tex`
- `latex/macros.tex`, `latex/preamble.tex` (comment + `\eim`, `\Qomega`)
- `latex/fig-macros.tex`, `ch01-handdrawn-figures.tex`, `vol-i-physical-figure-library.tex` (copied from Ch.~1 snapshot for figures)
- `latex/main-ch02-only.tex`, frontmatter stubs
- This report

## Files not changed

- Immutable baseline PDF; `ARCHIVE/CHAPTER1/` canonical; pre-transform file preserved in CANONICAL.

---

## Next dependency-local targets (if author approves expansion)

1. Closed-form free-space dyadic + Hertzian dipole far-field derivation (§2.11.1 depth)  
2. Propagating/evanescent angular-spectrum equations (§2.10)  
3. Compact aperture SV example (§2.7) migrated from archive  
4. Figure merge per Stage 2 architecture (4–6 anchor chains)  
5. Full Volume I build asset completion (`vol-i-synthesis`, etc.)
