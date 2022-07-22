:: Shorthand for killing a process/es based on the executable name

:: Arguments: Any amount of executable names.
:: Ex.      : C:\...> PKILL explorer.exe
:: Ex.      : C:\...> PKILL explorer.exe polymc wt.EXE

@ECHO off

IF "%1" EQU "" (
    :: bruh
    ECHO PKILL requires at least 1 argument.
    EXIT /b
)

:: like notepad, taskkill can't kill multiple processes by itself, so I
:: instead do it here.
FOR %%i in (%*) DO (
    :: check if process name ends in exe, if not add it in automatically
    IF /i "%%%i~-4%" NEQ ".exe" (
        TASKKILL /f /im %%i.exe
        EXIT /b
    )

	TASKKILL /f /im %%i
)
