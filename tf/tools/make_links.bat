@ECHO OFF
TITLE %CD%
CD /D %~dp0

REM - Check for admin rights.. https://superuser.com/questions/204760/batch-script-how-to-check-for-admin-rights
REM - - Because links require admin rights. Deleting files don't though..?
fsutil dirty query %systemdrive% >nul
IF %errorlevel% EQU 1 (
	ECHO Run this script with admin rights!
	PAUSE
	GOTO :EOF
)

mklink "K:\SteamLibrary\steamapps\common\Team Fortress 2\tf\cfg\keyboard_controls.cfg" "D:\GitHub\repos\navedit-deluxe\tf\root\cfg\keyboard_controls.cfg"
mklink /D "K:\SteamLibrary\steamapps\common\Team Fortress 2\tf\cfg\navedit" "D:\GitHub\repos\navedit-deluxe\tf\root\cfg\navedit"
mklink "K:\SteamLibrary\steamapps\common\Team Fortress 2\tf\cfg\navedit.cfg" "D:\GitHub\repos\navedit-deluxe\tf\root\cfg\navedit.cfg"

TIMEOUT 10