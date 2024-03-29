@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "datestamp=%YYYY%%MM%%DD%%HH%%Min%%Sec%"

::Backup NDB Files
robocopy \\remote\NDB D:\NDB.Backup\%datestamp% /MIR /W:30 /R:5000
timeout /t 30

::Copy NDB Files to Remote
robocopy D:\NDB \\remote\NDB /MIR /W:30 /R:5000
timeout /t 30

