# Chapter 3 — Drafting Kickoff Lock

**Status:** **AUTHORIZED — DRAFTING IN PROGRESS**  
**Kickoff date:** 2026-05-29  
**Authority:** Ch. 1 `COMPLETE_LOCKED`; Ch. 2 `COMPLETE_LOCKED` + forensic remediation **accepted** (physical review); `TOC/CH03-TOC-AUDIT-FLOW-LOCK.md`.

---

## 1. Authorization gate (Phase A — complete)

| Prerequisite | Status |
|--------------|--------|
| Ch. 1 manuscript sign-off | **PASS** — `TOC/CH01-MANUSCRIPT-SIGNOFF-LOCK.md` |
| Ch. 2 manuscript sign-off | **PASS** — `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` |
| Ch. 2 forensic remediation | **ACCEPTED** — 2026-05-29 physical review |
| Ch. 2 frozen | **YES** — no `latex/ch02.tex` edits without unlock |
| Ch. 3 TOC flow audit | **PASS** — 48 subsections |
| Build baseline | `latex/main.pdf` — **299 pages**, exit 0 |

---

## 2. Mandatory read-set (before every subsection)

1. `LOCK-MANIFEST.md`  
2. `00-NOTATION.md`  
3. `00-FORWARD-MAP.yaml` (`chapter_3` + `use_map`)  
4. `TOC/volume-I-ch01-04-FINAL.txt` (Ch. 3 block)  
5. `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md`  
6. `TOC/CITATION-CONTRACT-ULTIMATE.md`  
7. `TOC/CH03-TOC-AUDIT-FLOW-LOCK.md`  
8. `TOC/THEOREM-HOME-MATRIX-19CH-ULTIMATE.md` (active subsection)  
9. `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` §4 export map  

**Resume command:** `GCHECK REFRESH DRAFT 3.0.1 — CH3-FRESH MIN-5PP ZERO-REPEAT`

---

## 3. Ch. 2 exports Ch. 3 must USE (no re-proof)

| Ch. 2 anchor | Construct | Ch. 3 consumer |
|--------------|-----------|----------------|
| §2.0–§2.2 | \(\mathcal{S}_\omega\), \(\mathcal{R}_\omega\), \(\Pi_{\mathrm{rad}}\) | §3.0–§3.1 |
| §2.1.1 | Function spaces | §3.1.1 |
| §2.2.2 | Helmholtz operator | §3.3.1 |
| §2.2.4 | \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\) | §3.1.3–§3.5.2 (rigged completion) |
| §2.4 | Sommerfeld / outgoing | §3.3.3 |
| §2.5.1, §2.5.3 | Radiation integrals, flux norms | §3.0.2, §3.5.1 |
| §2.6.1–§2.6.2 | Spectral skeleton, degeneracy | §3.1.3, §3.2.3, §3.4.5 |
| §2.7 | \(\ker\mathcal{R}_\omega\) | §3.6 |
| §2.8.2 | Modal orthogonality preview | §3.1.2, §3.4.3 |
| §2.9 | Angular-spectrum filter | §3.7, §3.8 |
| §2.11.3 | Bridge map | §3.0.3 |

**Forbidden in Ch. 3:** full Maxwell derivation; Green construction; Sommerfeld full proof (`00-FORWARD-MAP.yaml`).

---

## 4. Ch. 3 single-establishment rules

| Object | Sole definition owner |
|--------|----------------------|
| \(Y_\ell^m\), \(\mathbf{M}_{\ell m}\), \(\mathbf{N}_{\ell m}\) | §3.4.1 only |
| \(\mathbf{J}\) operator on Maxwell fields | §3.2.1 only |
| Rigged Hilbert / formal projectors | §3.1.3–§3.5.2 |
| Sole `[DEFER]` block | §3.11 only |

---

## 5. §3.11.3 bridge obligations (forward)

Export to Ch. 4 by reference:

1. VSH basis and completeness (§3.4).  
2. Normalization and density of states (§3.5).  
3. Truncation / symmetry-breaking taxonomy (§3.6).  
4. Discrete vs continuous angular indices (§3.7).  
5. Basis transformations and OAM representation caveats (§3.8–§3.9).

---

## 6. Drafting cadence

| Rule | Policy |
|------|--------|
| Order | Section intro → subsections in TOC order → section bridge |
| Approval | Line-by-line / subsection-by-subsection |
| Depth | ~5 PDF pages per non-introductory subsection (default) |
| Prose | Version A monograph; no governance vocabulary in body |
| Model workflow | `MODEL-WORKFLOW-LOCKED.md` — rigor gate per subsection |

**Current progress:** §3.0 framing + §3.0.1 drafted; §3.0.2 next.

---

*End Ch. 3 drafting kickoff lock.*
