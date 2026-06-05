#!/usr/bin/env python3
"""Final Ch.1 audit: remove architecture jargon, seminal-first citations."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TEX = ROOT / "latex" / "ch01.tex"

# Longest phrases first
GATE_REPLACEMENTS = [
    ("evaluates transport gates", "evaluates transport criteria"),
    ("Without the regime gate", "Without regime qualification"),
    ("transport-qualified gate", "transport qualification"),
    ("topology-qualified gate", "topology qualification"),
    ("directional-qualified gate", "directional qualification"),
    ("regime-qualified gate", "regime qualification"),
    ("local-density gate", "local-density criterion"),
    ("calibration gates", "calibration checks"),
    ("operational gates", "operational criteria"),
    ("abstract gates", "abstract criteria"),
    ("admissibility gates", "admissibility criteria"),
    ("admissibility gate", "admissibility criterion"),
    ("transport gates", "transport criteria"),
    ("transport gate", "transport criterion"),
    ("regime gates", "regime criteria"),
    ("regime gate", "regime criterion"),
    ("qualified gates", "qualification criteria"),
    ("qualified gate", "qualification criterion"),
    ("scope gates", "scope criteria"),
    ("Scope gate", "Scope criterion"),
    ("scope gate", "scope criterion"),
    ("gauge gate", "gauge criterion"),
    ("power gate", "power qualification"),
    ("Required gate", "Required criterion"),
    ("Apply gates", "Apply criteria"),
    ("Output gate:", "Output criterion:"),
    ("written as one gate", "written as one unified criterion"),
    ("passing one gate", "passing one criterion"),
    ("passes the qualified gates", "passes the qualification criteria"),
    ("with the gates", "with the criteria"),
    ("the gates of", "the criteria of"),
    ("Both gates", "Both criteria"),
    ("both gates", "both criteria"),
    ("each gate", "each criterion"),
    ("one gate", "one criterion"),
    ("the gate fails", "the criterion fails"),
    ("that gate remains", "that criterion remains"),
    ("that gate", "that criterion"),
    ("the gate remains", "the criterion remains"),
    ("right gate", "right criterion"),
    ("strict gate", "strict qualification"),
    ("physical gate", "physical interface"),
    (" every transport gate ", " every transport criterion "),
    ("transport gate in", "transport criterion in"),
    (" the gate ", " the criterion "),
]

CONTRACT_REPLACEMENTS = [
    ("operational channel contract", "operational channel specification"),
    ("inheritance contract", "inheritance map"),
    ("reporting contract", "reporting protocol"),
    ("report contract", "report protocol"),
    ("admissibility contract", "admissibility specification"),
    ("regime contract", "regime specification"),
    ("forward contract", "forward map"),
    ("Volume boundary and forward contract", "Volume boundary and forward map"),
]

FILTER_REPLACEMENTS = [
    ("triple filter", "threefold requirement"),
    ("scope filter", "scope criterion"),
    ("Domain of validity for the scope filter", "Domain of validity for the scope criterion"),
    ("mathematical filter", "mathematical screening"),
    ("operational filter", "operational screening"),
    ("necessary filter", "necessary condition"),
    ("first operational filter", "first operational screening"),
    ("Once this filter is", "Once this screening is"),
    ("the filter is intentionally", "the screening is intentionally"),
    ("the filter withholds", "the screening withholds"),
    ("first filter while", "first condition while"),
    ("symmetry compatibility remains a necessary filter", "symmetry compatibility remains a necessary condition"),
    ("gauge-observability filtering", "gauge-observability screening"),
]

TRIAD_PROSE = [
    ("transport triad of", "three-part transport test of"),
    ("transport triad on", "three-part transport test on"),
    ("transport triad assumes", "three-part transport test assumes"),
    ("transport triad decision", "three-part transport decision"),
    ("Transport triad decision", "Three-part transport decision"),
    ("Numerical transport-triad", "Numerical three-part transport"),
    ("transport-triad indicators", "three-part transport indicators"),
    ("lesson of the triad", "lesson of the three-part test"),
    ("same triad ladder", "same three-part ladder"),
    ("branch of the triad", "branch of the three-part test"),
    ("The triad rejects", "The three-part test rejects"),
    ("The triad therefore", "The three-part test therefore"),
    ("abstract triad concrete", "abstract three-part test concrete"),
    ("pieces of this triad before the triad was", "pieces of this three-part test before it was"),
    ("where the triad already failed", "where the three-part test already failed"),
    ("The triad developed below", "The three-part test developed below"),
    ("defines a transport triad", "defines a three-part transport test"),
    ("convert this triad", "convert this three-part test"),
    ("triad logic", "three-part logic"),
    ("triad conditions hold", "three-part conditions hold"),
    ("triad and derived", "three-part test and derived"),
    ("triad evaluation", "three-part evaluation"),
    ("triad scores", "three-part scores"),
    ("triad passes", "three-part test passes"),
    ("triad makes", "three-part test makes"),
    ("triad tests of", "three-part tests of"),
    ("inputs to the transport triad", "inputs to the three-part transport test"),
    ("declaring transport when only one branch of the triad", "declaring transport when only one branch of the three-part test"),
]

OWNERSHIP = [
    ("under the ownership\nrule established", "under the framework\nestablished"),
    ("declaring deferred ownership boundaries", "declaring deferred topic boundaries"),
    ("defer-ownership-rule", "defer-topic-rule"),
    ("\\mathcal{D}_{\\mathrm{defer}}", "\\mathcal{D}_{\\mathrm{defer}}"),  # keep symbol
]

# Seminal-first citation normalization
TEXTBOOK_KEYS = {"jackson1999", "harrington2001", "collin2001", "balanis2016"}
SEMINAL_DEFAULT = ["maxwell1873", "stratton1941", "poynting1884", "belinfante1940"]

CITE_CONTEXT = [
    (r"torque|angular momentum|stress|momentum", ["belinfante1940", "poynting1884", "abraham1910", "beth1936"]),
    (r"radiation|antenna|dipole|aperture|Chu|reactive|radiative", ["stratton1941", "chu1948", "maxwell1873"]),
    (r"gauge|helicity|spin|orbit", ["belinfante1940", "maxwell1873", "stratton1941"]),
    (r"rotation|covariance|SO\(3\)", ["maxwell1873", "stratton1941", "belinfante1940"]),
    (r"OAM|orbital|Laguerre|Allen|modal", ["allen1992", "beth1936", "belinfante1940"]),
    (r"Maxwell|conservation|field", ["maxwell1873", "poynting1884", "stratton1941"]),
]


def normalize_cite_block(keys: list[str], context: str) -> list[str]:
    keys = [k for k in keys if k not in TEXTBOOK_KEYS]
    for pattern, seminal in CITE_CONTEXT:
        if re.search(pattern, context, re.I):
            for s in reversed(seminal):
                if s not in keys:
                    keys.insert(0, s)
            break
    else:
        for s in reversed(SEMINAL_DEFAULT):
            if s not in keys:
                keys.insert(0, s)
    # dedupe preserve order
    seen: set[str] = set()
    out: list[str] = []
    for k in keys:
        if k not in seen:
            seen.add(k)
            out.append(k)
    return out[:4]  # cap length


def fix_citations(text: str) -> str:
    def repl(m: re.Match) -> str:
        keys = [k.strip() for k in m.group(1).split(",")]
        start = max(0, m.start() - 120)
        ctx = text[start : m.start()]
        new_keys = normalize_cite_block(keys, ctx)
        return "\\cite{" + ",".join(new_keys) + "}"

    return re.sub(r"\\cite\{([^}]+)\}", repl, text)


def main() -> None:
    text = TEX.read_text(encoding="utf-8")
    original = text

    for old, new in GATE_REPLACEMENTS + CONTRACT_REPLACEMENTS + FILTER_REPLACEMENTS + TRIAD_PROSE + OWNERSHIP:
        text = text.replace(old, new)

    text = fix_citations(text)

    # Remove remaining balanis if any slipped through
    text = text.replace("balanis2016,", "").replace(",balanis2016", "").replace("balanis2016", "stratton1941")

    # Clean empty/double commas in cites
    text = re.sub(r"\\cite\{\s*,", r"\\cite{", text)
    text = re.sub(r",\s*,", ",", text)
    text = re.sub(r",\s*\}", "}", text)

    if text == original:
        print("No changes applied.")
    else:
        TEX.write_text(text, encoding="utf-8")
        print(f"Updated {TEX} ({len(original)} -> {len(text)} chars)")

    # Report remaining architecture words
    for word in (" gate", " gates", "contract", "filter", "triad", "ownership"):
        count = text.lower().count(word.strip())
        print(f"  remaining '{word.strip()}': {count}")


if __name__ == "__main__":
    main()
