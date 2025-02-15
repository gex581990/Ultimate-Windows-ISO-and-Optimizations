reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f >nul 2>&1
bcdedit /deletevalue useplatformclock >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /deletevalue useplatformtick  >nul 2>&1
bcdedit /set tscsyncpolicy Enhanced
bcdedit /set x2apicpolicy Enable
bcdedit /set uselegacyapicmode No
bcdedit /set configaccesspolicy Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No 
