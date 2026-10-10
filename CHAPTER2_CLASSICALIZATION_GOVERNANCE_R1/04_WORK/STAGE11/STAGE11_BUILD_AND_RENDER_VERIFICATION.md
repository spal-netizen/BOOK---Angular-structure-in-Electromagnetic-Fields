# Stage 11 — Build and Render Verification

**Date:** 2026-10-10

---

## Chapter 2 review build (Ch. 1 + Ch. 2)

| Field | Value |
|-------|--------|
| Entry point | `latex/main-ch02-stage11.tex` |
| Engine | latexmk -pdf -bibtex -f |
| Output | `latex/main-ch02-stage11.pdf` |
| Pages | **216** |
| Bytes | 3,113,463 |
| Copied artefact | `04_WORK/STAGE11/Chapter2_Stage11_Classical_Review.pdf` |
| SHA-256 (Stage 11 review) | `3CF7F0F95C7D24C76E375CDFF7204936BD66024B04992F5B8E687A6BE50A1391` |
| Commit at build | `a444c61b7e229e6d2aeb217a4517410bb0a5dc3f` (branch tip unchanged; working tree includes Batch A edits) |

**latexmk:** exit non-zero due to **58** unresolved references (forward + Ch. 1 debt); PDF still produced (`-f`).

**Ch. 2-internal refs:** 0 undefined `eq:ch2*` in log.

---

## Stage 10 review PDF (preserved)

| Field | Value |
|-------|--------|
| Path | `latex/Chapter2_Stage10_Classical_Review.pdf` |
| Pages | 216 |
| SHA-256 | `E99817103B999EEDC247BC5AE977FD462C64AC61BCED2311ABA4FA5C7DF58412` |

Not overwritten in Stage 11.

---

## Integrated Volume I

| Entry | Status |
|-------|--------|
| `latex/main-vol1-stage10.tex` | **Not built** |
| `VolumeI_Stage10_Integrated_Review.pdf` | **Not verified** |

---

## Source used in PDF

Driver chain: `main-ch02-stage11.tex` → `ch01.tex` + `ch02.tex` → `ch02-stage11.tex` → `ch02-classical/restored/*` + classical parts + Stage 10 label bridges.

Batch A edits affect §2.1 section frame and §2.1.1 opening only; page count unchanged from Stage 10.

---

## Render spot-check

§2.0–§2.1 opening: compiles; no new fatal LaTeX errors beyond undefined cross-chapter references. Full page-by-page render audit **not performed**.
