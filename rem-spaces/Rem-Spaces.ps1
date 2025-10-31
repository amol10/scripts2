Get-ChildItem -Path . -File | ForEach-Object {
    $newName = $_.Name.Replace(" ", "")
    Rename-Item -Path $_.FullName -NewName $newName -Force
}