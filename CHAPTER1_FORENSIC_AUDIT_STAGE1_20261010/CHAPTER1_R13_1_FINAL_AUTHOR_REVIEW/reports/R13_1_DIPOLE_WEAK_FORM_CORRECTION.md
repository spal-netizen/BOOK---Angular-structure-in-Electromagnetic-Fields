# Distributional dipole — weak-form correction

## Faraday

**Error (R13.1):** \(\langle\curl\E,\boldsymbol\psi\rangle=\langle\E,-\curl\boldsymbol\psi\rangle\).

**Correction:** \(\langle\curl\mathbf F,\boldsymbol\psi\rangle=\langle\mathbf F,\curl\boldsymbol\psi\rangle\) for \(\boldsymbol\psi\in C_c^\infty\).

Derivation uses vanishing \(\curl[(\nabla\nabla G)\cdot\mathbf p]\) and \(k^2=\omega^2\mu_0\epsilon_0\) to obtain \(-j\omega\mu_0\mathbf H\).

## Ampère–Maxwell

\(\langle\curl\H,\boldsymbol\psi\rangle=\langle\H,\curl\boldsymbol\psi\rangle\) with \(\delta^3\) term \(\mathbf p\cdot\boldsymbol\psi(\mathbf0)\) matching \(\mathbf J_{\mathrm{imp}}=j\omega\mathbf p\,\delta^3\).

## Hessian

Spherical contact in \(\mathbf E\) only; \(\mathbf p\delta^3\) in curl identity is impressed current — not double-counted.

**Test:** `ch01_dipole_weak_form_check.py` — **PASS**.
