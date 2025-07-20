$r =  Invoke-WebRequest https://www.moongiant.com/phase/today/
$c = $r.Content

$m = Select-String -Pattern "<div id=""todayMoonContainer"">.*src=""(.*?)"".*</div>" -InputObject $c
$mt = $m.Matches.Groups[1].Value

$mt

$base = "https://www.moongiant.com/phase/today"
$iu = $base + $mt

$iu


<#
$s = Select-String -Pattern "src=.*" -InputObject $mt
$sr = $s.Matches.Value

$sr#>
