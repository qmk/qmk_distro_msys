@echo off
START "" "%~dp0conemu\ConEmu64.exe" -NoSingle -NoUpdate -icon %~dp0icon.ico -title "QMK MSYS" -run %~dp0usr\bin\bash.exe -l -i -cur_console:m:""