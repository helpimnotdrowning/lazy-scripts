:: Alias to make searching for packages using winget ~1.7 seconds quicker.

:: Arguments: A search query 
:: Ex.      : C:\...> wse clink

@ECHO off

IF "%1"=="" (
    ECHO WSE requires at least 1 argument.
    EXIT /b
)

WINGET search %*
