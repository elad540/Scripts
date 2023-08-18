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



:part_1_KB0018532
setlocal
	
	taskkill /IM Teams.exe /f
	ping -n 5 > nul
	
	del C:\Users\%username%\AppData\Roaming\Microsoft\Teams\Cache\
	rmdir /s C:\Users\%username%\AppData\Roaming\Microsoft\Teams\blob_storage\
	del C:\Users\%username%\AppData\Roaming\Microsoft\Teams\databases\
	del C:\Users\%username%\AppData\Roaming\Microsoft\Teams\GPUCache\
	rmdir /s C:\Users\%username%\AppData\Roaming\Microsoft\Teams\IndexedDB\
	del C:\Users\%username%\AppData\Roaming\Microsoft\Teams\Local Storage\
	del C:\Users\%username%\AppData\Roaming\Microsoft\Teams\tmp\
		

endlocal
goto :eof
 
