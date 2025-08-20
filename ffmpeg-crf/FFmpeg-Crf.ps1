param (
    [String] $InputFile,
    [Int32] $Crf = 23
)

if ($InputFile -eq "") {
    Write-Host "Please provide an input filename."
    exit 0
}

# if ($Crf -eq Null) {
#    $Crf = 23
#}

$p = Split-Path $InputFile -Parent
$l = Split-Path $InputFile -Leaf

$o = $l.split('.')[0] + " C." + $l.split('.')[1]
$OutputFile = Join-Path $p $o
Write-Host "Input file: $InputFile, crf: $Crf, Output file: $OutputFile."

$c = Read-Host "Continue? (y/n)"
if ($c -ne 'y') {
    exit 0
}

$ff = "C:\\Users\\amole\\Bin\\ffmpeg\\bin\\ffmpeg.exe"
.$ff -i $InputFile -c:v libx264 -crf $Crf $OutputFile
