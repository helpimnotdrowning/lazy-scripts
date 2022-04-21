:: Alias to make installing a package using winget ~1.8 seconds 
:: quicker.

:: Arguments: Winget package name.
:: Ex.      : C:\...> wis clsid2.mpc-hc

@ECHO off

WINGET install %*
