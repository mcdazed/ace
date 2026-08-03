@echo off
set ROOTDIR=%~dp0
set ROOTDIR=%ROOTDIR:~0,-1%
cd /d "%ROOTDIR%"
for %%I in (.) do set CurrDirName=%%~nxI
echo %CurrDirName%

winget install hemtt
winget upgrade hemtt

robocopy /s /e "%ROOTDIR%\addons\advanced_fatigue" "%ROOTDIR%\addonsx\advanced_fatigue" /move
robocopy /s /e "%ROOTDIR%\addons\advanced_throwing" "%ROOTDIR%\addonsx\advanced_throwing" /move
robocopy /s /e "%ROOTDIR%\addons\arsenal" "%ROOTDIR%\addonsx\arsenal" /move
robocopy /s /e "%ROOTDIR%\addons\backpacks" "%ROOTDIR%\addonsx\backpacks" /move
robocopy /s /e "%ROOTDIR%\addons\cargo" "%ROOTDIR%\addonsx\cargo" /move
robocopy /s /e "%ROOTDIR%\addons\common" "%ROOTDIR%\addonsx\common" /move
robocopy /s /e "%ROOTDIR%\addons\compat_cup_terrains" "%ROOTDIR%\addonsx\compat_cup_terrains" /move
robocopy /s /e "%ROOTDIR%\addons\compat_cup_units" "%ROOTDIR%\addonsx\compat_cup_units" /move
robocopy /s /e "%ROOTDIR%\addons\compat_cup_vehicles" "%ROOTDIR%\addonsx\compat_cup_vehicles" /move
robocopy /s /e "%ROOTDIR%\addons\compat_cup_weapons" "%ROOTDIR%\addonsx\compat_cup_weapons" /move
robocopy /s /e "%ROOTDIR%\addons\dragging" "%ROOTDIR%\addonsx\dragging" /move
robocopy /s /e "%ROOTDIR%\addons\fieldmanual" "%ROOTDIR%\addonsx\fieldmanual" /move
robocopy /s /e "%ROOTDIR%\addons\finger" "%ROOTDIR%\addonsx\finger" /move
robocopy /s /e "%ROOTDIR%\addons\fonts" "%ROOTDIR%\addonsx\fonts" /move
robocopy /s /e "%ROOTDIR%\addons\frag" "%ROOTDIR%\addonsx\frag" /move
robocopy /s /e "%ROOTDIR%\addons\interact_menu" "%ROOTDIR%\addonsx\interact_menu" /move
robocopy /s /e "%ROOTDIR%\addons\interaction" "%ROOTDIR%\addonsx\interaction" /move
robocopy /s /e "%ROOTDIR%\addons\magazinerepack" "%ROOTDIR%\addonsx\magazinerepack" /move
robocopy /s /e "%ROOTDIR%\addons\main" "%ROOTDIR%\addonsx\main" /move
robocopy /s /e "%ROOTDIR%\addons\modules" "%ROOTDIR%\addonsx\modules" /move
robocopy /s /e "%ROOTDIR%\addons\nametags" "%ROOTDIR%\addonsx\nametags" /move
robocopy /s /e "%ROOTDIR%\addons\noidle" "%ROOTDIR%\addonsx\noidle" /move
robocopy /s /e "%ROOTDIR%\addons\noradio" "%ROOTDIR%\addonsx\noradio" /move
robocopy /s /e "%ROOTDIR%\addons\optionsmenu" "%ROOTDIR%\addonsx\optionsmenu" /move
robocopy /s /e "%ROOTDIR%\addons\quickmount" "%ROOTDIR%\addonsx\quickmount" /move
robocopy /s /e "%ROOTDIR%\addons\repair" "%ROOTDIR%\addonsx\repair" /move
robocopy /s /e "%ROOTDIR%\addons\ui" "%ROOTDIR%\addonsx\ui" /move
robocopy /s /e "%ROOTDIR%\addons\viewrestriction" "%ROOTDIR%\addonsx\viewrestriction" /move
robocopy /s /e "%ROOTDIR%\addons\weaponselect" "%ROOTDIR%\addonsx\weaponselect" /move

rd /s /q "%ROOTDIR%\.hemttout"
rd /s /q "%ROOTDIR%\addons"
rd /s /q "%ROOTDIR%\optionals"
rd /s /q "%ROOTDIR%\releases"

md "%ROOTDIR%\optionals"

del /s /q /f "%userprofile%\AppData\Local\Temp\*"
robocopy "%userprofile%\AppData\Local\Temp" "%userprofile%\AppData\Local\Temp" /s /move
mkdir "%userprofile%\AppData\Local\Temp"

robocopy /s /e "%ROOTDIR%\addonsx" "%ROOTDIR%\addons" /move

cls
hemtt check
pause

cls
hemtt dev
hemtt release -vv
pause

rd /s /q "%a3dir%\x"
rd /s /q "%a3dir%\z"

exit
