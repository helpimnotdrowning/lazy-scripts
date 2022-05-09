:: Easily open file/s in Notepad++ via the command line, absolute or relative.

:: Arguments: Any amount of filepaths
:: Ex.      : C:\...> NPP W:\ISO\DefinitelyAnUbuntuISO\README.txt
:: Ex.      : W:\ISO> NPP list.txt ./DefinitelyAnUbuntuISO/UbuntuISO.cue

@ECHO off

START "C:\Program Files\Notepad++\notepad++.exe" %*
