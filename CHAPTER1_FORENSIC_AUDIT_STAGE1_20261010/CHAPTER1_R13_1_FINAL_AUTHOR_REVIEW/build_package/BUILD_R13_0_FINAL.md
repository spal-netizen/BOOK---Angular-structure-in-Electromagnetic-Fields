# R13.0 final build

```powershell
Copy-Item ..\source\CHAPTER1_R13_0_WORKING_CANDIDATE.tex .\ch01.tex -Force
latexmk -g -pdf -interaction=nonstopmode main-ch01-only.tex
Copy-Item main-ch01-only.pdf ..\pdf\CHAPTER1_R13_0_SOURCE_VERIFIED_CANDIDATE.pdf -Force
```

Validation (from repo root):

```powershell
python ..\validation\ch01_numeric_checks.py
python ..\validation\ch01_dipole_maxwell_checks.py
python ..\validation\ch01_equation_register.py
```

