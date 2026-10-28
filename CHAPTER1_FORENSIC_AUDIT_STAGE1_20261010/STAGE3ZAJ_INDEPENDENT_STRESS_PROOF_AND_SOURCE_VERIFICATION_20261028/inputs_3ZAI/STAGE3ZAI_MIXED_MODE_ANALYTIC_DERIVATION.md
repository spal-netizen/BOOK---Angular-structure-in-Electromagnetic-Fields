# Stage 3Z-AI — Gate B cross-product adjudication

## Component definitions (authenticated)

\(M_\theta=hY_\theta\), \(M_\phi=hY_\phi\), \(N_\theta=-j(u'/z)Y_\phi\), \(N_\phi=+j(u'/z)Y_\theta\), \(S=|Y_\theta|^2+|Y_\phi|^2\).

## Direct substitution (verified numerically to \(\sim 10^{-16}\))

\[
(\mathbf M\times\mathbf N^*)_r = -j\,\frac{h\,[u']^*}{z}\,S,
\qquad
(\mathbf N\times\mathbf M^*)_r = -j\,\frac{[u']\,h^*}{z}\,S.
\]

## **Defect in Stage 3Z-AH**

The manuscript asserted **pointwise** \((\mathbf N\times\mathbf M^*)_r=-(\mathbf M\times\mathbf N^*)_r\) as complex numbers. **False:** \(\mathbf N+\mathbf M\) can be purely imaginary (relative norm \(\sim 3\times 10^{-2}\) on imaginary part at worst sampled point).

## **Correct identity for Poynting**

Let \(v=[u']/z\). Then \(h v^*+v h^*=2\Re(h v^*)\) (real), hence \(\Im(h v^*+v h^*)=0\) and
\[
\Re\{(\mathbf N\times\mathbf M^*)_r\}=-\Re\{(\mathbf M\times\mathbf N^*)_r\}.
\]
Also \(\Re\{(\mathbf M\times\mathbf M^*)_r\}=0\) pointwise (purely imaginary radial self-cross).

## Power consequence (Claim E)

\[
\Re\{(\E\times\H^*)_r\}=\frac{k^4Z_0}{2}(|a|^2+|b|^2)\Re\{(\mathbf M\times\mathbf N^*)_r\}
\]
after expanding \(|a|^2\), \(|b|^2\), \(ab^*\), \(a^*b\) terms. **Proved** with corrected lemmas.

## Stress

Same \(\Re\)-antisymmetry mechanism applies to \(T_{r\phi}\) bilinears; independent quadrature corroborates \(\dot J_z=(m/\omega)P\) for random \(a,b\) (Engine B).
