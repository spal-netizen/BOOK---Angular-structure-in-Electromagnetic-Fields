# R13.1 initial baseline audit

**Date:** 2026-11-13  
**Branch:** `chapter1/r13.1-final-closure` (from `chapter1/r13.0-canonical`)  
**Baseline commit:** `f6bae87` — R13.0 batch F (chapterbib fix)

## Source authentication

| Artifact | SHA-256 (pre-R13.1 edits) | Notes |
|----------|---------------------------|-------|
| R13.0 `CHAPTER1_R13_0_WORKING_CANDIDATE.tex` | `509BB5B9FA9641C1687FA643D4A492AC47927AFBA692BA96F49CCE632CFABAD6` | Frozen at R13.0 |
| R13.0 build PDF (post-F) | `79ECFBDB8865E12BBC63C0E5CF4B64E13FAE1AB58C65D55A1C8AA0BD6D1F867A` | 59 pp |

## R13.1 closure edits (this cycle)

| Artifact | SHA-256 | Pages |
|----------|---------|-------|
| `source/CHAPTER1_R13_1_FINAL_AUTHOR_REVIEW.tex` | `31887DEDE11B57069FB524C371FAFE8B0AC3AA1E178DA62A17CA2B08F6DD3816` | — |
| `pdf/CHAPTER1_R13_1_FINAL_AUTHOR_REVIEW.pdf` | *(see `manifest/R13_1_SHA256SUMS.txt`)* | **60** |

**Build command:** `latexmk -g -pdf main-ch01-only.tex` from `build_package/`.

## Validation (six scripts)

| Script | What it checks | Result |
|--------|----------------|--------|
| `ch01_citation_pdf_check.py` | Aux citations vs PDF, no `[?]` | PASS (60 pp) |
| `ch01_route_b_storage_check.py` | Route B shell labels, no `J_em,store` | PASS |
| `ch01_qvol_shell_check.py` | `P_rad` on outer `S_R` only | PASS |
| `ch01_hessian_sign_check.py` | Spherical Hessian contact sign | PASS |
| `ch01_dipole_maxwell_checks.py` | Hertzian far-field consistency | PASS |
| `ch01_numeric_checks.py` | Worked numeric examples | PASS |

## Known open items at start

1. §1.0 Beth intro still implied Maxwell-traction-only torque (fixed in R13.1).
2. Chu n=1 paragraph schematic; local MIT/JAP PDF bytes corrupt (partial TR-064 text verification via DSpace).
3. Faraday/Ampère weak-form tests requested (added concise weak-form text in R13.1).
4. Full print-resolution figure audit and literary pass — executed at report level; not all TikZ assets re-rendered.

## Finite work plan (executed)

- **A:** Beth SI/material torque + intro/§1.5/§1.6 alignment  
- **B:** Chu TR-064 §2.4 n=1 reconstruction in manuscript + report  
- **C:** Dipole weak-form; Route A/B adversarial table  
- **D:** Equation register, figure caption audit, bibliography crosswalk, summary retained post-edit  
- **Final:** Build, manifest, adversarial second pass, status classification  

**Stop rule:** No further R-numbered batches after R13.1.
