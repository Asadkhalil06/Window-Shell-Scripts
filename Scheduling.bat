@echo off
:: Define the batch file to be scheduled
set "batchFile=close.bat"

:: Define the schedule settings
set "taskName=CloseAppsAndShutdown"
set "scheduleTime=19:00"  
set "scheduleFrequency=DAILY"

:: Create the scheduled task to run daily at 5:00 PM
schtasks /create /tn "%taskName%" /tr "%batchFile%" /sc %scheduleFrequency% /st %scheduleTime% /f

echo Task "%taskName%" has been scheduled to run at %scheduleTime% every day.
pause
