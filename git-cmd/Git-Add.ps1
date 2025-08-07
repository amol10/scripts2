git add -n .
$c = Read-Host "Continue? (y/n)"
if ($c -ne 'y') {
    exit 1
}
git add .
$m = Read-Host "Enter commit message"
$c = Read-Host "Continue? (y/n)"
if ($c -ne 'y') {
    exit 1
}
git commit -m $m
git push
