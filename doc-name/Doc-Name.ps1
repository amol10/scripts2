$n = Read-Host -Prompt "Title";
#echo $n;
$n = $n.ToLower();
#echo $n;
$n = $n -replace ' ', '-';
#echo $n;
$c = Read-Host -Prompt "Index";
echo "0$c-$n";
Set-Clipboard "0$c-$n";
