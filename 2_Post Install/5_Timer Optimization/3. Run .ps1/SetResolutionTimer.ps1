$action = New-ScheduledTaskAction -Execute 'C:\Windows\SetTimerResolution.exe' -Argument '--resolution 5050 --no-console'

$trigger = New-ScheduledTaskTrigger -AtLogOn

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "SetTimerResolution" -Description "Sets Timer Resolution on boot"