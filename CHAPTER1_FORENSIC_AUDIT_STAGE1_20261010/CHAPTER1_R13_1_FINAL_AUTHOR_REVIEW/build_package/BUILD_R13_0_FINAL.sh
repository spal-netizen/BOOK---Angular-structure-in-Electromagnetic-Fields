#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
cp ../source/CHAPTER1_R13_0_WORKING_CANDIDATE.tex ch01.tex
latexmk -g -pdf -interaction=nonstopmode main-ch01-only.tex
cp main-ch01-only.pdf ../pdf/CHAPTER1_R13_0_SOURCE_VERIFIED_CANDIDATE.pdf
python ../validation/ch01_numeric_checks.py
python ../validation/ch01_dipole_maxwell_checks.py

