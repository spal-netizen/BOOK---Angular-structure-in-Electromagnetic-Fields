# Subsection Drafting Contract (Ultimate Lock)

Every drafted subsection in all 19 chapters shall follow this exact order.

1. Statement: one precise technical claim or objective sentence.
2. Assumptions: admissibility, geometry, medium, and approximation scope.
3. Derivation/Proof: full mathematical steps; no hidden jumps.
4. Physical interpretation: meaning of each major equation block.
5. Boundary of validity: where the derivation stops being valid.
6. Closure: one precise closing sentence that marks what is established and valid.

Section-first drafting order (mandatory):
For each section (`X.0`, `X.1`, `X.2`, ...), drafting sequence is:
1) section-level introductory framing paragraph(s),
2) subsection drafting in TOC order (`X.y.1`, `X.y.2`, ...),
3) section-level summative bridge paragraph(s).
Directly starting from a subsection without section framing is non-compliant.
Subsection-level forward-link bridge text is optional and must not be forced as a template.

Depth floor requirement:
Each subsection must begin from accessible initial mathematical understanding for the target graduate reader, then build to substantial mathematical depth with explicit intermediate steps.
Depth density lock:
Mathematical development should remain dense and complete, but foundational entry points must be explicit so the derivation remains fully understandable before advancing to high-density arguments.
Global quality requirement:
All chapter drafts must reflect classical monograph standards of depth, density, formal construction, and page-level appearance expected at Harrington/Pozar/Collin/Balanis/Jackson/Griffiths level.

## Hard constraints

- No bullet-list exposition in manuscript body text.
- No re-display of previously established equations unless a new limit, theorem variant, or asymptotic regime is explicitly introduced.
- If theorem ownership belongs elsewhere, replace derivation with `USE` citation to `HOME`.
- Any newly completed theorem-bearing derivation in the active subsection is `HOME` for that result and must be reused later only through `USE` inheritance.
- Every variable is defined inline on first appearance.
- Every subsection must contain at least one explicit sentence stating what is newly established in that subsection.
- Opening and closing paragraphs of each subsection must be uniquely framed; repeated opening/closing templates across subsections are disallowed.
- For Volume I chapters, each parent section (`X.0`, `X.1`, `X.2`, ...) must include an introductory framing paragraph and a summative framing paragraph around its subsection body.
- Every equation variable, parameter, operator symbol, and domain qualifier must be explicitly defined before or at first use.
- Every major equation must be explained twice: first in mathematical-function terms (operator/algebraic role), then in detailed physical terms (field meaning, measurable consequence, and regime relevance).
- Include reader-friendly intermediate derivation steps: small equations/expressions, domain/range constraints, and assumption clarifications whenever needed for comprehension.
- Equation-explanation sentence construction must remain varied across subsections; repetitive explanatory templates are disallowed.
- Equation and reference numbering must be chapter-wise and strictly increasing through subsection flow within each chapter.
- Prose style is globally locked to Version A classical monograph tone: professional, measured, authoritative, and reader-friendly; avoid directive/command-style diction.
- Review protocol is line-by-line and subsection-by-subsection; no subsection proceeds to final acceptance until line-level approval is complete.
- Figures/diagrams are restricted to theorem-centric or concept-centric schematic forms only; decorative graphics are disallowed.
- Every required figure must include correct level/number and caption, and must be explained explicitly in the body text for mathematical and physical interpretation.
- When any governing equation, theorem step, or concept transition would read more clearly with geometry, a compact schematic figure is mandatory in that subsection and must be referenced explicitly in prose.
- Additional reader-clarity lock: include as many conceptual schematic figures as needed to improve engagement and understanding, provided each figure has non-decorative analytical purpose.
- Repeated diagram usage across subsections is disallowed unless a new theorem variant or regime requires it and the difference is explicitly stated.
- Narrative must flow continuously in classical scholarly form; template-like fragment transitions are disallowed.
- Formulaic framing starters (e.g., "This subsection establishes ...", "For physical interpretation ...", "This closure has a direct ...") are disallowed in final prose.
- Architecture-centric prose justification is disallowed (no narrative about drafting/section/subsection architecture as scientific explanation).
- Title-head metacommentary is disallowed; justification language must target concepts, assumptions, equations, and physical interpretation only.
- Equation explanations must be authoritative and varied without recurring sentence molds that reveal machine-template generation.
- Section-level opening and closing framing paragraphs must be uniquely constructed across the chapter; repeated transition templates are disallowed.
- Cumulative governance policy is active: new GCHECK instructions refine this contract and must be merged without removing essential prior locks.

## Depth normalization rule

Depth variance is controlled by requiring all non-introductory subsections to include:

- one theorem/proposition or one formally stated derivation target,
- one proof chain (or proof sketch if and only if full proof is in appendix with explicit pointer),
- one interpretation paragraph,
- one validity paragraph.

Additional mandatory depth checks:

- one explicit variable-definition pass for all symbols introduced in the subsection,
- one mathematical explanation paragraph for each major equation block,
- one physical explanation paragraph for each major equation block.
- one explicit check that opening/closing framing and equation-explanation prose are stylistically distinct from neighboring subsections.

No chapter is allowed to drift into narrative-only treatment for core technical sections.
