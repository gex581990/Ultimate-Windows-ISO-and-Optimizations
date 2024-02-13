echo off
color F0
title SvcHost Split Threshold
mode con: cols=92 lines=21

:menu
cls
echo If you need assistance, please type in "assist".
echo If you would like to return to default, please type in "default".
echo Enter your amount of RAM (in MB):
set /p a=
if "%a%" == "2048" goto :2048
if "%a%" == "3072" goto :3072
if "%a%" == "4096" goto :4096
if "%a%" == "6144" goto :6144
if "%a%" == "8192" goto :8192
if "%a%" == "10240" goto :10240
if "%a%" == "12288" goto :12288
if "%a%" == "16384" goto :16384
if "%a%" == "20480" goto :20480
if "%a%" == "24576" goto :24576
if "%a%" == "32768" goto :32768
if "%a%" == "49152" goto :49152
if "%a%" == "65536" goto :65536 
if "%a%" == "default" goto :default
if "%a%" == "assist" goto :assist
cls

rem **This is placed in front to make sure if misspelled, it will redirect you instead of applying the wrong setting**
:misspell
cls
echo Misspell detected!
timeout 2 > nul
echo Redirecting back to menu.
timeout 2 > nul
goto :menu

:2048
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 2097152 /f > nul
cls
echo Value set to 2048MB (or 2097152)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:3072
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 3145728 /f > nul
cls
echo Value set to 3072MB (or 3145728)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:4096
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 4194304 /f > nul
cls
echo Value set to 4096MB (or 4194304)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:6144
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 6291456 /f > nul
cls
echo Value set to 6144MB (or 6291456)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:8192
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 8388608 /f > nul
cls
echo Value set to 8192MB (or 8388608)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:10240
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 10485760 /f > nul
cls
echo Value set to 10240MB (or 10485760)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:12288
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 12582912 /f > nul
cls
echo Value set to 12288MB (or 12582912)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:16384
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 16777216 /f > nul
cls
echo Value set to 16384MB (or 16777216)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:20480
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 20971520 /f > nul
cls
echo Value set to 20480MB (or 20971520)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:24576
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 25165824 /f > nul
cls
echo Value set to 24576MB (or 25165824)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:32768
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 33554432 /f > nul
cls
echo Value set to 32768MB (or 33554432)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:49152
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 50331648 /f > nul
cls
echo Value set to 49152MB (or 50331648)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:65536
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 67108864 /f > nul
echo Value set to 65536MB (or 67108864)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:default
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 380000 /f > nul
cls
echo Value set to 3500MB (or 380000)
timeout 2 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

:assist
cls
echo If you use 2GB of RAM, type in 2048
echo If you use 3GB of RAM, type in 3072
echo If you use 4GB of RAM, type in 4096
echo If you use 6GB of RAM, type in 6144
echo If you use 8GB of RAM, type in 8192
echo If you use 10GB of RAM, type in 10240
echo If you use 12GB of RAM, type in 12288
echo If you use 16GB of RAM, type in 16384
echo If you use 20GB of RAM, type in 20480
echo If you use 24GB of RAM, type in 24576
echo If you use 32GB of RAM, type in 32768
echo If you use 48GB of RAM, type in 49152
echo If you use 64GB of RAM, type in 65536
echo.
echo If you don't find your listed amount of RAM, tell the creator and it will be added shortly.
echo Return back to the menu?
set /p a=
if "%a%" == "yes" goto :menu
if "%a%" == "no" exit

rem **This is placed in front to make sure if misspelled, it will redirect you instead of applying the wrong setting**
:misspell
cls
echo Misspell detected!
timeout 2 > nul
echo Redirecting back to assist.
timeout 2 > nul
goto :assist