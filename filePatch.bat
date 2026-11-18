@echo off

start "" "steam://openurl/https://google.com"
cls
echo WAIT FOR STEAM...
pause

hemtt launch -- -name=%a3name% -malloc=bestmalloc

pause
exit
