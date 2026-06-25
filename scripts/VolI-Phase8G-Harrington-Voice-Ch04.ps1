# Phase VIII-G — Harrington voice pass (Ch. 4) — delegates to generic script
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [switch]$Apply,
    [switch]$VerifyOnly
)
& (Join-Path $PSScriptRoot 'VolI-Phase8G-Harrington-Voice.ps1') -Root $Root -Chapter 4 @PSBoundParameters
exit $LASTEXITCODE
