:: Easily open file/s in Notepad++ via the command line, absolute or relative.

:: Arguments: Any amount of filepaths
:: Ex.      : C:\...> npp W:\ISO\DefinitelyAnUbuntuISO\README.txt
:: Ex.      : W:\ISO> npp ./DefinitelyAnUbuntuISO/README.txt ./DefinitelyAnUbuntuISO/UbuntuISO.cue

@ECHO off
SETLOCAL

START "Opening: Notepad++" "C:\Program Files\Notepad++\notepad++.exe" %*
