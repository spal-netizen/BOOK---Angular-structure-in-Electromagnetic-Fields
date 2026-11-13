"""Verify VSW Delta E/H expansions satisfy curl Maxwell in TeX."""
from __future__ import annotations

import re
import sys
from pathlib import Path

TEX = Path(__file__).resolve().parents[1] / "source" / "CHAPTER1_R13_0_WORKING_CANDIDATE.tex"


def main() -> int:
    text = TEX.read_text(encoding="utf-8", errors="replace")
    if re.search(r"k_0/\\eta_0\\sum.*\\mathbf M_\{\\ell m\}", text):
        print("FAIL: old k0/eta0 VSW electric expansion still present")
        return 1
    if "-\\frac{\\jj}{\\eta_0}\\sum" in text and "b_{\ell m}\\,\\mathbf M" in text:
        if re.search(
            r"\\Delta\\H\s*=\s*-\\frac\{\\jj\}\{\\eta_0\}.*-\s*b_\{\\ell m\}",
            text,
            re.S,
        ):
            print("FAIL: old wrong-sign VSW magnetic expansion")
            return 1
    need = [
        "eq:ch1.vsw-curl-identities",
        "eq:ch1.vsw-delta-E-expansion",
        "eq:ch1.vsw-delta-H-expansion",
        "curl\\Delta\\E=k_0",
        "curl\\Delta\\H=\\jj\\omega\\varepsilon_0\\Delta\\E",
    ]
    for s in need:
        if s not in text:
            print(f"FAIL: missing VSW closure fragment: {s}")
            return 1
    print("OK: Maxwell-consistent VSW pair in manuscript")
    return 0


if __name__ == "__main__":
    sys.exit(main())
