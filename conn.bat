@ECHO off

pwsh -ExecutionPolicy Bypass -NoProfile -File "%~dp0/conn.ps1" %* -FromBatch
