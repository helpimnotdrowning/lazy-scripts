:: Easily clone a git repo and open the repo folder for quick access.

:: Arguments: A link to a Git repository.
:: Ex.      : C:\...> GITCL https://github.com/FabricMC/fabric

@ECHO off
SETLOCAL

:: get repo name from link
:: ex. "https://github.com/FabricMC/fabric" becomes "fabric"
FOR /f "tokens=4 delims=/" %%G IN ("%1") DO SET repo=%%G

:: without this line, running this from the Run box would clone the repo at
:: the C: drive root
CD %USERPROFILE%

ECHO Cloning "%repo%" (%1)
GIT clone %1

CD %repo%

ECHO Attempting to get submodules... (ignore this if there are none)
GIT submodule update --init

HERE
