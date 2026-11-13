"""Chu Q_LB must be described as exact TM01 modal Q, not mere asymptotic-only."""
from __future__ import annotations

import re
import sys
from pathlib import Path

TEX = Path(__file__).resolve().parents[1] / "source" / "CHAPTER1_R13_0_WORKING_CANDIDATE.tex"


def main() -> int:
    text = TEX.read_text(encoding="utf-8", errors="replace")
    if re.search(r"not an exact identity for finite\s*\$ka", text, re.I):
        print("FAIL: Q_LB still called non-exact at finite ka")
        return 1
    if "W_{\\mathrm{st,1}}\\propto" in text:
        print("FAIL: unsupported Chu energy scaling sentence remains")
        return 1
    if "exact" not in text or "TM_{01}" not in text:
        print("FAIL: exact TM01 scope text missing")
        return 1
    print("OK: Chu Q exactness scope")
    return 0


if __name__ == "__main__":
    sys.exit(main())
