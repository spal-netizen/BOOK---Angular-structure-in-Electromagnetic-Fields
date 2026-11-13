# VSW Maxwell closure — release lock

## Definitions (§1.1.3, labels `vsw-curl-identities`)

\[
\mathbf M_{\ell m}^{+}=h_\ell^{(2)}(k_0 r)\vec{\mathcal M}_{\ell m},\quad
\mathbf N_{\ell m}^{+}=\frac{1}{k_0}\nabla\times\mathbf M_{\ell m}^{+}.
\]

\[
\nabla\times\mathbf M_{\ell m}^{+}=k_0\mathbf N_{\ell m}^{+},\qquad
\nabla\times\mathbf N_{\ell m}^{+}=k_0\mathbf M_{\ell m}^{+}.
\]

## Corrected pair (`vsw-delta-E/H-expansion`)

\[
\Delta\mathbf E=\sum_{\ell,m}(a_{\ell m}\mathbf M_{\ell m}^{+}+b_{\ell m}\mathbf N_{\ell m}^{+}),
\]
\[
\Delta\mathbf H=\frac{j}{\eta_0}\sum_{\ell,m}(a_{\ell m}\mathbf N_{\ell m}^{+}+b_{\ell m}\mathbf M_{\ell m}^{+}).
\]

## Curl verification (\(e^{+j\omega t}\), vacuum)

\[
\nabla\times\Delta\mathbf E
=k_0\sum_{\ell,m}(a_{\ell m}\mathbf N_{\ell m}^{+}+b_{\ell m}\mathbf M_{\ell m}^{+})
=-j\omega\mu_0\Delta\mathbf H,
\]
using \(k_0=\omega\mu_0/\eta_0\).

\[
\nabla\times\Delta\mathbf H
=\frac{j k_0}{\eta_0}\sum_{\ell,m}(a_{\ell m}\mathbf M_{\ell m}^{+}+b_{\ell m}\mathbf N_{\ell m}^{+})
=j\omega\varepsilon_0\Delta\mathbf E,
\]
using \(k_0/\eta_0=\omega\varepsilon_0\).

## Uniqueness continuation

1. \(\mathbf E_\infty=0\) from passive boundary + radiation limit.  
2. Outgoing VSW expansion with independent coefficients.  
3. Rellich / unique continuation \(\Rightarrow \Delta\mathbf E=0\) exterior.  
4. Faraday \(\Rightarrow \Delta\mathbf H=0\).

**Removed defect:** prior \(k_0/\eta_0\) prefactor on \(\Delta\mathbf E\) and wrong \(\pm\) on \(\Delta\mathbf H\).

**Test:** `ch01_vsw_maxwell_check.py` PASS.
