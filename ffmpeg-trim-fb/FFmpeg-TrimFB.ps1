param (
    $fn
)

$ff = "C:\\Users\\amole\\Bin\\ffmpeg\\bin\\ffmpeg.exe"
$ff -i $fn 2>&1 > fi.txt

$m1 = Select-String -Pattern "Duration: (.*?)," fi.txt 