:::
Script Name: Virus Scanner
Creator: Tactics
Date Created: January, 15, 2024
Version: [1.6]
Written in: Batch
:::

@echo off
echo Welcome to Tactics Virus Scan!

:menu
echo Please select an option:
echo [1] Fast Virus Scan
echo [2] Full Virus Scan
set /p userinput="Enter your choice (1 or 2) and press Enter: "
if "%userinput%"=="1" (
    cd C:\\ProgramData\\Microsoft\\Windows Defender\\Platform\\4.18*
    MpCmdRun -Scan -ScanType 1
    goto results
) else if "%userinput%"=="2" (
    cd C:\\ProgramData\\Microsoft\\Windows Defender\\Platform\\4.18*
    MpCmdRun -Scan -ScanType 2
    goto results
) else (
    echo Invalid option. Please enter either 1 or 2.
    goto menu
)

:results
echo Scan completed. If any threats were found, they will be listed above.
pause
