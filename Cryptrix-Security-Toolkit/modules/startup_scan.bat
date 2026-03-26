@echo off

echo =====================================
echo Void://Cryptrix Security
echo Startup Persistence Scanner
echo =====================================

set log=..\logs\startup_entries.txt

echo Void://Cryptrix Security >> %log%
echo Startup scan %date% %time% >> %log%

dir "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" >> %log%

reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Run >> %log%
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run >> %log%

sc query >> %log%

echo Scan finished >> %log%

pause