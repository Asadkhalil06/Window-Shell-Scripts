@echo off
taskkill /f /im explorer.exe
taskkill /f /im explorer.exe
taskkill /f /im WhatsApp.exe
taskkill /f /im chrome.exe
taskkill /f /im Skype.exe
taskkill /f /im WINWORD.EXE
taskkill /f /im excel.exe
taskkill /f /im CalculatorApp.exe
taskkill /f /im notepad.exe
taskkill /f /im OUTLOOK.EXE
taskkill /f /im Microsoft.Notes.exe
timeout /t 1 /nobreak >nul
start explorer.exe
shutdown /s /f /t 5
