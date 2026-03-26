@echo off
color 0c
mode con: cols=70 lines=25
title Void://Cryptrix Security Toolkit

:menu
cls

echo =====================================
echo        Void://Cryptrix Security
echo        Advanced Threat Scanner
echo =====================================
echo.

echo 1. Full Threat Scan
echo 2. Virus Scan Only
echo 3. Suspicious File Scan
echo 4. Startup Persistence Scan
echo 5. Process Scan
echo 6. View Logs
echo 7. Exit

echo.
set /p choice=Select option:

if %choice%==1 goto fullscan
if %choice%==2 goto virus
if %choice%==3 goto malware
if %choice%==4 goto startup
if %choice%==5 goto process
if %choice%==6 goto logs
if %choice%==7 exit

goto menu


:fullscan
call modules\loading_animation.bat

echo Running full security scan...

call modules\virus_scan.bat
call modules\malware_hunter.bat
call modules\startup_scan.bat
call modules\process_scan.bat

pause
goto menu


:virus
call modules\virus_scan.bat
goto menu


:malware
call modules\malware_hunter.bat
goto menu


:startup
call modules\startup_scan.bat
goto menu


:process
call modules\process_scan.bat
goto menu


:logs
cls
echo Opening logs folder...
start logs
goto menu