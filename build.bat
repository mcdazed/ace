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
rd /s /q "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\@ace"
rd /s /q "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\x"
rd /s /q "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\z"
rd /s /q "P:\temp\z"
rd /s /q "P:\x\cba"
rd /s /q "P:\z\ace"

mkdir "%ROOTDIR%\optionals"

del /s /q /f "%temp%\*"
robocopy /s /move "%temp%" "%temp%"

robocopy /s "%rootdir%\addons\advanced_fatigue" "%rootdir%\addonsx\advanced_fatigue"
robocopy /s "%rootdir%\addons\advanced_throwing" "%rootdir%\addonsx\advanced_throwing"
robocopy /s "%rootdir%\addons\ai" "%rootdir%\addonsx\ai"
robocopy /s "%rootdir%\addons\arsenal" "%rootdir%\addonsx\arsenal"
robocopy /s "%rootdir%\addons\backpacks" "%rootdir%\addonsx\backpacks"
robocopy /s "%rootdir%\addons\cargo" "%rootdir%\addonsx\cargo"
robocopy /s "%rootdir%\addons\casings" "%rootdir%\addonsx\casings"
robocopy /s "%rootdir%\addons\common" "%rootdir%\addonsx\common"
robocopy /s "%rootdir%\addons\compat_cup_terrains" "%rootdir%\addonsx\compat_cup_terrains"
robocopy /s "%rootdir%\addons\compat_cup_units" "%rootdir%\addonsx\compat_cup_units"
robocopy /s "%rootdir%\addons\compat_cup_vehicles" "%rootdir%\addonsx\compat_cup_vehicles"
robocopy /s "%rootdir%\addons\compat_cup_weapons" "%rootdir%\addonsx\compat_cup_weapons"
robocopy /s "%rootdir%\addons\disarming" "%rootdir%\addonsx\disarming"
robocopy /s "%rootdir%\addons\dragging" "%rootdir%\addonsx\dragging"
robocopy /s "%rootdir%\addons\fieldmanual" "%rootdir%\addonsx\fieldmanual"
robocopy /s "%rootdir%\addons\finger" "%rootdir%\addonsx\finger"
robocopy /s "%rootdir%\addons\fonts" "%rootdir%\addonsx\fonts"
robocopy /s "%rootdir%\addons\fortify" "%rootdir%\addonsx\fortify"
robocopy /s "%rootdir%\addons\frag" "%rootdir%\addonsx\frag"
robocopy /s "%rootdir%\addons\gestures" "%rootdir%\addonsx\gestures"
robocopy /s "%rootdir%\addons\goggles" "%rootdir%\addonsx\goggles"
robocopy /s "%rootdir%\addons\hearing" "%rootdir%\addonsx\hearing"
robocopy /s "%rootdir%\addons\hitreactions" "%rootdir%\addonsx\hitreactions"
robocopy /s "%rootdir%\addons\intelitems" "%rootdir%\addonsx\intelitems"
robocopy /s "%rootdir%\addons\interact_menu" "%rootdir%\addonsx\interact_menu"
robocopy /s "%rootdir%\addons\interaction" "%rootdir%\addonsx\interaction"
robocopy /s "%rootdir%\addons\inventory" "%rootdir%\addonsx\inventory"
robocopy /s "%rootdir%\addons\magazinerepack" "%rootdir%\addonsx\magazinerepack"
robocopy /s "%rootdir%\addons\main" "%rootdir%\addonsx\main"
robocopy /s "%rootdir%\addons\modules" "%rootdir%\addonsx\modules"
robocopy /s "%rootdir%\addons\nametags" "%rootdir%\addonsx\nametags"
robocopy /s "%rootdir%\addons\noidle" "%rootdir%\addonsx\noidle"
robocopy /s "%rootdir%\addons\noradio" "%rootdir%\addonsx\noradio"
robocopy /s "%rootdir%\addons\optionsmenu" "%rootdir%\addonsx\optionsmenu"
robocopy /s "%rootdir%\addons\pylons" "%rootdir%\addonsx\pylons"
robocopy /s "%rootdir%\addons\quickmount" "%rootdir%\addonsx\quickmount"
robocopy /s "%rootdir%\addons\repair" "%rootdir%\addonsx\repair"
robocopy /s "%rootdir%\addons\ui" "%rootdir%\addonsx\ui"
robocopy /s "%rootdir%\addons\viewdistance" "%rootdir%\addonsx\viewdistance"
robocopy /s "%rootdir%\addons\viewrestriction" "%rootdir%\addonsx\viewrestriction"
robocopy /s "%rootdir%\addons\wardrobe" "%rootdir%\addonsx\wardrobe"
robocopy /s "%rootdir%\addons\weaponselect" "%rootdir%\addonsx\weaponselect"
robocopy /s "%rootdir%\addons\zeus" "%rootdir%\addonsx\zeus"

timeout /t 1 /nobreak

rd /s /q "%ROOTDIR%\addons"

timeout /t 1 /nobreak

robocopy /s /move "%ROOTDIR%\addonsx" "%ROOTDIR%\addons"

pause
exit
