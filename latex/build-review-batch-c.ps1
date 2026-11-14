# Batch C — same integration driver as Batch B
$ErrorActionPreference = "Continue"
$base = "main-vol1-stage10"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$repo = Split-Path -Parent $root
$outDir = Join-Path $repo "VOLUME_I_RELEASE\BATCH_C_REVIEW_20261114"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null
$outDir = (Resolve-Path $outDir).Path
Set-Location $root
$logFile = Join-Path $outDir "BUILD_LOG.txt"
"=== Batch C build $(Get-Date -Format o) ===" | Out-File $logFile -Encoding utf8
latexmk -pdf -interaction=nonstopmode -file-line-error "$base.tex" 2>&1 | Tee-Object -FilePath $logFile -Append
$exit = $LASTEXITCODE
$undef = Select-String -Path "$base.log" -Pattern "undefined" -SimpleMatch | Measure-Object | Select-Object -ExpandProperty Count
"Citation/label 'undefined' occurrences in log: $undef" | Tee-Object -FilePath $logFile -Append
"latexmk exit code: $exit" | Tee-Object -FilePath $logFile -Append
if (Test-Path "$base.pdf") {
    Copy-Item -Force "$base.pdf" (Join-Path $outDir "VOLUME_I_REVIEW.pdf")
    Copy-Item -Force "$base.log" (Join-Path $outDir "VOLUME_I_BUILD_DETAIL.log")
}
$srcDir = Join-Path $outDir "sources"
New-Item -ItemType Directory -Force -Path $srcDir | Out-Null
$rels = @(
    "latex\ch03.tex","latex\ch04.tex",
    "latex\ch02-classical\restored\restore-orig-015-2-3-1-scalar-vector-and-dyadic-green-functions.tex",
    "latex\ch02-classical\restored\restore-orig-022-2-4-2-outgoing-wave-selection.tex",
    "latex\ch02-classical\restored\restore-orig-023-2-4-3-uniqueness-of-radiative-solutions.tex"
)
foreach ($rel in $rels) {
    $p = Join-Path $repo $rel
    if (Test-Path $p) { Copy-Item -Force $p (Join-Path $srcDir (Split-Path -Leaf $p)) }
}
if ($exit -ne 0) { exit $exit }