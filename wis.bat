@ECHO off

pwsh -ExecutionPolicy Bypass -NoProfile -File "%~dp0/wis.ps1" %*
