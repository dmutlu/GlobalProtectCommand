$Run = $true
$Service = "PanGPS"
Do{
$Option = Read-Host -Prompt 'Start or Kill?'

If ($Option -eq 'Start'){
Write-Host 'Starting Global Protect'
Start-Service -Name $Service
Break
}
ElseIf ($Option -eq 'Kill'){
Write-Host 'Killing Global Protect'
Stop-Service -Name $Service
Break
}
ElseIf ($Option -eq 'Exit'){
Exit
}
Else{
Write-Host 'Invalid Option'}
}until($Run -eq $false)