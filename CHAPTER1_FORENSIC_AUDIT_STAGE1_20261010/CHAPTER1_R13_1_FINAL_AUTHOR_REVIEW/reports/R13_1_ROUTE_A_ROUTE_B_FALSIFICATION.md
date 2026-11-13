# Route A / Route B — falsification table (R13.1)

Convention: $\partial_t\mathbf g_\mathrm{em}+\mathbf f_\mathrm{src}=\mathrm{div}\,\mathbf T$; $\boldsymbol\Phi_{J,\mathrm{out}}=-\boldsymbol{\mathcal T}_J$; Route B body torque from **inner vacuum-shell** traction, normal outward **from shell into vacuum** (into body on inner face).

| Test case | Expected sign / identity | Check | Verdict |
|-----------|-------------------------|-------|---------|
| Plane wave on perfect absorber | Radiation pressure along $+\hat{\mathbf k}$; torque $\approx 0$ on symmetric disk | Stress symmetry + flux | PASS |
| Plane wave on perfect reflector | Momentum flip $2P/c$ on normal; torque $\approx 0$ on symmetric disk | Cycle-averaged traction | PASS |
| Source-free vacuum shell around body | $\boldsymbol{\mathcal T}_{J,i}+\boldsymbol{\mathcal T}_{J,o}$ balances shell storage (steady) | `ch01_route_b_storage_check.py` + Eqs. route-b labels | PASS |
| Anisotropic quartz (Beth) | Load torque from $\langle\mathbf P\times\mathbf E\rangle$ + face flux balance | Primary + §1.0/1.6 text | PASS |
| Uniform CP beam, centred disk | $\oint \mathbf r\times(\mathbf T\cdot\hat{\mathbf n})\,dS=0$ | Explicit §1.6.1 | PASS |

**Note:** Script checks are **necessary not sufficient**; rows marked PASS required manual identity review against displayed balances in TeX.
