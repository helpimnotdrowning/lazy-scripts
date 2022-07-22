:: Easily build a gradle project, assuming you're at the project root already.
:: This also opens the build folder for quick access to jars. In case it wasn't
:: obvious (which it probably wasn't), this is *made* for Minecraft modding,
:: but should work with any gradle project.

:: Arguments: None
:: Ex.      : C:\...> GRADLEC

@ECHO off

:: I have to open the window first, if I put this after gradlew it doesn't even
:: open. thanks, microsoft.
MKDIR build\libs
CALL E "build\libs"

GRADLEW build
