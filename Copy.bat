@echo off
setlocal enabledelayedexpansion

:: Define the source file and destination folder
set "source_file=C:\Users\ASAD KHALIL\Documents\Downloads\no.txt"
set "destination_folder=C:\Users\ASAD KHALIL\Documents\Download"

:: Debug: Display paths
echo Source File: %source_file%
echo Destination Folder: %destination_folder%

:: Check if the source file exists, if not create it
if not exist "%source_file%" (
    echo Source file does not exist. Creating: %source_file%
    echo This is a sample text file. > "%source_file%"
    if errorlevel 1 (
        echo Error: Failed to create source file.
        pause
        exit /b 1
    )
    echo Source file created successfully.
)

:: Check if the destination folder exists, if not create it
if not exist "%destination_folder%" (
    echo Destination folder does not exist. Creating: %destination_folder%
    mkdir "%destination_folder%"
    if errorlevel 1 (
        echo Error: Failed to create destination folder.
        pause
        exit /b 1
    )
)

:: Create 10 copies of the file
for /L %%i in (1,1,10) do (
    set "copy_file=%destination_folder%\file_copy_%%i.txt"
    echo Copying to: !copy_file!
    copy "%source_file%" "!copy_file!"
    if errorlevel 1 (
        echo Error: Failed to copy file to !copy_file!
    ) else (
        echo Success: Created !copy_file!
    )
)

echo All copies have been created successfully.
pause