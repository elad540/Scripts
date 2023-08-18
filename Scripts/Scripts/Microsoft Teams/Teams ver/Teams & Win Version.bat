@echo off
echo Today is:
echo %DATE%
echo.

systeminfo | find "System Boot Time:"
echo.

systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
echo.

echo MS Teams Version:
setlocal
set "jsonFile=%USERPROFILE%\AppData\Roaming\Microsoft\Teams\settings.json"
powershell -Command "(Get-Content -Raw '%jsonFile%') | ConvertFrom-Json | Select-Object -ExpandProperty Version"
echo.

pause