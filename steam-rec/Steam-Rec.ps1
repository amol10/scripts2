$p = "C:\Program Files (x86)\Steam\userdata\1910633334\gamerecordings\video"
$d = Get-ChildItem $p
$d
$p2 = "C:\Users\amole\Videos\Steam-Rec\"
$p3 = "C:\Users\amole\Videos\"
$p2e = Test-Path -Path $p2
$p2e
$dc = $False
if ($p2e -eq $False) {
    Write-Host "Dir does not exist."
    New-Item -Name Steam-Rec -Path $p3 -ItemType Directory
    $dc = $True
}
$p2e = Test-Path -Path $p2
$p2e
if ($p2e -eq $True) {
    if ($dc) {
        Write-Host "Dir created."
    } else {
        Write-Host "Dir exists."
    }
} else {
    exit 0
}

$ff = "C:\Users\amole\Bin\ffmpeg\bin\ffmpeg.exe"
#$d | Select-Object -Property

$d2 = $d | ForEach { Get-ChildItem $p\$_ } | ForEach { $_.FullName }
Write-Host $d2.Length "files found."

$tc = 10
ForEach ($f in $d2) {
    #Write-Host $f
    .$ff -i $f
    $tc -= 1
    if ($tc -eq 0) {
        break
    }
}
