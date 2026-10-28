# Stage 3Z-AH — Final report

**Workspace:** `STAGE3ZAH_MIXED_MODE_ANALYTIC_CLOSURE_20261028/`

## 1. Primary sources inspected

| Source | Status |
|---|---|
| Brown *Electrodynamics* PDF (`F23088FF…`) | **VERIFIED-ORIGINAL-PAGE** (local PDF); Eqs. (15.51)–(15.53) |
| Jackson, Stratton print, Harrington, Tai, Hansen 1988, Beth, Allen | **NOT-INSPECTED** / **UNAVAILABLE** in this workspace |

## 2. Same-index mixed-mode analytic conclusion

**Proved:** For fixed outgoing \((\ell,m)\) and arbitrary complex \(m_{\ell m},n_{\ell m}\) in `\eqref{eq:ch1.ex61-hansen-outgoing}`,
\[
P_{\mathrm{out}}=\tfrac12 k^2 Z_0(|m_{\ell m}|^2+|n_{\ell m}|^2),\qquad
\dot J_{z,\mathrm{em,out}}=(m/\omega)P_{\mathrm{out}}.
\]
Mechanism: \((\mathbf N\times\mathbf M^*)_r=-(\mathbf M\times\mathbf N^*)_r\); \(\Re\{(\mathbf M\times\mathbf M^*)_r\}=\Re\{(\mathbf N\times\mathbf N^*)_r\}=0\); stress cross terms in \(T_{r\phi}\) cancel separately. Full derivation: `MIXED_MODE_ANALYTIC_DERIVATION.md` + integrated manuscript proofs.

## 3. Absolute formulas and conventions

exp(\(+j\omega t\)), outgoing \(h_\ell^{(2)}\), \(\sigma=\sqrt{\ell(\ell+1)}\), Wronskian `\eqref{eq:ch1.ex61-hankel-wronskian}`. Single-mode recheck: `SINGLE_MODE_PROOF_RECHECK.md` (no sign/normalization corrections required).

## 4. Engines (exit 0; corroboration only)

| Engine | Role | Worst residuals |
|---|---|---|
| A `STAGE3ZAH_ENGINE_A_ANALYTIC_MIXED_MODE.py` | Analytic \(u'\), mixed \(P,J\) | law \(\lesssim 10^{-18}\) |
| B `STAGE3ZAH_ENGINE_B_INDEPENDENT_MAXWELL_STRESS_QUADRATURE.py` | FD \(u'\), convergence study | \(P_\mathrm{rel}\lesssim 7\times 10^{-8}\) |

## 5. Extensions

| Topic | Status |
|---|---|
| Same \((\ell,m)\) mixed E+M | **PROVED** (manuscript) |
| Distinct \(\ell\), multimode, \(\mathcal J_z\) eigenfield | **OPEN** |
| Jackson shell vs stress flux | **NOT-PROVED-AND-EXCLUDED** (separate identity) |
| Ring map, \((m+\sigma)\) law | **OPEN** / **NOT-PROVED-AND-EXCLUDED** |

## 6. Deliverables

- **PDF:** `STAGE3ZAH_CHAPTER1_INDEPENDENT_REVIEW.pdf` — **57** pages, A4, **1 196 530** B, SHA **`99165C1A2FD3659AC39C8458382C4FE433B350A3D07928FF1CE8586E2C0F16E6`**
- **TEX:** `647198A355AA2A97A78A91EDBEFE62D0006983785BA45EFBACA11499FA4EAD26` (233927 B)
- Visual QA: `qa_renders/page_040–044.png` (mixed proof + scope remark)

## 7. Verdict

**PARTIAL GO FOR INDEPENDENT AUTHOR REVIEW**

Same-index Hansen power and Maxwell-stress transport—including full electric+magnetic superposition—are **analytically closed** and integrated. Classical print sources and multimode extensions remain incomplete; review PDF is ready for author pass (not production release).
