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

mklink "L:\SteamLibrary\steamapps\common\Left 4 Dead 2\left4dead2\cfg\keyboard_controls.cfg" "D:\GitHub\repos\navedit-deluxe\left4dead2\root\cfg\keyboard_controls.cfg"
mklink /D "L:\SteamLibrary\steamapps\common\Left 4 Dead 2\left4dead2\cfg\navedit" "D:\GitHub\repos\navedit-deluxe\left4dead2\root\cfg\navedit"
mklink "L:\SteamLibrary\steamapps\common\Left 4 Dead 2\left4dead2\cfg\navedit.cfg" "D:\GitHub\repos\navedit-deluxe\left4dead2\root\cfg\navedit.cfg"

TIMEOUT 10