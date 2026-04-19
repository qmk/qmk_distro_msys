@echo off

set MSYSTEM=UCRT64
set MSYS2_PATH_TYPE=inherit

%~dp0\usr\bin\bash.exe -l -i %*
