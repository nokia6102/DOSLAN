@echo off

:SETTIME
CD\TIME
CALL SETTIME.BAT

:DT398
CD\
CALL ib398r20.bat


REM :COLOR
REM CD\COLOR
REM call color.bat
REM 
REM :MAC
REM :UUID
REM CD\
REM CALL GD168R24.BAT
REM 
REM :SN
REM CD \DTBIOS
REM CALL SN.BAT

:USB
CD \BEARDOS
CALL TESTUSB.BAT

CD\
if erroelevel 1 goto fail
if erroelevel 0 goto pass

:fail
echo **FAIL**
FAIL1
PAUSE
goto fail

:PASS
PASS
goto end

