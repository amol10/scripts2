
param (
    [string]$Filename
)

$f = $Filename
$g = git show --summary $f
$m = $g | Select-String -Pattern "commit .*?"
$h = $m -split " " | Select-Object -Last 1

$r = "origin"
$ru = git remote get-url $r
$ru2 = $ru -split ":" | Select-Object -Last 1
$ru3 = $ru2 -split "\." | Select-Object -First 1
$u = "https://github.com/$ru3/blob/$h/$f"

Set-Clipboard $u
Write-Host "$u, copied to clipboard."