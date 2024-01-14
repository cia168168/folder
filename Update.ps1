$botToken = '6899690141:AAENcDCrG8znTahm-5WB8R7UIZoOPEZTSBQ'
$chatId = '5998953011'
$textMessage = 'online'
$apiUrl = "https://api.telegram.org/bot$botToken/sendMessage"
$params = @{
    'chat_id'    = $chatId
    'text'       = $textMessage
}
$jsonParams = $params | ConvertTo-Json
$response = Invoke-RestMethod -Uri $apiUrl -Method Post -Body $jsonParams -ContentType 'application/json'
Write-Output $response
