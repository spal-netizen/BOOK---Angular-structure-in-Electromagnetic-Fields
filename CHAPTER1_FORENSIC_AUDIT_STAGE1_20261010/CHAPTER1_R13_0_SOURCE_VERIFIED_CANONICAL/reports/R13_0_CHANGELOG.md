# R13.0 changelog (canonical)

## 2026-11-12 — Hessian sign, Q_vol, paraxial scope (batch B)

- **§1.6.4:** Classical Hessian sign corrected; Eqs. `ch1.hessian-classical-r-positive`, `ch1.hessian-distributional`; regression `ch01_hessian_sign_check.py`.
- **§1.6.4:** Route B — \(Q_{\mathrm{vol}}(V)\) total field energy; not Chu/McLean non-propagating \(Q\).
- **§1.2.2:** Paraxial LG template narrowed; azimuthal Poynting claims removed; `PARAXIAL_MAXWELL_COMPLETION_DOSSIER.md`.

## 2026-11-12 — critical defect repairs (batch)

- **§1.0 / §1.2:** Momentum density \(\mathbf g_{\mathrm{em}}\) distinguished from Maxwell stress flux/traction (removed “momentum resides in stress”).
- **§1.6.4:** Lorenz gauge proof corrected — explicit pointwise cancellation with \(\mu_0\) on both terms (Eq. `ch1.dipole-lorenz-gauge`).
- **§1.6.4:** Hessian / principal-value / contact / depolarisation language disentangled (Yaghjian scope).
- **§1.6.4:** \(Q_{\mathrm{adopted}}\), \(W_e\), \(W_m\) defined; Chu modal energies and McLean finite-\(ka\) caveat added; bib `mcclean1996`.
- **Build:** reproducible PDF 57 pp; new hashes (see `CHAPTER1_R13_0_FINAL_STATUS.md`).

## 2026-11-11 — continuous completion

- **§1.1.3:** Corrected vector spherical-wave uniqueness — \(\mathbf M^+,\mathbf N^+\) are individually divergence-free; removed false \((a_{\ell m},b_{\ell m})\) coupling claim.
- **§1.6.4:** (prior) Distributional dipole Faraday/Ampère closure; \(\mathbf H=j\omega\nabla G\times\mathbf p\).
- **Dossiers:** stress/torque, helicity/gauge/duality, modal \(m/\omega\), Chu primary limitation.
- **Validation:** equation register (164 labels); dipole + numeric checks PASS.
- **Build:** forced rebuild; new PDF hash `AA2BF6BA…`.

