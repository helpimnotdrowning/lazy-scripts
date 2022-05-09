:: Shorthand to open Explorer to any path

:: Arguments: A filepath (explorer will open ~/Documents if more than one path is passed to it)
:: Ex.      : C:\...> E Desktop
:: Ex.      : C:\...> E "C:\Users\owo\VirtualBox VMs"

@ECHO off

START explorer.exe %1
