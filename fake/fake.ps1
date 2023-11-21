$url1 = "https://github.com/cia168168/folder/raw/main/fake/rans.mp4"
$output1 = "$env:TEMP\rans.mp4"
Invoke-WebRequest -Uri $url1 -OutFile $output1
Start-Process $output1

$url2 = "https://github.com/cia168168/folder/raw/main/fake/ransd.png"
$output2 = "$env:TEMP\ransd.png"
Invoke-WebRequest -Uri $url2 -OutFile $output2
Start-Process $output2

# Wait for processes to become idle (adjust the timeout as needed)
Start-Sleep -Seconds 5

# Send F11 key
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.SendKeys]::SendWait("{F11}")
