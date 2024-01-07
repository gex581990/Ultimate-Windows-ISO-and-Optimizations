reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f >nul 2>&1
bcdedit /deletevalue useplatformclock >nul 2>&1
bcdedit /set disabledynamictick Yes >nul 2>&1
bcdedit /deletevalue useplatformtick >nul 2>&1
call:POWERSHELL "Get-PnpDevice | Where-Object { $_.InstanceId -like 'ACPI\PNP0103\2&daba3ff&*' } | Disable-PnpDevice -Confirm:$false"
call:POWERSHELL "Get-PnpDevice | Where-Object { $_.InstanceId -like 'ACPI\PNP0103\0' } | Disable-PnpDevice -Confirm:$false"
call "%WinDir%\SetTimerResolutionService.exe" -Install >nul 2>&1
sc config "STR" start=auto
start /b net start STR
bcdedit /set tscsyncpolicy Enhanced
bcdedit /set x2apicpolicy Enable
bcdedit /set uselegacyapicmode No
bcdedit /set configaccesspolicy Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No 
