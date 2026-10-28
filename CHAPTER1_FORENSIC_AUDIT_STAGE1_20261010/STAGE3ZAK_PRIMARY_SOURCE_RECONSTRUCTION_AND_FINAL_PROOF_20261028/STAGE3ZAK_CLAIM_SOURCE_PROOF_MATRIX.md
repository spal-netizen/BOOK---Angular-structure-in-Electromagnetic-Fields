# Stage 3Z-AK — Claim / source / proof matrix

| ID | Manuscript claim | Source inspected | Analytical obligation | Engine check | Counterexample / limit | Decision | Location |
|---|---|---|---|---|---|---|---|
| A | \(P_{\mathrm{out}}=\tfrac12 k^2 Z_0|m_{\ell m}|^2\) (E-type) | Brown (15.51)–(15.53) power orthogonality **PDF page**; defs. Jackson/Stratton **not page-verified** | Poynting + Wronskian + unit \(\vec Y\) | B: E-only cases | Incoming branch flips sign | **RETAIN** | Prop.~\ref{prop:ch1.single-hansen-power} |
| B | Magnetic-type power (dual) | Same as A | Duality map | B: M-only | — | **RETAIN** | Prop.~\ref{prop:ch1.single-hansen-power} |
| C | \(\dot J_z=(m/\omega)P\) E-type | Stress defs. Harrington **not verified** | Maxwell \(T_{r\phi}\) + moment | B: E-only | \(m=0\) → 0 | **RETAIN** | Prop.~\ref{prop:ch1.single-hansen-transport} |
| D | Magnetic-type transport | Same as C | Duality | B: M-only | — | **RETAIN** | Prop.~\ref{prop:ch1.single-hansen-transport} |
| E | Same-index arbitrary \(m_{\ell m},n_{\ell m}\) | **No source proves mixed stress cancellation** | Full \(\Re T_{r\phi}\) + \(\Re\) cross lemmas | A: SymPy + numeric; B: mixed coeffs | False complex \((N\times M^*)=-(M\times N^*)\) | **RETAIN (restricted)** | Props. 1.7–1.8 + scope remark |
| F | Distinct \((\ell,m)\) sums | Brown multimode power only | Needs orthogonality on full bilinear | Not tested as theorem | Cross terms generally nonzero | **OMIT from theorem** | Scope remark only |
| G | Jackson shell content = stress flux | Jackson **NOT VERIFIED** | Separate bridge required | — | Distinct definitions | **OMIT / EXCLUDE** | Ex. §1.6.1 narrative |
| H | Ring-source coefficient map | — | Not derived | — | — | **OMIT** | Deferred material |
| I | \((m+\sigma)\) transport rule | — | Counterexamples in audit lineage | — | — | **OMIT** | Claim register |
| J | Full-vector \(\mathcal J_z\) eigenfields | — | Scalar vs vector conflation | — | — | **OMIT** | Scope remark |
| K | Stress moment \(-R^3\int T_{r\phi}\sin^2\theta\,d\Omega\) | Manuscript Eq.~\eqref{eq:ch1.ex61-flux-from-stress} | Sign/normal audit in §D3 | B: multi-\((\ell,m)\) | Wrong \(R\) power fails law | **RETAIN** | Eq.~\eqref{eq:ch1.ex61-flux-from-stress} |
| L | Power norm \(\tfrac12 k^2 Z_0(\|m_{\ell m}\|^2+\|n_{\ell m}\|^2)\) | Brown + manuscript \(\vec Y\) norm | Match \(m_{\ell m},n_{\ell m}\) to \(\E,\H\) defs | B + analytic §D2 | Wrong \(\sigma\) rescale | **RETAIN** | Prop.~\ref{prop:ch1.single-hansen-power} |

Proof authority for Props. 1.7–1.8: `STAGE3ZAK_COMPLETE_ANALYTICAL_STRESS_PROOF.md` (this stage), not citation alone.
