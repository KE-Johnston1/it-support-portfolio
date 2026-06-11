# Cleans temporary files to improve performance
$Temp = "$env:TEMP\*"
$WindowsTemp = "C:\Windows\Temp\*"

Write-Host "Cleaning temporary files..."

Remove-Item $Temp -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item $WindowsTemp -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Temporary files cleaned successfully."

