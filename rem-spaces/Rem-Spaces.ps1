param (
    $fn
)

Get-ChildItem $fn . -File | ForEach-Object {
    $newName = $_.Name.Replace(" ", "")
    Rename-Item -Path $_.FullName -NewName $newName -Force
}
