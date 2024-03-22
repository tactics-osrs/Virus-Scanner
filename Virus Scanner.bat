@echo off
REM Script Name: Virus Scanner
REM Date Written: January 15, 2024
REM Written By: Tactics

echo %date% %time%


color 0A
echo Welcome to Tactics Windows 10/11 Virus Scan!
:::
:::                                 |     |
:::                                 \\_V_//
:::                                 \/=|=\/
:::                                  [=v=]
:::                                __\___/_____
:::                               /..[  _____  ]
:::                              /_  [ [  T /] ]
:::                             /../.[ [ A /@] ]
:::                            <-->[_[ [C /@/] ]
:::                           /../ [.[ [ /@/ ] ]
:::      _________________]\ /__/  [_[ [/@/ T] ]
:::     <_________________>>0---]  [=\ \@/ I / /
:::        ___      ___   ]/000o   /__\ \ C / /
:::           \    /              /....\ \_/ /
:::        ....\||/....           [___/=\___/
:::       .    .  .    .          [...] [...]
:::      .      ..      .         [___/ \___]
:::      .    0 .. 0    .         <---> <--->
:::   /\/\.    .  .    ./\/\      [..]   [..]
:::  / / / .../|  |\... \ \ \    _[__]   [__]_
::: / / /       \/       \ \ \  [____>   <____]

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A


:menu
echo Please select an option:
echo [1] Fast Virus Scan
echo [2] Full Virus Scan
echo [3] Help
set /p userinput="Enter your choice (1, 2, or 3) and press Enter: "
if "%userinput%"=="1" (
    cd C:\\ProgramData\\Microsoft\\Windows Defender\\Platform\\4.18* || goto error
    MpCmdRun -Scan -ScanType 1 || goto error
    goto results
) else if "%userinput%"=="2" (
	echo This process will take a long time.
    cd C:\\ProgramData\\Microsoft\\Windows Defender\\Platform\\4.18* || goto error
    MpCmdRun -Scan -ScanType 2 || goto error
    goto results
) else if "%userinput%"=="3" (
    goto help
) else (
    echo Invalid option. Please enter either 1, 2, or 3.
    goto menu
)

:error
echo An error occurred while running the command.
pause
goto menu

:help
echo Here are the descriptions of each function:
echo [1] Fast Virus Scan: This option performs a quick scan of the areas where threats are commonly found.
echo [2] Full Virus Scan: This option performs a comprehensive scan of all files and running programs on your hard disk.
echo This process can take a long time.
pause
goto menu

:results
echo Scan completed. If any threats were found, they will be listed above.
pause
