@echo off
set ROOTDIR=%~dp0
set ROOTDIR=%ROOTDIR:~0,-1%
for %%I in (.) do set CurrDirName=%%~nxI

echo .
echo .
echo .
echo Make sure to backup this repo to another folder for diff and merge...
echo .
echo .
echo .
pause

git reset --soft HEAD~25

git push origin +master --force

echo .
echo .
echo .
echo Sync fork...
echo .
echo .
echo .

start "" "https://github.com/mcdazed/ace"

pause

git stash
git fetch --prune
git pull

pause

rd /s /q "%ROOTDIR%"

cls
