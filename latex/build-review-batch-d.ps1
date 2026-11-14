# Batch D — Volume I review build (main-vol1-stage10)
$ErrorActionPreference = "Continue"
$base = "main-vol1-stage10"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$repo = Split-Path -Parent $root
$outDir = Join-Path $repo "VOLUME_I_RELEASE\BATCH_D_REVIEW_20261114"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null
$outDir = (Resolve-Path $outDir).Path
Set-Location $root
$logFile = Join-Path $outDir "BUILD_LOG.txt"
"=== Batch D build $(Get-Date -Format o) ===" | Out-File $logFile -Encoding utf8
latexmk -pdf -interaction=nonstopmode -file-line-error "$base.tex" 2>&1 | Tee-Object -FilePath $logFile -Append
$exit = $LASTEXITCODE
$undef = 0
if (Test-Path "$base.log") {
    $undef = (Select-String -Path "$base.log" -Pattern "Reference.*undefined" | Measure-Object).Count
}
"Citation/label undefined reference lines in log: $undef" | Tee-Object -FilePath $logFile -Append
"latexmk exit code: $exit" | Tee-Object -FilePath $logFile -Append
if (Test-Path "$base.pdf") {
    Copy-Item -Force "$base.pdf" (Join-Path $outDir "VOLUME_I_REVIEW.pdf")
    Copy-Item -Force "$base.log" (Join-Path $outDir "VOLUME_I_BUILD_DETAIL.log")
}
$srcDir = Join-Path $outDir "sources"
New-Item -ItemType Directory -Force -Path $srcDir | Out-Null
$rels = @(
    "latex\ch03.tex","latex\ch04.tex",
    "latex\ch02-classical\part01-source-and-harmonic-maxwell.tex",
    "latex\ch02-classical\part03-near-far-radiation-operators.tex",
    "latex\ch02-classical\restored\restore-orig-002-2-0-1-radiation-as-a-source-to-field-operator.tex",
    "latex\ch02-classical\restored\restore-orig-013-2-2-3-causality-and-time-frequency-equivalence.tex",
    "latex\ch02-classical\restored\restore-orig-017-2-3-3-singularities-distributions-and-regularization.tex",
    "latex\ch02-classical\restored\restore-orig-022-2-4-2-outgoing-wave-selection.tex",
    "latex\ch02-classical\restored\restore-orig-023-2-4-3-uniqueness-of-radiative-solutions.tex"
)
foreach ($rel in $rels) {
    $p = Join-Path $repo $rel
    if (Test-Path $p) { Copy-Item -Force $p (Join-Path $srcDir (Split-Path -Leaf $p)) }
}
$ch1 = Join-Path $repo "latex\ch01.tex"
if (Test-Path $ch1) {
    $h = (Get-FileHash $ch1 -Algorithm SHA256).Hash
    "latex/ch01.tex SHA256=$h" | Out-File (Join-Path $outDir "CHAPTER1_HASH_CHECK.txt") -Encoding utf8
}
if ($exit -ne 0) { exit $exit }