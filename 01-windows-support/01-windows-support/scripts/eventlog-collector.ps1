# Collects recent system and application event logs
$OutputPath = "$env:USERPROFILE\Desktop\eventlogs.txt"

"=== EVENT LOG REPORT ===" | Out-File $OutputPath
"Generated: $(Get-Date)" | Out-File $OutputPath -Append
"" | Out-File $OutputPath -Append

"--- System Errors (Last 50) ---" | Out-File $OutputPath -Append
Get-EventLog -LogName System -EntryType Error -Newest 50 | Out-File $OutputPath -Append

"--- Application Errors (Last 50) ---" | Out-File $OutputPath -Append
Get-EventLog -LogName Application -EntryType Error -Newest 50 | Out-File $OutputPath -Append

Write-Host "Event logs saved to $OutputPath"

