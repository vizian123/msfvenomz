@echo off
setlocal enabledelayedexpansion

set count=1
set "current_dir=%~dp0"

cd /d "%current_dir%"
for %%f in ("%current_dir%*.*") do (
    ren "%%f" "CRY(!count!)%%~xf"
    set /a count+=1
)

endlocal
