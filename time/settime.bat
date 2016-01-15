@echo off
CLS
choice Do you have CMOS battery 
if errorlevel 2 goto N 
if errorlevel 1 goto Y

:Y
rem C:\TCPNET\NET logon try try /DOMAIN:domainname /y
C:\TCPNET\NET logon try try /DOMAIN:SFIS /y
cls
C:\TCPNET\NET TIME \\TIMESVR /SET /Y
echo.
echo ***************************************
echo Please check this time&date is correct!
echo ***************************************
echo.
PAUSE
GOTO END

:N
GOTO END

:END 
