param (
    $OutFile
)


#$pr = @{'Name' = 'Test'
#        'StartType' = 'Manual'}
#Write-Output $pr

#$tp = New-Object -TypeName PSObject -Property $pr
$op = @()

#Write-Host Name StartType

$ls = Get-Service | Where-Object Status -eq 'Running' 

ForEach ($sv in $ls) {
    $rr = @{'Name' = $sv.Name
            'StartType' = $sv.StartType}

    $rt = New-Object -TypeName PSObject -Property $rr
    $op += $rt    
}

Write-Output $op | ConvertTo-Html | Out-File $OutFile

#| ConvertTo-Html | Out-File $OutFile

