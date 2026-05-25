#!/usr/bin/env python3
"""Generate LaTeX chapter stubs from TOC/volume-I-ch01-04.txt"""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
TOC = ROOT / "TOC" / "volume-I-ch01-04.txt"
LATEX = ROOT / "latex"

CHAPTER_TITLES = {
    1: "Foundations of Angular Electromagnetic Structure",
    2: "Maxwell Operators and Radiation Mappings",
    3: "Angular Momentum Eigenfields and Representation Theory",
    4: "Source Realizability and Spectral Truncation",
}


def slug(sec_id: str) -> str:
    return f"sec:ch{sec_id.replace('.', '')}"


def parse_toc(text: str) -> dict[int, list[tuple[str, str, int]]]:
    """Return {ch: [(kind, id, title), ...]} kind in section|subsection"""
    data: dict[int, list] = {1: [], 2: [], 3: [], 4: []}
    ch = 1
    for line in text.splitlines():
        line = line.strip()
        if not line:
            continue
        mch = re.match(r"Chapter\s+(\d+)\s+—\s+(.+)", line)
        if mch:
            ch = int(mch.group(1))
            continue
        msub = re.match(r"^(\d+\.\d+\.\d+)\s+(.+)$", line)
        if msub:
            data[ch].append(("subsection", msub.group(1), msub.group(2)))
            continue
        msec = re.match(r"^(\d+\.\d+)\s+(.+)$", line)
        if msec:
            data[ch].append(("section", msec.group(1), msec.group(2)))
    return data


def emit_chapter(ch: int, items: list) -> str:
    lines = [
        f"% Auto-generated stub — edit body text; keep labels stable",
        f"\\chapter{{{CHAPTER_TITLES[ch]}}}",
        f"\\label{{ch:{ch:02d}}}",
        "",
    ]
    for kind, sec_id, title in items:
        cmd = "section" if kind == "section" else "subsection"
        esc_title = title.replace("&", "\\&")
        lines.append(f"\\{cmd}{{{esc_title}}}")
        lines.append(f"\\label{{{slug(sec_id)}}}")
        lines.append("% Tier: A | Outline: outlines/ch%02d/%s.txt" % (ch, sec_id))
        lines.append("\\textit{[Draft --- author outline required before AI expansion.]}")
        lines.append("")
    return "\n".join(lines) + "\n"


def main() -> None:
    text = TOC.read_text(encoding="utf-8", errors="replace")
    parsed = parse_toc(text)
    LATEX.mkdir(parents=True, exist_ok=True)
    for ch in range(1, 5):
        out = LATEX / f"ch{ch:02d}.tex"
        out.write_text(emit_chapter(ch, parsed[ch]), encoding="utf-8")
        print(f"Wrote {out} ({len(parsed[ch])} blocks)")


if __name__ == "__main__":
    main()
