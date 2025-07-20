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

robocopy /s /e "%ROOTDIR%\addons\advanced_fatigue" "%ROOTDIR%\addonsx\advanced_fatigue"
robocopy /s /e "%ROOTDIR%\addons\advanced_throwing" "%ROOTDIR%\addonsx\advanced_throwing"
robocopy /s /e "%ROOTDIR%\addons\ai" "%ROOTDIR%\addonsx\ai"
robocopy /s /e "%ROOTDIR%\addons\arsenal" "%ROOTDIR%\addonsx\arsenal"
robocopy /s /e "%ROOTDIR%\addons\backpacks" "%ROOTDIR%\addonsx\backpacks"
robocopy /s /e "%ROOTDIR%\addons\captives" "%ROOTDIR%\addonsx\captives"
robocopy /s /e "%ROOTDIR%\addons\cargo" "%ROOTDIR%\addonsx\cargo"
robocopy /s /e "%ROOTDIR%\addons\casings" "%ROOTDIR%\addonsx\casings"
robocopy /s /e "%ROOTDIR%\addons\common" "%ROOTDIR%\addonsx\common"
robocopy /s /e "%ROOTDIR%\addons\compat_cup_units" "%ROOTDIR%\addonsx\compat_cup_units"
robocopy /s /e "%ROOTDIR%\addons\compat_cup_vehicles" "%ROOTDIR%\addonsx\compat_cup_vehicles"
robocopy /s /e "%ROOTDIR%\addons\compat_cup_weapons" "%ROOTDIR%\addonsx\compat_cup_weapons"
robocopy /s /e "%ROOTDIR%\addons\disarming" "%ROOTDIR%\addonsx\disarming"
robocopy /s /e "%ROOTDIR%\addons\dragging" "%ROOTDIR%\addonsx\dragging"
robocopy /s /e "%ROOTDIR%\addons\explosives" "%ROOTDIR%\addonsx\explosives"
robocopy /s /e "%ROOTDIR%\addons\fieldmanual" "%ROOTDIR%\addonsx\fieldmanual"
robocopy /s /e "%ROOTDIR%\addons\finger" "%ROOTDIR%\addonsx\finger"
robocopy /s /e "%ROOTDIR%\addons\fonts" "%ROOTDIR%\addonsx\fonts"
robocopy /s /e "%ROOTDIR%\addons\fortify" "%ROOTDIR%\addonsx\fortify"
robocopy /s /e "%ROOTDIR%\addons\frag" "%ROOTDIR%\addonsx\frag"
robocopy /s /e "%ROOTDIR%\addons\hearing" "%ROOTDIR%\addonsx\hearing"
robocopy /s /e "%ROOTDIR%\addons\hitreactions" "%ROOTDIR%\addonsx\hitreactions"
robocopy /s /e "%ROOTDIR%\addons\interact_menu" "%ROOTDIR%\addonsx\interact_menu"
robocopy /s /e "%ROOTDIR%\addons\interaction" "%ROOTDIR%\addonsx\interaction"
robocopy /s /e "%ROOTDIR%\addons\inventory" "%ROOTDIR%\addonsx\inventory"
robocopy /s /e "%ROOTDIR%\addons\magazinerepack" "%ROOTDIR%\addonsx\magazinerepack"
robocopy /s /e "%ROOTDIR%\addons\main" "%ROOTDIR%\addonsx\main"
robocopy /s /e "%ROOTDIR%\addons\missionmodules" "%ROOTDIR%\addonsx\missionmodules"
robocopy /s /e "%ROOTDIR%\addons\modules" "%ROOTDIR%\addonsx\modules"
robocopy /s /e "%ROOTDIR%\addons\nametags" "%ROOTDIR%\addonsx\nametags"
robocopy /s /e "%ROOTDIR%\addons\noidle" "%ROOTDIR%\addonsx\noidle"
robocopy /s /e "%ROOTDIR%\addons\noradio" "%ROOTDIR%\addonsx\noradio"
robocopy /s /e "%ROOTDIR%\addons\optionsmenu" "%ROOTDIR%\addonsx\optionsmenu"
robocopy /s /e "%ROOTDIR%\addons\pylons" "%ROOTDIR%\addonsx\pylons"
robocopy /s /e "%ROOTDIR%\addons\repair" "%ROOTDIR%\addonsx\repair"
robocopy /s /e "%ROOTDIR%\addons\trenches" "%ROOTDIR%\addonsx\trenches"
robocopy /s /e "%ROOTDIR%\addons\ui" "%ROOTDIR%\addonsx\ui"
robocopy /s /e "%ROOTDIR%\addons\viewdistance" "%ROOTDIR%\addonsx\viewdistance"
robocopy /s /e "%ROOTDIR%\addons\viewrestriction" "%ROOTDIR%\addonsx\viewrestriction"
robocopy /s /e "%ROOTDIR%\addons\weaponselect" "%ROOTDIR%\addonsx\weaponselect"
robocopy /s /e "%ROOTDIR%\addons\weather" "%ROOTDIR%\addonsx\weather"

timeout /t 1 /nobreak

rd /s /q "%ROOTDIR%\addons"

timeout /t 1 /nobreak

robocopy /s /e /move "%ROOTDIR%\addonsx" "%ROOTDIR%\addons"

pause
exit
