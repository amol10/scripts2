param (
    $url = "https://www.britannica.com/topic/list-of-serial-killers-2026519"
)

$r = Invoke-WebRequest $url
$m = Select-String -Pattern "<ul>.*</ul>"-InputObject $r.Content
$m2 = Select-String -Pattern "<a.*?>(.*?)</a>" -InputObject $m.Matches.Value -AllMatches
ForEach ($mi in $m2.Matches) { $mi.Groups[1].Value }
