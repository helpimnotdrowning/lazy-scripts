:: Easily clone a git repo and open the repo folder for quick access.

:: Arguments: A link to a Git repository.
:: Ex.      : C:\...> GITCL https://github.com/FabricMC/fabric

@ECHO off
SETLOCAL

:: without this line, running this from the Run box would clone the repo at
:: the C: drive root
CD %USERPROFILE%

GIT clone %1

:: get repo name from link
:: ex. "https://github.com/FabricMC/fabric" becomes "fabric"
FOR /f "tokens=4 delims=/" %%G IN ("%1") DO SET repo=%%G

CD %repo%

HERE
