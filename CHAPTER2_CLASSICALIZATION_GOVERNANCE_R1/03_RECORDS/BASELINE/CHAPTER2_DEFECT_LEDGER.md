# Chapter 2 — Defect Ledger (Stage 1 + Stage 2)

**Lifecycle:** OPEN → ANALYZED → DECISION → CORRECTED → VERIFIED → CLOSED  
**Stage 2:** No item marked CLOSED (transformation not executed).

| ID | Class | Severity | Status | Summary |
|----|-------|----------|--------|---------|
| CH2-D001 | STRUCTURAL | High | OPEN | Governance Constitution/Charter/Acceptance Standard missing (AD-005). |
| CH2-D002 | TIME-CONVENTION | **Critical** | **ANALYZED** | Volume-I convention split (+j freeze vs −j `latex/` vs −j rules). **AD-001 gate.** |
| CH2-D003 | CROSS-REFERENCE | High | **ANALYZED** | “Locked Ch.1” convention ambiguous (MICROR1 vs `latex/ch01.tex`). Blocked on AD-001. |
| CH2-D004 | BUILD | Medium | OPEN | PDF↔source not verified; build not run (recommended for AD-004). |
| CH2-D005 | FIGURE | Medium | **ANALYZED** | 53 `figure` envs / 54 labels vs PDF ~19 figures — source/PDF mismatch hypothesis. **AD-004.** |
| CH2-D006 | MATHEMATICAL-CLAIM | Medium | **ANALYZED** | \(\Pi_{\mathrm{rad}}\): composition \(\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\); idempotent on \(\mathcal{F}_{\mathrm{rad}}\) only. Terminology AD-003. |
| CH2-D007 | OPERATOR | Medium | **ANALYZED** | Domain tables recorded in `CHAPTER2_RECONCILIATION.md` §3. |
| CH2-D008 | STRUCTURAL | Low | **ANALYZED** | 86 `physicalvignette` + `% PHYSICAL-MEMORY` — classify remove/transform (architecture §F). |
| CH2-D009 | PEDAGOGICAL | Low | **ANALYZED** | Ch.3 forward pointers — defer per architecture §D. |
| CH2-D010 | REPETITION | Low | **ANALYZED** | Merge measurement-chain figures; dedupe history (architecture §F,G). |
| CH2-D011 | NOTATION | Medium | **DECISION** | \(\mathcal{M}_\omega\) collision — propose \(\mathcal{Q}_\omega\) for lab map (AD-002). |
| CH2-D012 | SIGN | High | OPEN | Green/radiation integral sign audit **blocked** on AD-001. |
| CH2-D013 | PHYSICAL-CLAIM | Low | **ANALYZED** | Illustrative “~10×” reactive/power ratio (~268) — not universal theorem. |
| CH2-D014 | MATHEMATICAL-CLAIM | Medium | **ANALYZED** | “Orthogonal projection” for \(\Pi_{\mathrm{rad}}\) on \(\mathcal{F}_\Omega\) — **overstated**; soften (AD-003). |

---

## CH2-D002 — Stage 2 record

- **Proposed convention:** \(\exp(+\jj\omega t)\) (author command direction).  
- **Reconciliation doc:** `03_RECORDS/RECONCILIATION/CHAPTER2_RECONCILIATION.md` §4.  
- **Author decision:** **AUTHOR DECISION REQUIRED — VOLUME-I TIME CONVENTION** (AD-001).  
- **Proposed future action:** Post-approval sign pass on listed files only.

---

## CH2-D006 — Stage 2 record

- **Scientific meaning:** Outgoing radiative extraction \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\) on completed Maxwell pairs; \(\mathcal{R}_\omega=\Pi_{\mathrm{rad}}\circ\mathcal{S}_\omega\).  
- **Idempotency:** Exact on \(\mathcal{F}_{\mathrm{rad}}\); not on all of \(\mathcal{F}_\Omega\).  
- **Proposed future action:** One HOME definition in transformed §2.5/2.4; replace loose “projection” wording.

---

## CH2-D005 — Stage 2 record

- **Source counts:** 53 `\begin{figure}`, 54 `\label{fig:ch2.*}`, 51 `\ChOneFigBlock`.  
- **PDF scan (Stage 1):** figures 2.0–2.18.  
- **Proposed future action:** Build manifest; merge chain figures per architecture tier table.

*Do not reopen Stage 1 baseline facts without new evidence.*
