# Beth 1936 — SI material torque reconstruction (R13.1)

**Primary:** R. A. Beth, *Phys. Rev.* **50**, 115–125 (1936), DOI [10.1103/PhysRev.50.115](https://doi.org/10.1103/PhysRev.50.115). PDF verified: `primary_sources/beth1936.pdf` (13 pp text extract).

## Original material torque (Gaussian)

Beth (pp. 115–117): anisotropic dielectric, $\mathbf K$ diagonal, permeability unity. Nonparallel $\mathbf E$ and $\mathbf P$ give torque density (his notation)

\[
\mathbf l = \mathbf P \times \mathbf E = \frac{\mathbf D \times \mathbf E}{4\pi}\quad\text{(Gaussian)}.
\]

## SI conversion

Gaussian $\mathbf D_\mathrm{G}=\mathbf E_\mathrm{G}+4\pi\mathbf P_\mathrm{G}$ and $\mathbf D_\mathrm{SI}=\varepsilon_0\mathbf E_\mathrm{SI}+\mathbf P_\mathrm{SI}$ give, for the torque **density** (not energy density),

\[
\boldsymbol\tau_\mathrm{mat} = \mathbf P \times \mathbf E \quad\text{(SI)},\qquad
\boldsymbol\tau_\mathrm{mat} = \mathbf D \times \mathbf E \quad\text{(Gaussian)}.
\]

## Harmonic cycle average under $\exp(+\jj\omega t)$

With phasors $\mathbf P$, $\mathbf E$ for $\exp(+\jj\omega t)$,

\[
\langle\boldsymbol\tau_\mathrm{mat}\rangle = \tfrac12\mathrm{Re}\,\mathbf P^* \times \mathbf E,
\]

using $\langle \mathbf a(t)\times\mathbf b(t)\rangle = \tfrac12\mathrm{Re}(\mathbf a^*\times\mathbf b)$ for complex phasors. Sign follows Beth's plane-wave propagation along $+z$ and stated circular polarization handedness in his eqs. (2)–(3).

## Interface balance (flux vs material torque)

1. **Inside crystal:** volume integral of $\langle\mathbf P\times\mathbf E\rangle$ (Beth eq. (3) per unit area for the slab).
2. **Faces:** net angular-momentum flux incident $-$ reflected $-$ transmitted (Beth conservation argument, pp. 118–119).
3. **Vacuum envelope:** Maxwell stress-moment flux $\boldsymbol\Phi_{J,\mathrm{out}}$ on a closed surface in the field region—bookkeeping for (2), not a replacement for (1).
4. **Lorentz/microscopic** and **radiation-pressure** contributions are kept separate in Beth's discussion of apparatus systematics (pp. 120–124).

## Experiment geometry (minimal)

Multiple quartz quarter-/half-wave plates with a **return beam** (pp. 120–124); not a single-pass pedagogical plate alone.

## Manuscript changes (R13.1)

| Location | Change |
|----------|--------|
| §1.0 (lines 9–11) | Torque = $\mathbf P\times\mathbf E$ + interface flux; stress as flux ledger |
| §1.1.5 (~908) | Material torque density + reflected/transmitted flux |
| §1.6.1 (~1874) | Reconcile $\mathbf P\times\mathbf E$ with stress flux |
| Fig. 1.1 caption | Already qualified (torque vs uniform-beam stress moment) |
| Fig. 1.25 (`fig:ch1.beth-schematic`) | Caption already notes multi-plate/return beam |

**Status:** CLOSED under Beth primary PDF; SI harmonic sign aligned with chapter phasor branch.
