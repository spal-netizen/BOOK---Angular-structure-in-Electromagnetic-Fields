# Exterior passive impedance uniqueness — dossier (R13.0)

**Convention:** $e^{+j\omega t}$, $\hat{\mathbf{n}}_{\mathrm{ext}}=-\hat{\mathbf{n}}_{\mathrm{body}}$, homogeneous vacuum exterior, scalar passive $Z_s$ with $\Re Z_s>0$.

## Difference Poynting identity

For $(\Delta\E,\Delta\H)$ source-free in a lossless region, with $\mathbf{S}_\Delta=\tfrac12\Delta\E\times\Delta\H^*$:

\[
\nabla\cdot\mathbf{S}_\Delta=-2j\omega(u_{\Delta H}-u_{\Delta E}),\quad
u_{\Delta E}=\tfrac14\varepsilon|\Delta\E|^2,\ u_{\Delta H}=\tfrac14\mu|\Delta\H|^2.
\]

With complex $\varepsilon=\varepsilon'-j\varepsilon''$, $\mu=\mu'-j\mu''$, $\varepsilon'',\mu''\ge0$:

\[
\Re(\nabla\cdot\mathbf{S}_\Delta)=-\frac{\omega}{2}(\varepsilon''|\Delta\E|^2+\mu''|\Delta\H|^2).
\]

**Status:** DERIVED in manuscript §1.1.3 (Internally checked).

## Exterior energy route

Integrated on truncated $\Omega_{\mathrm{ext},R}$:

\[
\mathcal{P}_\infty+\tfrac12\Re(Z_s)\int_{\Gamma_Z}|\Delta\H_t|^2\,dS=0
\Rightarrow \E_\infty=\mathbf{0},\ \Delta\H_t=0\text{ on }\Gamma_Z.
\]

Impedance sign from $\Re(\hat{\mathbf{n}}_{\mathrm{ext}}\cdot\mathbf{S}_\Delta)=P_{\mathrm{abs}}\ge0$ on passive sheet.

## Vector spherical continuation

Both $\mathbf{M}_{\ell m}^+$ and $\mathbf{N}_{\ell m}^+$ families required; $\div\E=0$ couples coefficients.

Vanishing far pattern $\Rightarrow$ all $(a_{\ell m},b_{\ell m})=0$.

**Rellich / unique continuation:** Cited under stated radiation + regularity hypotheses (Harrington, Sommerfeld). Full theorem hypotheses not reproduced from a primary PDE text in this run.

**Limitation:** COLTON—KRESS—HSIAO 1981 not inspected equation-for-equation; broader impedance classes not matched.

## Conclusion scope

- **Proved (conditional):** Homogeneous difference field uniqueness for scalar passive exterior class stated in §1.1.3.
- **Not claimed:** Existence, Fredholm solvability, continuous dependence, non-scalar impedance operators.

