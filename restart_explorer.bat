:: Restart Windows Explorer easily, useful when it freezes because I hovered
:: over the File>Open With option for too long, or when it freezes because I
:: tried to load too many thumbnails, or when it freezes for NO apparent
:: reason... you get the point.

:: Arguments: Nothing.
:: Ex.      : C:\...> restart_explorer

@ECHO off
SETLOCAL

TASKKILL /f /im explorer.exe
START EXPLORER
