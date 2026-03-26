@echo off

echo =====================================
echo Void://Cryptrix Security
echo Process Scanner
echo =====================================

set log=..\logs\process_scan.txt

echo Void://Cryptrix Security >> %log%
echo Process scan %date% %time% >> %log%

tasklist >> %log%

tasklist | findstr /i "powershell" >> %log%
tasklist | findstr /i "cmd.exe" >> %log%
tasklist | findstr /i "wscript" >> %log%
tasklist | findstr /i "cscript" >> %log%
tasklist | findstr /i "mshta" >> %log%
tasklist | findstr /i "rundll32" >> %log%

echo Scan finished >> %log%

pause