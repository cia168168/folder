@echo off
:loop
timeout /t 3 >nul
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%USERPROFILE%\AppData\Local\Temp\MyScript.ps1"
timeout /t 30 >nul
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%USERPROFILE%\AppData\Local\Temp\stop.ps1"
timeout /t 5 >nul
goto loop
