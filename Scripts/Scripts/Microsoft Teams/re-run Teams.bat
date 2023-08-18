ECHO OFF
setlocal enabledelayedexpansion

goto :start


:start
setlocal
echo hello %usename%
ping -n 3 > nul
cls
echo please wait 

ping -n 6 > nul
goto :part_1_KB0018532

endlocal
goto :eof





:part_2_KB0018408
setlocal

rmdir /s /q "C:\Users\bperetz01\AppData\Local\Microsoft\Teams"
rmdir /s /q "C:\Users\bperetz01\AppData\Local\Microsoft\TeamsMeetingAddin"
rmdir /s /q "C:\Users\bperetz01\AppData\Local\Microsoft\TeamsPresenceAddin"

ping -n 6 > nul

rmdir /s /q "C:\Users\bperetz01\AppData\Roaming\Microsoft\Teams"

ping -n 7 > nul

echo the system lunching Teams please wait
ping -n 5 > nul

start "" "C:\Program Files (x86)\Teams Installer\Teams.exe"

goto :end

endlocal
goto :eof 


:end
setlocal
 
exit  
 
endlocal
goto :eof




