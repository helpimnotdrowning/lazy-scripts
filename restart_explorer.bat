:: Restart Windows Explorer easily, useful when it freezes because I hovered
:: over the File>Open With option for too long, or when it freezes because I
:: tried to load too many thumbnails, or when it freezes for NO apparent
:: reason... you get the point.

:: Arguments: None
:: Ex.      : C:\...> RESTART_EXPLORER

@ECHO off

PKILL explorer.exe
START EXPLORER
