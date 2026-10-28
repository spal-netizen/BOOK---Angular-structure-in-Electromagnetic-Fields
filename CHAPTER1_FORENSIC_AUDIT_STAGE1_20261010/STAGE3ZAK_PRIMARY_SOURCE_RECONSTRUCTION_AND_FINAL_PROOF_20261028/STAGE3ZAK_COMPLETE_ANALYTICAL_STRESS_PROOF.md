# Stage 3Z-AK — Complete analytical stress and power proof

## D1. Frozen conventions

| Item | Manuscript choice |
|---|---|
| Time | \(\exp(+j\omega t)\); \(\partial_t\to +j\omega\) on phasors |
| Outgoing radial | \(h_\ell^{(2)}(kr)=j_\ell-j y_\ell\); far zone \(\exp(-jkr)\) |
| Unit vector harmonic | \(\vec Y_{\ell m}^{\ell m}\) with \(\int_{4\pi}|\vec Y|^2=1\), \(\sigma=\sqrt{\ell(\ell+1)}\) |
| Hansen fields | \(\mathbf M^+=h\vec Y\), \(\mathbf N^+\) from spherical curl; surface formulas Eq.~\eqref{eq:ch1.ex61-hansen-surface} |
| Outgoing pair | \(\E=-k^2 Z_0(m_{\ell m}\mathbf M^+ + n_{\ell m}\mathbf N^+)\), \(\H=-k^2(m_{\ell m}\mathbf N^+ - n_{\ell m}\mathbf M^+)\) |
| SI | \(kZ_0=\mu_0\omega\) |
| Cycle-average stress | Eq.~\eqref{eq:ch1.maxwell-stress}; traction \(T_{r\phi}=\tfrac12\Re(\varepsilon_0 E_r E_\phi^*+\mu_0 H_r H_\phi^*)\) |
| Flux | \(P_{\mathrm{out}}=\iint_{S_R}\Re(\tfrac12\E\times\H^*)\cdot\hat{\mathbf r}\,dS\); \(\dot J_{z,\mathrm{em,out}}=-R^3\iint T_{r\phi}\sin^2\theta\,d\theta\,d\phi\) |

Jackson uses \(\exp(-j\omega t)\) and \(h^{(1)}\); for real \(kr\), \(h^{(2)}=(h^{(1)})^*\). Ratio \(m/\omega\) is unchanged; shell-content Eqs. are **not** identified with the stress flux above.

## D2. Power

On \(S_R\), \(z=kR\), \(u=zh\), \(v=u'/z\). For \(\E,\H\) as above,

\[
\Re\{(\E\times\H^*)_r\} = k^4 Z_0\Bigl(|m_{\ell m}|^2\Re\{(\mathbf M\times\mathbf N^*)_r\} - |n_{\ell m}|^2\Re\{(\mathbf N\times\mathbf M^*)_r\} + \cdots\bigr),
\]

with cross amplitudes \(m_{\ell m}n_{\ell m}^*\) multiplying \(\Re\{(\mathbf M\times\mathbf M^*)_r\}\) and \(\Re\{(\mathbf N\times\mathbf N^*)_r\}\).

**Component lemmas (pointwise on \(S_R\)):**

\[
(\mathbf M\times\mathbf N^*)_r = -j h v^* S,\quad (\mathbf N\times\mathbf M^*)_r = -j v h^* S,\quad S=|Y_\theta|^2+|Y_\phi|^2,
\]

\[
\Re\{(\mathbf M\times\mathbf N^*)_r+(\mathbf N\times\mathbf M^*)_r\}=0,\quad \Re\{(\mathbf M\times\mathbf M^*)_r\}=\Re\{(\mathbf N\times\mathbf N^*)_r\}=0.
\]

**False:** \((\mathbf N\times\mathbf M^*)_r=-(\mathbf M\times\mathbf N^*)_r\) as complex numbers.

Angular integration with \(\int_{4\pi}|Y_\ell^m|^2=1\) and Wronskian \(\Im(h[u']^*)=1/z\) gives

\[
P_{\mathrm{out}}=\frac{k^2 Z_0}{2}\bigl(|m_{\ell m}|^2+|n_{\ell m}|^2\bigr)
\]

**exact** on any source-free sphere in the exterior (not merely \(kr\to\infty\)), because the radial factor is \(R\)-independent after the Wronskian.

## D3. Angular-momentum transport

Expand \(\Re(E_r E_\phi^*)\) and \(\Re(H_r H_\phi^*)\) for \(m_{\ell m}=a\), \(n_{\ell m}=b\). The \(ab^*\) and \(a^*b\) slots reduce to the same \(\Re\)-cross combinations as in §D2 and **vanish pointwise**. Surviving terms match the single-type algebra with \(|a|^2+|b|^2\), yielding

\[
\dot J_{z,\mathrm{em,out}}=\frac12\mu_0 k^2(|a|^2+|b|^2)\,m R\,\Im(h[u']^*),
\]

then \(kZ_0=\mu_0\omega\) gives \(\dot J_{z,\mathrm{em,out}}=(m/\omega)P_{\mathrm{out}}\).

**Sign audit:** outward normal on \(S_R\); two minus signs in the manuscript moment definition cancel so the integrated law matches Engine B with \( \dot J_z \approx (m/\omega)P\).

## D4. Mixed E/M

Same-index arbitrary complex \(a,b\): **PROVED WITH STATED HYPOTHESES** (outgoing branch, fixed curl pairing, unit \(\vec Y\), single \((\ell,m)\)).

Distinct \((\ell,m)\): **NOT PROVED** — omit from theorem.

## D5. Adversarial checklist

| Perturbation | Expected | Engine B |
|---|---|---|
| Incoming \(h^{(1)}\) | \(P<0\) | `incoming_P` negative |
| Omit \(\H^*\) conjugation | Large \(P\) error | `noconj_rel` ≈ 1 |
| Flip \(\mathbf N\) sign | Break power | `flip_n_rel` = 2 |
| Complex negation identity | Nonzero residual | Engine A `complex_sum` ≫ 1 |

## Scope

Power proof (Prop. 1.7) and stress proof (Prop. 1.8) are **separate**; the stress result is **not** inferred from \(P\) alone.
