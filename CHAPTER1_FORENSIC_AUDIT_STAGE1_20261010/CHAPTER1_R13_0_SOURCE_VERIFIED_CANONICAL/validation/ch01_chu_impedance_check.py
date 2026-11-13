"""R13.1 patch: Chu TM normalized impedance must use d/dp[p h_n^(2)]/(p h_n^(2))."""
from __future__ import annotations

import re
import sys
from pathlib import Path

TEX = Path(__file__).resolve().parents[1] / "source" / "CHAPTER1_R13_0_WORKING_CANDIDATE.tex"
BAD = re.compile(r"\\mathcal\{Z\}_n\(p\)=\\jj\\,\\frac\{h_n'\(p\)\}")
GOOD = re.compile(r"\\frac\{d\}\{dp\}\\bigl\[p\\,h_n\^\{\(2\)\}\(p\)\\bigr\]")


def main() -> int:
    text = TEX.read_text(encoding="utf-8", errors="replace")
    if BAD.search(text):
        print("FAIL: old Chu impedance h_n'/h_n still present")
        return 1
    if not GOOD.search(text):
        print("FAIL: corrected Chu product-derivative impedance not found")
        return 1
    if re.search(r"reactance signs are complex conjugates of Chu.*e\^\{-\\jj\\omega t\}", text):
        print("FAIL: false Chu e^{-jωt} convention conjugation claim")
        return 1
    print("OK: Chu impedance uses [p h_n^(2)]'/(p h_n^(2)) form")
    return 0


if __name__ == "__main__":
    sys.exit(main())
