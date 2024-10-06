@echo off
setlocal

:: Check if the script is running with administrative privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this script as an administrator.
    pause
    exit /b
)

:: Disable Windows Defender Real-time Protection
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

echo Real-time protection in Windows Defender has been disabled.
pause

endlocal
