# Runs basic network diagnostics and outputs results
$OutputPath = "$env:USERPROFILE\Desktop\network-diagnostics.txt"

"=== NETWORK DIAGNOSTICS REPORT ===" | Out-File $OutputPath
"Generated: $(Get-Date)" | Out-File $OutputPath -Append
"" | Out-File $OutputPath -Append

"--- IP Configuration ---" | Out-File $OutputPath -Append
ipconfig /all | Out-File $OutputPath -Append

"--- Ping Test (8.8.8.8) ---" | Out-File $OutputPath -Append
ping 8.8.8.8 -n 10 | Out-File $OutputPath -Append

"--- Ping Test (google.com) ---" | Out-File $OutputPath -Append
ping google.com -n 10 | Out-File $OutputPath -Append

"--- Traceroute (google.com) ---" | Out-File $OutputPath -Append
tracert google.com | Out-File $OutputPath -Append

Write-Host "Network diagnostics saved to $OutputPath"

