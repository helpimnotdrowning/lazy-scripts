:: Easily open a file in Notepad++ via the command line, absolute or relative.

:: Arguments: Any amount of filepaths
:: Ex.      : C:\...> npp W:\ISO\DefinitelyAnUbuntuISO\README.txt
:: Ex.      : W:\ISO> 

@ECHO off
SETLOCAL

:: notepad can't open mutiple files at once like npp, so just start multiple
:: instances like how Explorer handles it.
FOR %%i in (%*) DO START NOTEPAD %%i