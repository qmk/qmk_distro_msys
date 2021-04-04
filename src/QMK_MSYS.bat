@echo off
%0\..\conemu\ConEmu64.exe -NoSingle -NoUpdate -icon %0\..\icon.ico -title "QMK MSYS" -run %0\..\usr\bin\bash.exe -l -i -cur_console:m:""