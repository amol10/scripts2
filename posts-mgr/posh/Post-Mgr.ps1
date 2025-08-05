$p = "C:\Users\amole\Documents\notes"
$y = Get-ChildItem $p | Sort-Object -Property Name
$y2 = $y | foreach $_ { Join-Path $p $_.Name }

$m = @("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

$m2 = foreach ($yi in $y2) { foreach ($mi in $m) { Join-Path $yi $mi } }
