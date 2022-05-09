:: Easily open a file in Notepad via the command line, absolute or relative.

:: Arguments: Any amount of filepaths
:: Ex.      : C:\...> N W:\ISO\DefinitelyAnUbuntuISO\README.txt
:: Ex.      : C:\...> N winget.txt "Source - Channels.txt" _tsest/e.sh

@ECHO off

:: if no file specified, just act like an alias
:: otherwise, open all the files individually
IF "%1"=="" (
    START NOTEPAD
) ELSE (
    :: notepad can't open mutiple files at once like npp, so just start multiple
    :: instances like how Explorer handles it.
    FOR %%i in (%*) DO START NOTEPAD %%i
)