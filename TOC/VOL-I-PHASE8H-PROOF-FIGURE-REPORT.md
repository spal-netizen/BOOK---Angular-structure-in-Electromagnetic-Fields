# Phase VIII-H â€” Proof and figure finish report

**Date:** 2026-06-25  
**Gate:** **PASS**

## Proof rehabilitation (Ch. 3)

| Metric | Before | After | Target |
|--------|-------:|------:|--------|
| `[Proof sketch]` markers | 42 | 0 | 0 |
| Full expanded proofs | â€” | 15 | 15 |
| Demoted proofs (`Proof.` only) | â€” | 27 | 26+ |

Load-bearing full proofs: thm:ch3.symmetry-commutes, thm:ch3.expansion-consistency, thm:ch3.continuous-spectral-decomposition, thm:ch3.J-labeling-admissibility, thm:ch3.J-so3-commutation, thm:ch3.simultaneous-eigenfield-char, thm:ch3.Wigner-D-realizes-rho, thm:ch3.vector-helmholtz-equivalence, thm:ch3.vector-separability, thm:ch3.radial-outgoing-uniqueness-class, thm:ch3.debye-representation, thm:ch3.vsh-div-free, thm:ch3.vsh-orthogonality, thm:ch3.vsh-J-eigenfields, thm:ch3.unbounded-domain-completeness

## Figure merge (caption-only chains)

| Removed | Retained | Note |
|---------|----------|------|
| `fig:ch3.vsh-orthogonality-chain` | `fig:ch3.343-orthogonality-factorization` | VSH orthogonality upgrade + factorization |
| `fig:ch3.352-jacobian-chain` | `fig:ch3.352-plane-wave-chain` | plane-wave + Jacobian measure |
| `fig:ch3.351-calibration-path` | `fig:ch3.351-flux-normalization-chain` | flux normalization + calibration path |
| `fig:ch3.345-calibration-rotation` | `fig:ch3.345-frame-transport` | frame transport + calibration rotation |
| `fig:ch3.362-tail-scan` | `fig:ch3.362-error-chain` | truncation error + tail scan |
| `fig:ch3.381-to-transform` | `fig:ch3.381-fourier-chain` | Fourier chart + transform handoff |


| Metric | Before | After |
|--------|-------:|------:|
| `figure` floats | 123 | 117 |

## Completion status

**VIII-H manuscript gate: PASS.** Ch.~3 proof rehabilitation and figure merge are complete.
Optional full Volume~I PDF rebuild (scripts/Build-VolumeI-Final.ps1) is independent of this gate.

## Files

- `latex/ch03-proof-expansions.tex` â€” 15 full proof bodies
- `scripts/VolI-Phase8H-Proof-Figure-Finish.ps1`
