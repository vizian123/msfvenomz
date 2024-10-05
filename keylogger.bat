@echo off
echo Retrieving your public IP address...
curl ifconfig.me
echo.

echo Retrieving OS details...
systeminfo | findstr /B /C:"OS"
echo.

pause
