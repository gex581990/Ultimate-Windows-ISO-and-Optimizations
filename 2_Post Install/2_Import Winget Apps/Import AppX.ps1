Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
winget import -i $PSScriptRoot\packages.json
Read-Host -Prompt "Press Enter to exit"