@echo off
echo Script Made By Aman Pandey.
echo (C) Aman Pandey 2022 -2023
echo Version 3.0 Special Edition
pause
cls
echo killing and starting Explorer.exe and hard refreshing your windows
pause
TASKKILL /F /IM explorer.exe
start explorer.exe
cls
tree
cls
/s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
echo Temp cleared with success
cls 
FOR /F "tokens=1, 2 * " %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo Event Logs have been cleared! ^<press any key^>
pause
:do_clear
echo clearing and Fixing %1
wevtutil.exe cl %1
goto :eof
:noAdmin
echo You must run this script as an Administrator !
echo ^<press any key^>
pause
