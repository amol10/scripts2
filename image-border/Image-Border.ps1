$p = 'C:\Users\amole\AppData\Local\Programs\Opera\opera.exe'
$u = "https://www.imagetools.org/add-border"
Start-Process $p -PassThru $u
$s = "C:\Users\amole\Documents\ShareX\Screenshots"
$sd = Get-ChildItem $s -Directory | Sort-Object -Property LastWriteTime -Descending | Select-Object -First 1
$ss = Join-Path $s $sd.Name
Start-Process explorer $ss

Read-Host -Prompt "Press any key to continue.."

$d = "C:\Users\amole\Downloads"
$g = Get-ChildItem $d
$n = $g | Sort-Object -Property LastWriteTime -Descending | Select-Object -First 1
$f = "$d\$n"

$c = Read-Host -Prompt "$f, move to $ss (y/n)?"
if ($c -eq 'y') {
    Move-Item $f $ss -Force
}

Invoke-Item "$ss\$n"

