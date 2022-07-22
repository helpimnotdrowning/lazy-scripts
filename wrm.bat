@ECHO off

pwsh -ExecutionPolicy Bypass -NoProfile -File "%~dp0/wrm.ps1" %*
