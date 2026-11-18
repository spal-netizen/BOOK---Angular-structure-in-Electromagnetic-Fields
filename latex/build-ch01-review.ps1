# Ch.1 author-review build — run from latex/
Set-StrictMode -Version Latest
$ErrorActionPreference = "Continue"
Set-Location $PSScriptRoot
latexmk -pdf -interaction=nonstopmode main-ch01-only.tex
latexmk -pdf -interaction=nonstopmode main-ch01-only.tex
$stamp = Get-Date -Format 'yyyyMMdd'
$dest = "..\VOLUME_I_RELEASE\CHAPTER1_CLASSICAL_CORRECTION_$stamp.pdf"
$benchmark = "..\VOLUME_I_RELEASE\CHAPTER1_BENCHMARK_$stamp.pdf"
$pass8 = "..\VOLUME_I_RELEASE\CHAPTER1_BENCHMARK_PASS8_$stamp.pdf"
$final = "..\VOLUME_I_RELEASE\CHAPTER1_FINAL_BENCHMARK_$stamp.pdf"
Copy-Item -Force "main-ch01-only.pdf" "..\VOLUME_I_RELEASE\CHAPTER1_TEXTBOOK_BATCH_V_$stamp.pdf"
Copy-Item -Force "main-ch01-only.pdf" "..\VOLUME_I_RELEASE\CHAPTER1_TEXTBOOK_REVIEW_$stamp.pdf"
Copy-Item -Force "main-ch01-only.pdf" $dest
Copy-Item -Force "main-ch01-only.pdf" $benchmark
Copy-Item -Force "main-ch01-only.pdf" $pass8
Copy-Item -Force "main-ch01-only.pdf" $final
Write-Host "Wrote $final (canonical), $benchmark, $pass8, $dest"