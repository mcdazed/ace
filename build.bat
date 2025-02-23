@echo off

winget install hemtt
pause

set ROOTDIR=%~dp0
set ROOTDIR=%ROOTDIR:~0,-1%
cd /d "%ROOTDIR%"
for %%I in (.) do set CurrDirName=%%~nxI
echo %CurrDirName%

taskkill /f /im addonbuilder.exe
taskkill /f /im arma3.exe
taskkill /f /im arma3_x64.exe
taskkill /f /im arma3launcher.exe
taskkill /f /im arma3server.exe
taskkill /f /im arma3server_x64.exe
taskkill /f /im arma3tools.exe
taskkill /f /im dropbox.exe
taskkill /f /im publisher.exe
taskkill /f /im steam.exe
taskkill /f /im steamcmd.exe
taskkill /f /im steamerrorreporter.exe
taskkill /f /im steamwebhelper.exe

rd /s /q "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\x"
rd /s /q "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\z"

robocopy "%ROOTDIR%\optionals\particles" "%ROOTDIR%\addons\particles" /s /move

robocopy "%ROOTDIR%\addons\advanced_fatigue" "%ROOTDIR%\addonsx\advanced_fatigue" /s /move
robocopy "%ROOTDIR%\addons\advanced_throwing" "%ROOTDIR%\addonsx\advanced_throwing" /s /move
robocopy "%ROOTDIR%\addons\ai" "%ROOTDIR%\addonsx\ai" /s /move
robocopy "%ROOTDIR%\addons\apl" "%ROOTDIR%\addonsx\apl" /s /move
robocopy "%ROOTDIR%\addons\arsenal" "%ROOTDIR%\addonsx\arsenal" /s /move
robocopy "%ROOTDIR%\addons\backpacks" "%ROOTDIR%\addonsx\backpacks" /s /move
robocopy "%ROOTDIR%\addons\captives" "%ROOTDIR%\addonsx\captives" /s /move
robocopy "%ROOTDIR%\addons\cargo" "%ROOTDIR%\addonsx\cargo" /s /move
robocopy "%ROOTDIR%\addons\casings" "%ROOTDIR%\addonsx\casings" /s /move
robocopy "%ROOTDIR%\addons\common" "%ROOTDIR%\addonsx\common" /s /move
robocopy "%ROOTDIR%\addons\compat_cup_units" "%ROOTDIR%\addonsx\compat_cup_units" /s /move
robocopy "%ROOTDIR%\addons\compat_cup_vehicles" "%ROOTDIR%\addonsx\compat_cup_vehicles" /s /move
robocopy "%ROOTDIR%\addons\compat_cup_weapons" "%ROOTDIR%\addonsx\compat_cup_weapons" /s /move
robocopy "%ROOTDIR%\addons\disarming" "%ROOTDIR%\addonsx\disarming" /s /move
robocopy "%ROOTDIR%\addons\dragging" "%ROOTDIR%\addonsx\dragging" /s /move
robocopy "%ROOTDIR%\addons\explosives" "%ROOTDIR%\addonsx\explosives" /s /move
robocopy "%ROOTDIR%\addons\fieldmanual" "%ROOTDIR%\addonsx\fieldmanual" /s /move
robocopy "%ROOTDIR%\addons\finger" "%ROOTDIR%\addonsx\finger" /s /move
robocopy "%ROOTDIR%\addons\fonts" "%ROOTDIR%\addonsx\fonts" /s /move
robocopy "%ROOTDIR%\addons\fortify" "%ROOTDIR%\addonsx\fortify" /s /move
robocopy "%ROOTDIR%\addons\frag" "%ROOTDIR%\addonsx\frag" /s /move
robocopy "%ROOTDIR%\addons\hearing" "%ROOTDIR%\addonsx\hearing" /s /move
robocopy "%ROOTDIR%\addons\hitreactions" "%ROOTDIR%\addonsx\hitreactions" /s /move
robocopy "%ROOTDIR%\addons\interact_menu" "%ROOTDIR%\addonsx\interact_menu" /s /move
robocopy "%ROOTDIR%\addons\interaction" "%ROOTDIR%\addonsx\interaction" /s /move
robocopy "%ROOTDIR%\addons\inventory" "%ROOTDIR%\addonsx\inventory" /s /move
robocopy "%ROOTDIR%\addons\magazinerepack" "%ROOTDIR%\addonsx\magazinerepack" /s /move
robocopy "%ROOTDIR%\addons\main" "%ROOTDIR%\addonsx\main" /s /move
robocopy "%ROOTDIR%\addons\map" "%ROOTDIR%\addonsx\map" /s /move
robocopy "%ROOTDIR%\addons\markers" "%ROOTDIR%\addonsx\markers" /s /move
robocopy "%ROOTDIR%\addons\missionmodules" "%ROOTDIR%\addonsx\missionmodules" /s /move
robocopy "%ROOTDIR%\addons\modules" "%ROOTDIR%\addonsx\modules" /s /move
robocopy "%ROOTDIR%\addons\nametags" "%ROOTDIR%\addonsx\nametags" /s /move
robocopy "%ROOTDIR%\addons\noidle" "%ROOTDIR%\addonsx\noidle" /s /move
robocopy "%ROOTDIR%\addons\noradio" "%ROOTDIR%\addonsx\noradio" /s /move
robocopy "%ROOTDIR%\addons\optionsmenu" "%ROOTDIR%\addonsx\optionsmenu" /s /move
robocopy "%ROOTDIR%\addons\particles" "%ROOTDIR%\addonsx\particles" /s /move
robocopy "%ROOTDIR%\addons\repair" "%ROOTDIR%\addonsx\repair" /s /move
robocopy "%ROOTDIR%\addons\tacticalladder" "%ROOTDIR%\addonsx\tacticalladder" /s /move
robocopy "%ROOTDIR%\addons\trenches" "%ROOTDIR%\addonsx\trenches" /s /move
robocopy "%ROOTDIR%\addons\ui" "%ROOTDIR%\addonsx\ui" /s /move
robocopy "%ROOTDIR%\addons\viewdistance" "%ROOTDIR%\addonsx\viewdistance" /s /move
robocopy "%ROOTDIR%\addons\viewrestriction" "%ROOTDIR%\addonsx\viewrestriction" /s /move
robocopy "%ROOTDIR%\addons\weaponselect" "%ROOTDIR%\addonsx\weaponselect" /s /move
robocopy "%ROOTDIR%\addons\weather" "%ROOTDIR%\addonsx\weather" /s /move

rd /s /q "%ROOTDIR%\.hemttout"
rd /s /q "%ROOTDIR%\addons"
rd /s /q "%ROOTDIR%\optionals"
rd /s /q "%ROOTDIR%\release"
robocopy "%ROOTDIR%\addonsx" "%ROOTDIR%\addons" /s /move
rd /s /q "%ROOTDIR%\addonsx"

hemtt ln sort

:start
SET correct=
SET /p correct=Filepatching dev build? [Y/N]:
IF NOT '%correct%'=='' SET correct=%correct:~0,1%
IF '%correct%'=='Y' GOTO yes
IF '%correct%'=='y' GOTO yes
IF '%correct%'=='N' GOTO no
IF '%correct%'=='n' GOTO no
IF '%correct%'=='' GOTO no

:no
del /s /q build.log
cls
hemtt release

GOTO end

:yes
del /s /q build.log
cls
hemtt launch
mklink /J "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\z\ace" "%ROOTDIR%/.hemttout/dev"
GOTO end

:end
pause
cls
call push.bat
winget remove hemtt
