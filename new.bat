@echo off
:loop
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "C:\Users\User\Desktop\MyScript.ps1"
timeout /t 20 >nul
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "C:\Users\User\Desktop\stop.ps1"
timeout /t 5 >nul
goto loop