param (
    $fn,
    $Front = 0,
    $Back = 0
)

Write-Host "Debug::Filename: $fn,Front: $Front,Back: $Back"

$ff = "C:\\Users\\amole\\Bin\\ffmpeg\\bin\\ffmpeg.exe"
.$ff -i $fn 2>&1 > fi.txt

$m1 = Select-String -Pattern "Duration: (.*?)," fi.txt 
$du = $m1.Matches[0].Groups[1].Value

Write-Host "Duration: $du"

#front

#$ff -i $fn -ss $se -to $du -c copy out.mp4

#back
$hh, $mm, $ss = $du.Split(':')
$ss = $ss - $se
$du2 = $hh.ToString() + ':' + $mm.ToString() + ':' + $ss.ToString()
Write-Host "Debug::Duration2: " $du2

#$ff -i $fn -ss 00:00:00 -to $du2 -c copy out.mp4
