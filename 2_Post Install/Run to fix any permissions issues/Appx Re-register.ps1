Stop-Process -Name "StartMenuExperienceHost" -Force
Stop-Process -Name "ShellExperienceHost" -Force

Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

Read-Host -Prompt "Press Enter to exit"