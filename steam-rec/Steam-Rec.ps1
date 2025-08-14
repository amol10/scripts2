$p = "C:\Program Files (x86)\Steam\userdata\1910633334\gamerecordings\video"
$d = Get-ChildItem $p
$d
$p2 = "C:\Users\amole\Videos\Steam-Rec\"
$p3 = "C:\Users\amole\Videos\"
$p2e = Test-Path -Path $p2
$p2e
if ($p2e -eq $False) {
    Write-Host "Dir does not exist."
    New-Item -Name Steam-Rec -Path $p3 -ItemType Directory
}
$p2e = Test-Path -Path $p2
$p2e
if ($p2e -eq $True) {
    Write-Host "Dir created."
} else {
    exit 0
}

$ff = "C:\Users\amole\Bin\ffmpeg\bin\ffmpeg.exe"
#$d | Select-Object -Property

$d2 = $d | ForEach { Get-ChildItem $p\$_ } | ForEach { $_.FullName }
Write-Host $d2.Length "files found."

