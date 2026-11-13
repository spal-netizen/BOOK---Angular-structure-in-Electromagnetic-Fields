# Authorial standard (established from Chapter 1 lock)

This template captures **discipline**, not Chapter 1's length or topic list.

## Maxwell-first exposition

- Begin from Maxwell's equations, stated constitutive model, and declared phasor convention.
- Every major field identity must follow from those equations, a cited theorem with matching hypotheses, or an explicitly scoped definition.
- Separate **exact results**, **approximations**, **asymptotics**, and **bookkeeping definitions** in prose—not only in captions.

## Observables vs organization

- Distinguish field **organization** (phase, polarization, modal labels) from **measurable transport** (Poynting flux, stress-moment integrals, passive boundary terms).
- Modal statements must carry the same domain restrictions as in Chapter 1 (open-aperture constructions are not closed-sphere theorems).

## Theorem hygiene

- State hypotheses (domain, medium class, boundary class, radiation condition) before the conclusion.
- Do not claim existence, uniqueness, or continuous dependence unless proved or cited with hypotheses checked.
- Narrow the theorem rather than inventing a proof.

## Prose

- Continuous classical monograph tone (Version A): measured, authoritative, student-readable at graduate level.
- No audit pipelines, tooling vocabulary, or defensive meta-commentary in manuscript body.
- Introduce each concept once; inherit later via `\ref` / “By §x.y”.

## Citations

- Place seminal originator citations at the claim.
- Distinguish primary sources from monograph summaries in audit notes (not in body).

## Figures

- Schematic TikZ or vector figures: correct normals, handedness, and sign conventions.
- Caption + in-body interpretation linking diagram to displayed equations.

## Volume I governance

- Honor `00-NOTATION.md`, `00-FORWARD-MAP.yaml`, TOC tags `[HOME]` / `[USE]` / `[DEFER]`.
- No recursion: only chapter inheritance sections may list deferred concepts.
