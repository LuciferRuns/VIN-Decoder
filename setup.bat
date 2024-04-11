@echo off
REM Python installation directory
set PYTHON_DIR=C:\Python39

REM Install requests module
%PYTHON_DIR%\Scripts\pip.exe install requests

REM Install tkinter module (if not already installed)
%PYTHON_DIR%\python.exe -c "import tkinter" 2>nul || (
    echo Installing tkinter...
    %PYTHON_DIR%\Scripts\pip.exe install tk
)

echo Installation complete.
pause
