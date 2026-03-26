@echo off
color 0c

echo =====================================
echo Void://Cryptrix Security
echo Virus Scanner Module
echo =====================================

set log=..\logs\virus_scan.txt

echo Void://Cryptrix Security >> %log%
echo Scan started %date% %time% >> %log%

echo Updating Defender signatures...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate >> %log%

echo Running quick scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1 >> %log%

echo Running full scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2 >> %log%

echo Scan finished >> %log%

pause