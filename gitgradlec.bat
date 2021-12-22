:: Easily clone a git repo and build it using gradle. This also opens the build
:: folder for quick access to jars. In case it wasn't obvious (which it
:: probably wasn't), this is *made* for Minecraft modding, but should work with
:: any gradle project.

:: Takes: A link to a Git repository.
:: Ex.  : C:\...> gitgradlec https://github.com/FabricMC/fabric

@ECHO off
SETLOCAL

GIT clone %1

:: get repo name from link
:: ex. "https://github.com/FabricMC/fabric" becomes "fabric"
FOR /f "tokens=4 delims=/" %%G IN ("%1") DO SET repo=%%G

CD %repo%

:: I have to open the window first, if I put this after gradlew it doesn't even
:: open. thanks, microsoft.
MKDIR build\libs

EXPLORER build\libs

GRADLEW build
