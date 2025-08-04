$p = "C:\Users\amole\Documents\ShareX\Screenshots"
$f = Get-ChildItem $p
$l = $f | Sort-Object -Property LastWriteTime -Descending | Select-Object -First 1
$f2 = Get-ChildItem $p\$l
$f3 = $f2 | foreach $_ { if ($_.LastWriteTime.Date -eq $d.Date) { echo $_.Name } }
$f4 = $f3 | foreach $_ { Join-Path $p\$l $_ }

$od = "C:\Users\amole\OneDrive\Public\Images"
$m = @("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
$dp = $d.Date.Year.ToString() + "\" + $m[$d.Date.Month - 1] + "\" + '{0:d2}' -f $d.Date.Day

$dd = Join-Path $od $dp

$dd1 = Split-Path -Parent $dd
$dd2 = Split-Path -Leaf $dd
if (Test-Path -Path $dd) { echo "Destination dir exists." } else { New-Item -Path $dd1 -Name $dd2 -ItemType Directory; echo "Destination directory created." }

$f4 | foreach $_ { $n = Split-Path -Leaf $_; Copy-Item -Confirm $_ $dd\$n; } # Write-Host "Copied $_ to $dd\$n" }
