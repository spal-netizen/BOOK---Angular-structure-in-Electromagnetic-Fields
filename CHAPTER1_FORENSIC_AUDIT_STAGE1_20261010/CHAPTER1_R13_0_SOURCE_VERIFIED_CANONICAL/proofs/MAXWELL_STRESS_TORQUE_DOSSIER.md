# Maxwell stress, force and angular momentum — derivation dossier (R13.0)

**Convention:** real fields \(\mathbf E,\mathbf B\); \(\mathbf H=\mathbf B/\mu_0\); \(g_i=\varepsilon_0(\mathbf E\times\mathbf B)_i\).

## 1. Momentum density time derivative

\[
\frac{\partial g_i}{\partial t}
=\varepsilon_0\left(\frac{\partial E_j}{\partial t}B_k\epsilon_{ijk}
+E_j\frac{\partial B_k}{\partial t}\epsilon_{ijk}\right).
\]

Faraday: \(\partial_t\mathbf B=-\nabla\times\mathbf E\). Ampère: \(\nabla\times\mathbf H=\mathbf J_{\mathrm{imp}}+\varepsilon_0\partial_t\mathbf E\), \(\mathbf B=\mu_0\mathbf H\).

Substituting and using \(\epsilon_{ijk}\epsilon_{jlm}=\delta_{il}\delta_{km}-\delta_{im}\delta_{kl}\) yields, after straightforward index algebra,

\[
\frac{\partial g_i}{\partial t}+\rho E_i+(\mathbf J_{\mathrm{imp}}\times\mathbf B)_i
=\partial_j T^{(i)}_{ij}
\]

with

\[
T^{(i)}_{ij}=\varepsilon_0(E_iE_j-\tfrac12\delta_{ij}E^2)+\mu_0^{-1}(B_iB_j-\tfrac12\delta_{ij}B^2).
\]

**Status:** VERIFIED BY DERIVATION (matches manuscript Eqs. `ch1.momentum-balance-instantaneous`, `ch1.maxwell-stress-components`).

## 2. Symmetry

\(T^{(i)}_{ij}=T^{(i)}_{ji}\) by inspection. Divergence uses \(\partial_j T^{(i)}_{ij}\) (manuscript convention).

## 3. Harmonic stress

With \(\mathbf E=\Re\{\underline{\mathbf E}e^{j\omega t}\}\), cycle average of \(\mathbf E\mathbf E\) gives \(\tfrac12\Re\{\underline{\mathbf E}\,\underline{\mathbf E}^*\}\), yielding Eq. `ch1.maxwell-stress`.

## 4. Angular momentum

Multiply \(\partial_t g_k+f_{\mathrm{src},k}=\partial_l T^{(i)}_{kl}\) (index form) by \(\epsilon_{ijk}r_j\):

\[
\epsilon_{ijk}r_j\partial_l T^{(i)}_{kl}
=\partial_l(\epsilon_{ijk}r_j T^{(i)}_{kl})-\epsilon_{ijk}T^{(i)}_{kj}.
\]

Vanishing of \(\epsilon_{ijk}T^{(i)}_{kj}\) uses stress symmetry → manuscript Eq. `ch1.angular-momentum-balance`.

## 5. Outward flux sign

\[
\Phi_{J,\mathrm{out}}=-\oint_{\partial V}\mathbf r\times(\langle\mathbf T\rangle\cdot\hat{\mathbf n})\,dS
\]

matches `ch1.outward-am-flux` in the manuscript (sign audited against integration direction).

## 6. Route A / Route B

- **Route A:** \(\mathbf f_{\mathrm{matter}}=\mathbf f_{\mathrm{src}}\) on carrier support.
- **Route B:** traction on \(\partial V_b\) in source-free vacuum for mechanical force on matter.

**Limitation:** Full material stress inside dissipative media not re-derived here (Stratton cited).

