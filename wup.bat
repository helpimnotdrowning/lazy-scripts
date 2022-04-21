:: Alias to make updating a package using winget ~1.59 seconds 
:: quicker.

:: Arguments: Winget package name.
:: Ex.      : C:\...> wup clsid2.mpc-hc

@ECHO off

WINGET upgrade %*
