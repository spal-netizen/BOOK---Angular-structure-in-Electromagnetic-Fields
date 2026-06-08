# Chapter 2 Manuscript — Formal Sign-Off Lock

**Status:** **LOCKED**  
**Lock date:** 2026-05-31  
**Authority:** Confirms `latex/ch02.tex` is complete through §2.11.3; audit-fix pass applied; Ch. 3 drafting authorized.

---

## 1. Sign-off objective

Verify that Chapter 2's locked manuscript:

1. Matches the **45-subsection** TOC block in `TOC/volume-I-ch01-04-FINAL.txt`.  
2. Supplies every operator/radiation construct Chapters 3–4 must **USE by reference**.  
3. Honors HOME / USE / DEFER discipline per `00-FORWARD-MAP.yaml`.  
4. Passed the **P0–P3 audit-fix pass** (operator ledger, DOF suite, inheritance tables, Ch. 1/3 alignment).

---

## 2. Subsection inventory

| Item | Value |
|------|--------|
| TOC subsections | **45** (§2.0.1–§2.11.3) |
| Manuscript `\subsection{}` count | **45** |
| Match | **PASS** |

---

## 3. Manuscript completion cross-check

| Item | Status |
|------|--------|
| `latex/ch02.tex` | **COMPLETE AND LOCKED** (2026-05-31) |
| Audit-fix pass | **COMPLETE** — master DOF partition, operator survival table, §2.11 ledger/validity tables |
| Forensic remediation | **COMPLETE** (2026-05-29) — sign audit, thesis headline, prose governance, accessibility triad |
| Build | `scripts/Build-VolumeI-ChapterBib.ps1` → **exit 0** |
| PDF | `latex/main.pdf` — **293 pages** |
| §2.11 inheritance | `eq:ch2.inheritance-admissibility`, bridge map to Ch. 3 |
| Ch. 1 alignment | Transport/regime screens inherited; no forbidden repeats |
| Ch. 3 alignment | Orthogonality → `sec:ch343`; normalization → `sec:ch352`; rigged Hilbert → `sec:ch313` |

---

## 4. Chapter 2 export map (what Ch. 3+ must USE)

| HOME anchor | Exported construct | Ch. 3 consumer |
|-------------|-------------------|----------------|
| §2.0–§2.2 | \(\mathcal{S}_\omega\), \(\mathcal{L}_\omega\), \(\Pi_{\mathrm{rad}}\), \(\mathcal{R}_\omega\) | §3.0–§3.1 operator closure |
| §2.3–§2.4 | Dyadic Green, Sommerfeld, exterior uniqueness | §3.1.2, §3.6 |
| §2.5 | Far-field integrals, flux functionals | §3.5.1 normalization |
| §2.6 | Spectral/Fredholm skeleton | §3.4 VSH eigenbasis |
| §2.7 | \(\ker\mathcal{R}_\omega\), NR/evanescent null laws | §3.6 completeness breaks |
| §2.8 | Reciprocity, modal coupling | §3.8 equivalence transforms |
| §2.9 | Plane-wave action, near-to-far, accessibility | §3.7 angular spectra |
| §2.10 | DOF diagnostic suite, structured sources | §3.10 examples (USE) |

**Verdict:** All Ch. 2 exports have downstream TOC consumers. **No missing links.**

---

## 5. Concepts correctly deferred from Ch. 2

| Concept | Owner | Rationale |
|---------|-------|-----------|
| VSH definitions, completeness proofs | Ch. 3 §3.4 | §2.11.2 defer rule |
| Continuous-spectrum normalization | Ch. 3 §3.5.2 | Formal projectors in §2.2.4 |
| Source realizability catalog | Ch. 4 | §2.7.4 realizability vs accessibility |
| Interaction Hamiltonians | Vol. II | §2.11.2 defer rule |

---

## 6. Unlock policy

| Action | Requirement |
|--------|-------------|
| Edit `latex/ch02.tex` prose/equations | Explicit author unlock + `LOCK-MANIFEST.md` entry |
| Typo/format fix only | Author approval in chat |
| Ch. 3 drafting | **Authorized** — USE Ch. 2 by `\ref` only |

---

## 7. Sign-off

| Criterion | Result |
|-----------|--------|
| TOC ↔ manuscript alignment (45/45) | **PASS** |
| Audit-fix pass (P0–P3) | **PASS** |
| Build clean (exit 0, 293 pp) | **PASS** |
| Downstream Ch. 3 link coverage | **PASS** |
| TOC amendment required | **No** |

**Chapter 2 manuscript: SIGNED OFF AND LOCKED — 2026-05-31**

---

*End CH02 Manuscript Sign-Off Lock.*
