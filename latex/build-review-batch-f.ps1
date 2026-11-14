# Batch F — Volume I review build (UTF-8 log)
$ErrorActionPreference = "Continue"
$base = "main-vol1-stage10"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$repo = Split-Path -Parent $root
$outDir = Join-Path $repo "VOLUME_I_RELEASE\BATCH_F_REVIEW_20261114"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null
$outDir = (Resolve-Path $outDir).Path
Set-Location $root
$logFile = Join-Path $outDir "BUILD_LOG.txt"
"=== Batch F build $(Get-Date -Format o) ===" | Out-File $logFile -Encoding utf8
latexmk -pdf -interaction=nonstopmode -file-line-error "$base.tex" 2>&1 | ForEach-Object { $_; Add-Content -Path $logFile -Value $_ -Encoding utf8 }
$exit = $LASTEXITCODE
$undef = 0
if (Test-Path "$base.log") {
    $undef = (Select-String -Path "$base.log" -Pattern "Reference.*undefined" | Measure-Object).Count
}
"undefined reference lines: $undef" | Add-Content -Path $logFile -Encoding utf8
"latexmk exit code: $exit" | Add-Content -Path $logFile -Encoding utf8
if (Test-Path "$base.pdf") {
    Copy-Item -Force "$base.pdf" (Join-Path $outDir "VOLUME_I_REVIEW.pdf")
    Copy-Item -Force "$base.log" (Join-Path $outDir "VOLUME_I_BUILD_DETAIL.log")
}
$srcDir = Join-Path $outDir "sources"
New-Item -ItemType Directory -Force -Path $srcDir | Out-Null
$rels = @(
    "latex\ch03.tex","latex\ch04.tex",
    "latex\ch02-classical\restored\sections\section-orig-014-2-3-green-functions-and-electromagnetic-inversion.tex",
    "latex\ch02-classical\restored\sections\section-orig-020-2-4-radiation-conditions-and-uniqueness.tex",
    "latex\ch02-classical\restored\restore-orig-017-2-3-3-singularities-distributions-and-regularization.tex"
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