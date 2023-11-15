Set objShell = CreateObject("WScript.Shell")

' Specify the path to your batch file
batchFilePath = objShell.ExpandEnvironmentStrings("%TEMP%\new.bat")

' Build the command to run the batch file silently
cmd = "cmd /c start /min /b" & batchFilePath

' Execute the command with a hidden window
objShell.Run cmd, 0, True
