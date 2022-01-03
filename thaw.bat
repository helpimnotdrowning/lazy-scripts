:: Easily install a python requirements file (generated by `pip freeze`).
:: I use this instead of `pip install` because some (llvmlite, librosa :eyes:)
:: things don't like installing nicely and I don't want pip to stop everything
:: after a single error. There's probably a command for that, but I didn't
:: bother looking any further.

:: Arguments: Path to requirements file.
:: Ex.      : C:\...> thaw C:\py39.txt

@ECHO off
SETLOCAL

FOR /F %%i IN (%1) DO PIP install %%i