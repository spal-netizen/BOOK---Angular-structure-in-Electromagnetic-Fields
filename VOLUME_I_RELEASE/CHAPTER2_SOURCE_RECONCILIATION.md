# Chapter 2 — Source Reconciliation Register (Stage B)

**Date:** 2026-11-14  
**Branch:** `volume-i/ch2-4-coordinated-transformation`

## Build entry point

| Role | Path |
|------|------|
| Main volume | `latex/main.tex` → `latex/ch02.tex` |
| Chapter wrapper | `latex/ch02.tex` → `latex/ch02-stage11.tex` |
| Preamble / convention box | `latex/ch02-stage9-preamble.tex` |
| **Authoritative manuscript body** | `latex/ch02-classical/restored/**/*.tex` (57 `\input` lines in `ch02-stage11.tex`) |

Isolated Ch. 2 PDF: `latex/main-ch02-only.tex`.

## Parallel / secondary sources

| Location | Nature | Disposition |
|----------|--------|-------------|
| `latex/ch02-classical/part01–part05*.tex` | Authorial Maxwell-first drafts (local uncommitted edits) | **Integrate** content into `restored` §2.1–2.3 and related; do not double-include in build until merged |
| `latex/ch02-classical/part06–part12*.tex` | Untracked extensions | Review for Green/radiation material; merge selectively |
| `latex/ch02-classical/restored/sections/section-orig-*.tex` | Section framing (2.0 intro) | **Edit in place** (build uses these) |
| Older `part01–part05` on branch history vs `restore-orig-*` | Overlap on Maxwell, Green, radiation | **restored** wins for build; **part*** supplies corrected prose |
| `ARCHIVE/CHAPTER2_STAGE1/` | Archive | Provenance only — not `\input` |

## Protected local work (pre-edit snapshot)

- Patch: `VOLUME_I_RELEASE/PREEDIT_SNAPSHOT_20261114/ch02-classical-uncommitted.patch`
- Status: `.../ch02-classical-status.txt`
- **Rule:** No `git checkout --`, `reset`, or `clean` on `latex/ch02-classical/` without author-directed reconciliation.

## Scientific integration decisions

1. **§2.0 Introduction:** `section-orig-001` — rewrite Maxwell→Green→outgoing **before** naming \(\mathcal{S}_\omega\), \(\mathcal{R}_\omega\); operators are shorthand after physical maps (Stage B edit).
2. **§2.1–2.3:** Merge `part01-source-and-harmonic-maxwell.tex` structure into `restore-orig-006` and successors; fix continuity to `eq:ch1.charge-continuity-harmonic` (\(+\mathrm{j}\omega\rho\)).
3. **Operator pipeline:** Retain \(\mathcal{S}_\omega\), \(\Pi_{\mathrm{rad}}\), \(\mathcal{R}_\omega\) only where domain/range stated; no claim of global orthogonal \(\Pi_{\mathrm{rad}}\) without proof (per author directive).
4. **Remove from published text:** “Stage 8/9/10/11”, PHYSICAL-MEMORY blocks, workflow equations (strip during section passes).
5. **Cross-refs:** `eq:ch1.continuity-admissibility` exists in Ch. 1 benchmark summary; keep or replace with `eq:ch1.source-charge-continuous` when prose is tightened.

## Duplicates / superseded

- Duplicate opening paragraphs in `restore-orig-002` (network-analyzer vignette repeated) — **dedupe** in Stage B.
- `ch02-stage11.tex` must remain the **single** include list; no second `\input` chain for production.

## Missing / follow-up

- Full pass on all `restore-orig-*` for convention prose (register C-09).
- Decide whether `part01b`, `part01c`, `part02-near-far` supersede sections of `restore-orig-015`–`022` (per-subsection merge).

## Reproducible target

One editable spine: `ch02-stage11.tex` + `restored/*` + locked `VOLUME_I_PHASOR_AND_NOTATION_STANDARD.md`.