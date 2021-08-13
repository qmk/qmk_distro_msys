@echo off

python -c "from pip._internal.cli.main import main;import sys;sys.executable='python.exe';main()" %*
