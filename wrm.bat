:: Alias to make uninstalling a package using winget ~2.3 seconds quicker.

:: Arguments: Winget package names
:: Ex.      : C:\...> WRM VideoLAN.VLC
:: Ex.      : C:\...> WRM Moonsworth.LunarClient MCreator.MCreator

@ECHO off

IF "%1"=="" (
    ECHO WRM requires at least 1 argument.
    EXIT /b
)

FOR %%i in (%*) DO (
    ECHO NOW REMOVING: %%i
    ECHO:

    WINGET uninstall %*
)
