:: Shorthand for killing a process/es based on the executable name

:: Arguments: Any amount of executable names.
:: Ex.      : C:\...> PKILL explorer.exe
:: Ex.      : C:\...> PKILL explorer.exe polymc.exe wt.exe

@ECHO off

IF "%1"=="" (
    :: bruh
    ECHO "PKILL requires at least 1 argument."
    EXIT /b
)

:: like notepad, taskkill can't kill multiple processes by itself, so I
:: instead do it here.
FOR %%i in (%*) DO TASKKILL /f /im %%i
