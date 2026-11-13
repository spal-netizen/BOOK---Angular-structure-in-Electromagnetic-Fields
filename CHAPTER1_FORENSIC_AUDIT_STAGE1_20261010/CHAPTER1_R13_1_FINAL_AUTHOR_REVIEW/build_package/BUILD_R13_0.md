# R13.0 build instructions

1. Copy canonical chapter into build package:

   `Copy-Item ..\source\CHAPTER1_R13_0_WORKING_CANDIDATE.tex .\ch01.tex -Force`

2. From this directory:

   `latexmk -g -pdf -interaction=nonstopmode main-ch01-only.tex`

3. Publish PDF:

   `Copy-Item main-ch01-only.pdf ..\pdf\CHAPTER1_R13_0_SOURCE_VERIFIED_CANDIDATE.pdf -Force`

4. Record SHA-256 of `ch01.tex`, working candidate, and output PDF in `status/REPRODUCIBILITY_MANIFEST.txt`.

