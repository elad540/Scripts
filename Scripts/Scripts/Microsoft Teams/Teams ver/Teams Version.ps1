echo "Today is:"
Get-Date
echo "`n"

Get-CimInstance -ClassName win32_operatingsystem | select csname, lastbootuptime
echo "`n"

systeminfo | findstr /B /C:"OS Name" /B /C:"OS Version"
echo "`n"

Get-Content $env:UserProfile”\AppData\Roaming\Microsoft\Teams\settings.json” | ConvertFrom-Json | Select Version
echo "`n"
