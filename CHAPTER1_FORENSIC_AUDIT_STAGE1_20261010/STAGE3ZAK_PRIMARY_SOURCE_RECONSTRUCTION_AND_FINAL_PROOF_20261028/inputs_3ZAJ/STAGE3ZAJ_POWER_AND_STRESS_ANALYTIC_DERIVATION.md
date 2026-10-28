# Stage 3Z-AJ — Power and stress analytic derivation

## B. Cross products (independent component substitution)

With \(v=[u']/z\), \(S=|Y_\theta|^2+|Y_\phi|^2\):

\[
(\mathbf M\times\mathbf N^*)_r=-j\,h v^* S,\qquad
(\mathbf N\times\mathbf M^*)_r=-j\,v h^* S.
\]

**Not** \((\mathbf N\times\mathbf M^*)_r=-(\mathbf M\times\mathbf N^*)_r\) in general (\(\mathbf M+\mathbf N\) can be purely imaginary).

**Used in Poynting:** \(\Re\{(\mathbf M\times\mathbf N^*)_r+(\mathbf N\times\mathbf M^*)_r\}=0\) because \(\Im(hv^*+vh^*)=0\) (since \(hv^*+vh^*=2\Re(hv^*)\)).

\(\Re\{(\mathbf M\times\mathbf M^*)_r\}=0\), \(\Re\{(\mathbf N\times\mathbf N^*)_r\}=0\) pointwise.

## D. Power (cases 1–3)

Expansion of \(\Re\{(\E\times\H^*)_r\}\) with \(\E=-k^2Z_0(a\mathbf M+b\mathbf N)\), \(\H=-k^2(a\mathbf N-b\mathbf M)\):

\[
|a|^2(\mathbf M\times\mathbf N^*)_r-|b|^2(\mathbf N\times\mathbf M^*)_r-ab^*(\mathbf M\times\mathbf M^*)_r+a^*b(\mathbf N\times\mathbf N^*)_r.
\]

Real part reduces to \((|a|^2+|b|^2)\Re\{(\mathbf M\times\mathbf N^*)_r\}\). Angular integral + Wronskian \(\Im(h[u']^*)=1/z\) gives
\[
P_{\mathrm{out}}=\tfrac12 k^2 Z_0(|a|^2+|b|^2).
\]

## C. Stress (Prop. 1.8, same-index)

\(T_{r\phi}=\tfrac12\varepsilon_0\Re(E_rE_\phi^*)+\tfrac12\mu_0\Re(H_rH_\phi^*)\) with \(E_r=-k^2Z_0 b N_r\), \(H_r=-k^2 a N_r\).

Expanded \(\Re(E_rE_\phi^*)\) and \(\Re(H_rH_\phi^*)\) decompose into \(|a|^2\), \(|b|^2\), \(ab^*\), \(a^*b\) terms (manuscript align block). Cross slots map to \(\Re\{(\mathbf M\times\mathbf M^*)_r\}\), \(\Re\{(\mathbf N\times\mathbf N^*)_r\}\), and \(\Re\{(\mathbf M\times\mathbf N^*)_r+(\mathbf N\times\mathbf M^*)_r\}\), all zero pointwise as above. Surviving terms yield
\[
\dot J_{z,\mathrm{em,out}}=\tfrac12\mu_0 k^2(|a|^2+|b|^2)\,m R\,\Im(h[u']^*),
\]
then \(kZ_0=\mu_0\omega\) gives \(\dot J_{z,\mathrm{em,out}}=(m/\omega)P_{\mathrm{out}}\).

**Not** derived from Poynting ratio alone.

## Jackson shell vs stress

Shell identity \eqref{eq:ch1.ex61-jackson-shell}: **NOT VERIFIED** on original pages; **EXCLUDED** as identification with stress flux.
