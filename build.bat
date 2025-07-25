@echo off
set ROOTDIR=%~dp0
set ROOTDIR=%ROOTDIR:~0,-1%
cd /d "%ROOTDIR%"
for %%I in (.) do set CurrDirName=%%~nxI
echo %CurrDirName%
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)

rd /s /q "%ROOTDIR%\.hemttout"
rd /s /q "%ROOTDIR%\optionals"
rd /s /q "%ROOTDIR%\release"
rd /s /q "%ROOTDIR%\releases"

robocopy /s "%ROOTDIR%\addons\advanced_fatigue" "%ROOTDIR%\addonsx\advanced_fatigue"
robocopy /s "%ROOTDIR%\addons\advanced_throwing" "%ROOTDIR%\addonsx\advanced_throwing"
robocopy /s "%ROOTDIR%\addons\ai" "%ROOTDIR%\addonsx\ai"
robocopy /s "%ROOTDIR%\addons\arsenal" "%ROOTDIR%\addonsx\arsenal"
robocopy /s "%ROOTDIR%\addons\backpacks" "%ROOTDIR%\addonsx\backpacks"
robocopy /s "%ROOTDIR%\addons\captives" "%ROOTDIR%\addonsx\captives"
robocopy /s "%ROOTDIR%\addons\cargo" "%ROOTDIR%\addonsx\cargo"
robocopy /s "%ROOTDIR%\addons\casings" "%ROOTDIR%\addonsx\casings"
robocopy /s "%ROOTDIR%\addons\common" "%ROOTDIR%\addonsx\common"
robocopy /s "%ROOTDIR%\addons\compat_cup_units" "%ROOTDIR%\addonsx\compat_cup_units"
robocopy /s "%ROOTDIR%\addons\compat_cup_vehicles" "%ROOTDIR%\addonsx\compat_cup_vehicles"
robocopy /s "%ROOTDIR%\addons\compat_cup_weapons" "%ROOTDIR%\addonsx\compat_cup_weapons"
robocopy /s "%ROOTDIR%\addons\disarming" "%ROOTDIR%\addonsx\disarming"
robocopy /s "%ROOTDIR%\addons\dragging" "%ROOTDIR%\addonsx\dragging"
robocopy /s "%ROOTDIR%\addons\explosives" "%ROOTDIR%\addonsx\explosives"
robocopy /s "%ROOTDIR%\addons\fieldmanual" "%ROOTDIR%\addonsx\fieldmanual"
robocopy /s "%ROOTDIR%\addons\finger" "%ROOTDIR%\addonsx\finger"
robocopy /s "%ROOTDIR%\addons\fonts" "%ROOTDIR%\addonsx\fonts"
robocopy /s "%ROOTDIR%\addons\fortify" "%ROOTDIR%\addonsx\fortify"
robocopy /s "%ROOTDIR%\addons\frag" "%ROOTDIR%\addonsx\frag"
robocopy /s "%ROOTDIR%\addons\hearing" "%ROOTDIR%\addonsx\hearing"
robocopy /s "%ROOTDIR%\addons\hitreactions" "%ROOTDIR%\addonsx\hitreactions"
robocopy /s "%ROOTDIR%\addons\interact_menu" "%ROOTDIR%\addonsx\interact_menu"
robocopy /s "%ROOTDIR%\addons\interaction" "%ROOTDIR%\addonsx\interaction"
robocopy /s "%ROOTDIR%\addons\inventory" "%ROOTDIR%\addonsx\inventory"
robocopy /s "%ROOTDIR%\addons\magazinerepack" "%ROOTDIR%\addonsx\magazinerepack"
robocopy /s "%ROOTDIR%\addons\main" "%ROOTDIR%\addonsx\main"
robocopy /s "%ROOTDIR%\addons\missionmodules" "%ROOTDIR%\addonsx\missionmodules"
robocopy /s "%ROOTDIR%\addons\modules" "%ROOTDIR%\addonsx\modules"
robocopy /s "%ROOTDIR%\addons\nametags" "%ROOTDIR%\addonsx\nametags"
robocopy /s "%ROOTDIR%\addons\noidle" "%ROOTDIR%\addonsx\noidle"
robocopy /s "%ROOTDIR%\addons\noradio" "%ROOTDIR%\addonsx\noradio"
robocopy /s "%ROOTDIR%\addons\optionsmenu" "%ROOTDIR%\addonsx\optionsmenu"
robocopy /s "%ROOTDIR%\addons\pylons" "%ROOTDIR%\addonsx\pylons"
robocopy /s "%ROOTDIR%\addons\repair" "%ROOTDIR%\addonsx\repair"
robocopy /s "%ROOTDIR%\addons\trenches" "%ROOTDIR%\addonsx\trenches"
robocopy /s "%ROOTDIR%\addons\ui" "%ROOTDIR%\addonsx\ui"
robocopy /s "%ROOTDIR%\addons\viewdistance" "%ROOTDIR%\addonsx\viewdistance"
robocopy /s "%ROOTDIR%\addons\viewrestriction" "%ROOTDIR%\addonsx\viewrestriction"
robocopy /s "%ROOTDIR%\addons\weaponselect" "%ROOTDIR%\addonsx\weaponselect"
robocopy /s "%ROOTDIR%\addons\weather" "%ROOTDIR%\addonsx\weather"

timeout /t 1 /nobreak

rd /s /q "%ROOTDIR%\addons"

timeout /t 1 /nobreak

robocopy /s /move "%ROOTDIR%\addonsx" "%ROOTDIR%\addons"

pause
exit
