@echo off

if not defined launchable (
    echo This file is not meant to be run directly
    pause
    goto :EOF
)

if exist shits\riotClientPath.txt (
    for /f "delims=" %%a in (shits\riotClientPath.txt) do (
        if exist "%%a" (
            echo Riot client is not running
            echo.
            echo Launching Riot client...
            echo.
            start "" "%%a"
        ) else (
            color 04
            echo Riot client is not running
            echo.
            echo Please run the script again after running the riot client
            pause
            exit
        )
    )
    echo Wait for Riot client to launch then press any key to continue...
    echo update first if needed.
    echo.
    pause>nul
) else (
    color 04
    echo Riot client is not running
    echo.
    echo Please run the script again after running the riot client
    pause
    exit
)