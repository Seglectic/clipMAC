@REM // ╭───────────────────────────────────────────────────────────────────────────╮
@REM // │                            Windows clipMAC                                │
@REM // │  Gets system mac address and places the result in the windows clipboard.  │
@REM // ╰───────────────────────────────────────────────────────────────────────────╯
@echo off
powershell -Command "Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { $_.MacAddress -replace '-', ':' | Set-Clipboard }"
