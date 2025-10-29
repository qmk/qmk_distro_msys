@echo off

set MSYSTEM=MINGW64
set MSYS2_PATH_TYPE=inherit

"%~dp0\usr\bin\bash.exe" -l -i %*
