:: Easily create and write a file from the command line.

:: Arguments: A filepath
:: Ex.      : C:\...> CONN simple.bat

@ECHO off

ECHO Stop with Ctrl+C.
TYPE CON > %1
