# Collects key system information for troubleshooting
$OutputPath = "$env:USERPROFILE\Desktop\system-info.txt"

"=== SYSTEM INFORMATION REPORT ===" | Out-File $OutputPath
"Generated: $(Get-Date)" | Out-File $OutputPath -Append
"" | Out-File $OutputPath -Append

"--- Computer Info ---" | Out-File $OutputPath -Append
Get-ComputerInfo | Out-File $OutputPath -Append

"--- Installed Hotfixes ---" | Out-File $OutputPath -Append
Get-HotFix | Out-File $OutputPath -Append

"--- Network Configuration ---" | Out-File $OutputPath -Append
ipconfig /all | Out-File $OutputPath -Append

"--- Running Processes ---" | Out-File $OutputPath -Append
Get-Process | Sort-Object CPU -Descending | Select-Object -First 20 | Out-File $OutputPath -Append

Write-Host "System information saved to $OutputPath"

