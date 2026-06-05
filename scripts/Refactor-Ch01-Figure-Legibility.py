#!/usr/bin/env python3
"""Batch Ch.1 figure legibility refactor: classify BLOCK vs GEO, swap resize macros."""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CH01 = ROOT / "latex" / "ch01.tex"

GEO_MARKERS = (
    r"\draw[ch1shell",
    r"\draw[ch1shellB",
    r"\draw[ch1shellO",
    r"ch1geo",
    r" circle (",
    r" arc (",
    r"ch1axis",
    r"ellipse (",
    r"ch1src",
)

EXPLICIT_GEO_LABELS = (
    "fig:ch1.ex61",
    "fig:ch1.ex62",
    "fig:ch1.ex63",
    "fig:ch1.ex64",
    "fig:ch1.wp-",
)


def classify_tikz(body: str, label: str = "") -> str:
    if any(g in label for g in EXPLICIT_GEO_LABELS):
        return "GEO"
    geo = sum(body.count(m) for m in GEO_MARKERS)
    boxes = body.count(r"\node[ch1box")
    flows = body.count(r"\draw[ch1flow]")
    if boxes >= 3 and flows >= 1 and geo <= 2:
        return "BLOCK"
    if geo >= 1:
        return "GEO"
    if boxes >= 2 and flows >= 1:
        return "BLOCK"
    return "GEO"


def strip_eqref_in_tikz(body: str) -> str:
    body = re.sub(r"Eq\.~\\eqref\{[^}]+\};\s*", "", body)
    body = re.sub(r";\s*Eq\.~\\eqref\{[^}]+\}", "", body)
    body = re.sub(r"Eq\.~\\eqref\{[^}]+\}", "", body)
    body = re.sub(r";\s*;\s*", "; ", body)
    body = re.sub(r"\\;\s*\\;\s*", r"\\; ", body)
    body = re.sub(r"\{\s*;\s*", "{", body)
    body = re.sub(r";\s*\}", "}", body)
    return body


def normalize_geo_preamble(body: str) -> str:
    if "ch1keybox" in body and body.count(r"\node[ch1box") >= 3:
        return re.sub(
            r"\\begin\{tikzpicture\}\[[^\]]+\]",
            r"\\begin{tikzpicture}[ch1geo, scale=0.86]",
            body,
            count=1,
        )
    return re.sub(
        r"\\begin\{tikzpicture\}\[[^\]]+\]",
        r"\\begin{tikzpicture}[ch1geo, scale=0.90]",
        body,
        count=1,
    )


def normalize_block_preamble(body: str) -> str:
    m = re.match(r"\\begin\{tikzpicture\}\[([^\]]*)\]", body)
    if not m:
        return body
    opts = m.group(1)
    nd = "node distance=9mm and 11mm"
    if "node distance" in opts:
        hit = re.search(r"node distance=[^,\]]+", opts)
        if hit:
            nd = hit.group(0)
    return re.sub(
        r"\\begin\{tikzpicture\}\[[^\]]+\]",
        rf"\\begin{{tikzpicture}}[ch1fig, {nd}]",
        body,
        count=1,
    )


def bump_label_offsets(body: str) -> str:
    repl = [
        ("left=3mm", "left=11mm"),
        ("left=4mm", "left=11mm"),
        ("left=6mm", "left=12mm"),
        ("left=7mm", "left=12mm"),
        ("left=8mm", "left=14mm"),
        ("left=10mm", "left=14mm"),
        ("right=3mm", "right=11mm"),
        ("right=5mm", "right=12mm"),
        ("right=6mm", "right=12mm"),
        ("right=8mm", "right=14mm"),
        ("right=10mm", "right=14mm"),
        ("below=5mm", "below=9mm"),
        ("below=6mm", "below=10mm"),
        ("below=7mm", "below=10mm"),
        ("below=8mm", "below=11mm"),
        ("above=3mm", "above=8mm"),
        ("above=4mm", "above=8mm"),
        ("above=7mm", "above=10mm"),
    ]
    for old, new in repl:
        body = body.replace(old, new)
    return body


def ch1lblout_to_oncanvas(body: str) -> str:
    body = body.replace("[ch1lblout", "[ch1oncanvas")
    body = body.replace("ch1lblout,", "ch1oncanvas,")
    return body


def shorten_bottom_banners(body: str) -> str:
    pattern = re.compile(
        r"\\node\[(?:ch1oncanvas|ch1lblout), align=center\] at \(0,(-[0-9.]+)\)\s*\n\s*\{([^}]{40,})\}",
        re.DOTALL,
    )

    def repl(m: re.Match[str]) -> str:
        y = m.group(1)
        text = m.group(2).strip()
        new_y = "-2.85" if float(y) > -2.5 else y
        return (
            rf"\node[ch1keybox, fill=gray!8, align=center, minimum width=48mm] "
            rf"at (0,{new_y}) {{{text}}}"
        )

    return pattern.sub(repl, body)


def process_tikz(tikz: str, label: str) -> tuple[str, str]:
    kind = classify_tikz(tikz, label)
    tikz = strip_eqref_in_tikz(tikz)
    tikz = bump_label_offsets(tikz)
    if kind == "GEO":
        tikz = normalize_geo_preamble(tikz)
        tikz = ch1lblout_to_oncanvas(tikz)
        tikz = shorten_bottom_banners(tikz)
    else:
        tikz = normalize_block_preamble(tikz)
    return tikz, kind


def main() -> int:
    text = CH01.read_text(encoding="utf-8")
    stats = {"BLOCK": 0, "GEO": 0}

    def full_replacer(m: re.Match[str]) -> str:
        placement = re.search(r"\\begin\{figure\}\[([^\]]*)\]", m.group(0))
        opt = placement.group(1) if placement else "t"
        tikz = m.group(1)
        tail_start = m.end()
        tail = text[tail_start : tail_start + 500]
        label_m = re.search(r"\\label\{(fig:ch1\.[^}]+)\}", tail)
        label = label_m.group(1) if label_m else ""
        new_tikz, kind = process_tikz(tikz, label)
        stats[kind] += 1
        macro = r"\ChOneFigBlock{%" if kind == "BLOCK" else r"\ChOneFigGeo{%"
        return (
            rf"\begin{{figure}}[{opt}]" + "\n"
            r"\centering" + "\n"
            + macro + "\n"
            + new_tikz
        )

    new_text = re.sub(
        r"\\begin\{figure\}\[[^\]]*\]\s*\n\\centering\s*\n"
        r"\\ChOneFig(?:Resize|Block|Geo)\{%\s*\n"
        r"(\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}%)",
        full_replacer,
        text,
        flags=re.DOTALL,
    )

    CH01.write_text(new_text, encoding="utf-8")
    print(f"Processed {sum(stats.values())} figures: {stats}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
