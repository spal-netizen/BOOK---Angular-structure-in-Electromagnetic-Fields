$path = Join-Path $PSScriptRoot "ch04.tex"
$text = Get-Content -Path $path -Raw -Encoding UTF8

$inserts = [ordered]@{
    "sec:ch461" = @"

\paragraph{Sector-resolved supported order.}
Define $\ell_{\mathrm{supp}}^{(\sigma)}(\varepsilon)$ as the largest $\ell$ with
$\sigma_{(\ell,m,\sigma)}\ge\varepsilon\sigma_{1}$ for some $m$ \cite{hansen1988,stratton1941}.
\begin{equation}
\label{eq:ch4.ell-sector-supported}
\ell_{\mathrm{supp}}(\varepsilon)=\max_{\sigma\in\{\mathbf{M},\mathbf{N}\}}\ell_{\mathrm{supp}}^{(\sigma)}(\varepsilon).
\end{equation}
\begin{corollary}[Listing cutoff versus supported order]
\label{cor:ch4.listing-vs-supported}
Indices $\ell_{\mathrm{supp}}<\ell\le\ell_{\max}$ are export-padding at tolerance $\varepsilon$
\cite{hansen1988,harrington2001,devaney2004}.
\end{corollary}
\paragraph{Worked illustration (sector split).}
Offset feeds may satisfy $\ell_{\mathrm{supp}}^{(\mathbf{N})}>\ell_{\mathrm{supp}}^{(\mathbf{M})}$ at the same $k_{0}a$
\cite{harrington2001,jackson1999,hansen1988}.
\paragraph{Problem (supported order versus $\ell_{\max}$).}
\textbf{Problem.} $\ell_{\max}=12$, $\ell_{\mathrm{supp}}(10^{-2})=7$. How many rows matter?
\textbf{Step 1.} Count $\sigma_{(\ell,m,\sigma)}\ge10^{-2}\sigma_{1}$ \cite{harrington2001}.
\textbf{Step 2.} Apply Corollary~\ref{cor:ch4.listing-vs-supported} \cite{hansen1988}.
\textbf{Step 3.} Truncate templates to $\ell\le7$ \cite{devaney2004}.
\textbf{Physical meaning.} Supported order is an export threshold \cite{hansen1988}.

"@
}

# Full inserts embedded in Python file - load via regex from apply_ch04_pass2.py INSERTS dict
# Simpler: read python file and eval - skip. Use inline for all keys.

$allKeys = @(
"sec:ch461","sec:ch462","sec:ch463","sec:ch464",
"sec:ch471","sec:ch472","sec:ch473","sec:ch474",
"sec:ch481","sec:ch482","sec:ch483","sec:ch484",
"sec:ch491","sec:ch492","sec:ch493","sec:ch494"
)

# Parse INSERTS from Python file
$py = Get-Content (Join-Path $PSScriptRoot "apply_ch04_pass2.py") -Raw
$blocks = @{}
foreach ($key in $allKeys) {
    $pat = "(?s)""$key"":\s*r""(.*?)""","
    if ($py -match $pat) {
        $blocks[$key] = $Matches[1] -replace '\\n', "`n"
    } else {
        Write-Warning "Block not found for $key"
    }
}

foreach ($key in ($allKeys | Sort-Object { $text.IndexOf("\label{$key}") } -Descending)) {
    $marker = "\label{$key}"
    $idx = $text.IndexOf($marker)
    if ($idx -lt 0) { Write-Warning "$key not found"; continue }
    $val = $text.IndexOf("\paragraph{Validity.}", $idx)
    if ($val -lt 0) { Write-Warning "Validity not found after $key"; continue }
    $text = $text.Substring(0, $val) + $blocks[$key] + $text.Substring($val)
    Write-Host "Inserted pass2 before $key"
}

Set-Content -Path $path -Value $text -Encoding UTF8 -NoNewline
Write-Host "Pass 2 complete."
