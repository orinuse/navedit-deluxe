@ECHO OFF
TITLE %CD%
CD /D %~dp0

ECHO ++ navedit-deluxe ++
ECHO ====================
ECHO/

REM - Check for admin rights.. https://superuser.com/questions/204760/batch-script-how-to-check-for-admin-rights
REM - - Because links require admin rights. Deleting files don't though..?
fsutil dirty query %systemdrive% >nul
IF %errorlevel% EQU 1 (
	ECHO Run this script with admin rights!
	PAUSE
	GOTO :EOF
)

REM - I really do not like copy-pasting the same file paths a bilion times
REM - - And for everyone's sake, verify the file paths first
SET "_PATHL4D2_CFG=L:\SteamLibrary\steamapps\common\Left 4 Dead 2\left4dead2\cfg"
SET "_PATHL4D2_GIT=D:\GitHub\repos\navedit-deluxe\left4dead2\root\cfg"
IF NOT EXIST "%_PATHL4D2_CFG%" (
	SET /P "_PATHL4D2_CFG=Default path to Team Fortress 2 is incorrect.. Please provide the right path: "
)
IF NOT EXIST "%_PATHL4D2_GIT%" (
	SET /P "_PATHL4D2_GIT=Default path to GitHib is incorrect.. Please provide the right path: "
)

mklink "%_PATHL4D2_CFG%\keyboard_controls.cfg" "%_PATHL4D2_GIT%\keyboard_controls.cfg"
mklink /D "%_PATHL4D2_CFG%\navedit" "%_PATHL4D2_GIT%\navedit"
mklink "%_PATHL4D2_CFG%\navedit.cfg" "%_PATHL4D2_GIT%\navedit.cfg"

TIMEOUT 10