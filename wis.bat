:: Alias to make installing a package using winget ~1.8 seconds quicker.

:: Arguments: Winget package names
:: Ex.      : C:\...> WIS clsid2.mpc-hc
:: Ex.      : C:\...> WIS M2Team.NanaZip.Preview osk.tetr

@ECHO off

IF "%1"=="" (
    ECHO WIS requires at least 1 argument.
    EXIT /b
)

FOR %%i in (%*) DO (
    ECHO NOW INSTALLING: %%i
    ECHO:

    WINGET install %%i
)