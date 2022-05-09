:: Alias to make updating a package using winget ~1.59 seconds quicker.

:: Arguments: Winget package name
:: Ex.      : C:\...> WUP clsid2.mpc-hc
:: Ex.      : C:\...> WUP Peppy.Osu! qBittorrent.qBittorrent

@ECHO off

IF "%1"=="" (
    ECHO WUP requires at least 1 argument.
    EXIT /b
)

FOR %%i in (%*) DO (
    ECHO NOW UPGRADING: %%i
    ECHO:

    WINGET upgrade %%i
)