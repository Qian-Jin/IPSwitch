@echo off
set /p choice=    1.Static IP   2.DHCP    Your choice?:
if "%choice%"=="1" goto ip1
if "%choice%"=="2" goto ip2
goto main
:ip1
cmd /c netsh interface ip set address name="��������" source=static addr=192.168.1.220 mask=255.255.0.0
echo Done
pause
exit
if errorlevel 2 goto main
if errorlevel 1 goto end
:ip2
netsh interface ip set address name = "��������" source = dhcp
netsh interface ip set dns name = "��������" source = dhcp
echo Done
pause
exit
if errorlevel 2 goto main
if errorlevel 1 goto end
:end 