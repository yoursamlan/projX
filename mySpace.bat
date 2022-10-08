cls
@ECHO OFF
title MySpace1.0

echo 			***********************************
echo(
echo 				    MySpace v1.0
echo(		
echo				 	by Amlan Saha Kundu
echo(
echo 			***********************************


set dudu=UNLOCK3
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}/atmp3" set dudu=UNLOCK2
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}/atmp2" set dudu=UNLOCK1
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto %dudu%
if NOT EXIST MySpace goto MDMySpace
:CONFIRM
echo Do you want to lock and hide your Space ? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid Choice.
pause
goto CONFIRM

:LOCK
ren MySpace "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Space locked
@echo off
setlocal EnableExtensions DisableDelayedExpansion
ie4uinit.exe -show
endlocal
goto End

:UNLOCK3
echo(
echo Enter password below to get into your Space.
echo You have 3 lives left
set/p "pass=>"
if NOT %pass%==amsu0324 goto FAIL3
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" MySpace
Rem if EXIST "./MySpace/atmp2" goto RMATMP2
Rem if EXIST "./MySpace/atmp3" goto RMATMP3
echo Folder Unlocked successfully
goto End


:UNLOCK2
echo(
echo Enter password below to get into your Space.
echo You have only 2 lives now. 
set/p "pass=>"
if NOT %pass%==amsu0324 goto FAIL2
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" MySpace
Rem if EXIST "./MySpace/atmp2" goto RMATMP2
if EXIST "./MySpace/atmp3" goto RMATMP3  
echo Folder Unlocked successfully
goto End

:UNLOCK1
echo(
echo Enter password below to get into your Space.
echo You have your LAST hope. Use your LAST life carefully.
set/p "pass=>"
if NOT %pass%==amsu0324 goto DESTROY
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" MySpace
if EXIST "./MySpace/atmp2" goto RMATMP2
if EXIST "./MySpace/atmp3" goto RMATMP3
echo Folder Unlocked successfully
goto End

:FAIL3
md "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}/atmp3"
echo Invalid Password
goto UNLOCK2


:FAIL2
md "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}/atmp2"
echo Invalid Password
goto UNLOCK1


:DESTROY
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" MySpace
@RD /S /Q "./MySpace"
echo You ran out of lives.
echo(
echo SELF-DESTRUCTION mode activated.
echo Your old Space is lost forever.
pause
goto end

:RMATMP3
@RD /S /Q "./MySpace/atmp3"
goto end

:RMATMP2
@RD /S /Q "./MySpace/atmp2"
goto end

:MDMySpace
md MySpace
goto End
:End