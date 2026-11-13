# Scientific conventions — Chapter 1 verified baseline

Later chapters must **re-declare** any convention that differs from this list for their governing equations.

| Quantity | Chapter 1 policy |
|----------|------------------|
| Time harmonic | $\exp(+j\omega t)$; $\partial/\partial t \to +j\omega$ on phasors |
| Outgoing radiation | $e^{-jk_0 r}$ far-field factor |
| Units | SI throughout |
| Vectors / dyadics | $\mathbf{E}$, $\mathbf{H}$, $\boldsymbol{\mathcal{T}}$; macros `\E`, `\H`, `\Jimp` where available |
| Spherical coords | Right-handed; outward normal on control surfaces |
| Complex Poynting | $\mathbf{S}_\mathrm{c}=\tfrac12\mathbf{E}\times\mathbf{H}^*$; $\langle\mathbf{S}\rangle=\mathrm{Re}\,\mathbf{S}_\mathrm{c}$ |
| Peak vs cycle average | Torque and power cycle averages use $\tfrac12\mathrm{Re}\{\cdots\}$ where stated |
| Hankel outgoing | $h_\ell^{(2)}$ for exterior radiation under $e^{+j\omega t}$ |
| VSW magnetic from electric | $\mathbf{N}^+=(1/k_0)\nabla\times\mathbf{M}^+$; $\Delta\mathbf{H}=(j/\eta_0)\sum(a\mathbf{N}^++b\mathbf{M}^+)$ paired with electric expansion |
| Equation labels | `eq:chNN.*` monotone within chapter |
| Figure labels | `fig:chNN.*`; figure-by-figure audit before lock |

## Normal and surface orientation

- Electromagnetic control volumes: outward $\hat{\mathbf{n}}$ on the material-enclosing boundary unless stated otherwise.
- Passive impedance boundaries: power flux sign tied to Eqs. in §1.1.2—do not reuse lossless cavity arguments without the boundary term.

## Spherical harmonics / modal normalization

- Vector spherical wave definitions: **once** per volume (Ch. 1 HOME); later chapters **USE** by reference unless TOC assigns a new HOME.

## Bibliography

- Shared database `latex/references.bib`; chapter builds may use local `references.bib` copies—keep keys synchronized.
