@echo off
:loop
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%USERPROFILE%\AppData\Local\Temp\MyScript.ps1"
timeout /t 20 >nul
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%USERPROFILE%\AppData\Local\Temp\stop.ps1"
timeout /t 5 >nul
goto loop
