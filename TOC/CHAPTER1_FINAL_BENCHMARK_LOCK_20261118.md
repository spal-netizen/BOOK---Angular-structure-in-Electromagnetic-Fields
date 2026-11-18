# Chapter 1 — final author benchmark lock

**Locked:** 2026-11-18 (Pass 8 + Pass 8 literary/TR-064 pins)  
**Status:** **AUTHOR BENCHMARK FROZEN** — structural prose locked; optional Pass 8b (lemma-depth expansion of §1.1.5, §1.6.4, etc.) is **author-gated** subsection-by-subsection, not required for Volume I Ch.2 entry.

## Author review PDF (canonical)

| Artifact | Path |
|----------|------|
| **Primary** | `VOLUME_I_RELEASE/CHAPTER1_FINAL_BENCHMARK_20261118.pdf` |
| Aliases | `CHAPTER1_BENCHMARK_20261118.pdf`, `CHAPTER1_BENCHMARK_PASS8_20261118.pdf`, `CHAPTER1_CLASSICAL_CORRECTION_20261118.pdf` |

**Build:** `latex/build-ch01-review.ps1` (from `latex/`, target `main-ch01-only.tex`).

**Spine:** `latex/ch01.tex`, `latex/ch01-problems.tex`, `latex/ch01-problems-solutions.tex`, `latex/ch01-foundation-seeds-passK-bridges.tex`, `latex/vol-i-physical-figure-library.tex` (Figs. 1.1, 1.14, 1.30 among others).

**Registers:** `reports/CHAPTER1_COMPREHENSIVE_CLASSICAL_CORRECTION_20261118.md`, `reports/CHAPTER1_SENIOR_CLASSICAL_MASTERPIECE_AUDIT_20261118.md`, `reports/A4_PRINT_AUDIT_FIGURES_1_1_14_30_20261118.md`.

## Scientific closure checklist (machine)

- [x] Clean `main-ch01-only.log` (no undefined cites/refs; single `\label` per equation)
- [x] Chu TR-064 DSpace page pins in `rem:ch1.chu-tr064-concordance`
- [x] Ch.2 Green/uniqueness USE-only pointers (no Ch.1 re-derive in Ch.2 sections touched for Vol. I)
- [ ] Author A4 print sign-off Figs. 1.1, 1.14, 1.30

## Git tag (suggested)

`chapter1-final-benchmark-20261118`

## Next volume work

Chapter 2 transformation per `reports/VOLUME_I_CH2-CH4_CLASSICAL_MASTERPIECE_PLAN.md` — new chat, subsection approval cadence, inherit Ch.1 only via `\ref`.

**Unlock (author only):** `GCHECK UNLOCK CH01-FINAL-BENCHMARK` or explicit request to open Pass 8b on a named subsection.