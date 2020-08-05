@echo off
color 8a
echo loaded file
echo changed file 
echo fixed version
echo please a few second 
echo the program will open

del up.bat
move update\up.bat %cd%

del mr1ay.bat
move update\mr1ay.bat %cd%

del Stargate_Project_by_Mr1ay.bat
move update\Stargate_Project_by_Mr1ay.bat %cd%

del update.zip
echo downloaded file and changed files
echo please a few  second

rd /s /q update
call Stargate_Project_by_Mr1ay
exit