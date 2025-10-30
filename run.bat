@echo off
:: run.bat - Windows runner
:: Usage:
::   run.bat

set VENV_DIR=%VENV_DIR%
if "%VENV_DIR%"=="" set VENV_DIR=myenv

if exist "%VENV_DIR%\Scripts\activate.bat" (
    call "%VENV_DIR%\Scripts\activate.bat"
) else (
    echo Virtualenv not found at %VENV_DIR%. Creating...
    python -m venv "%VENV_DIR%"
    if not exist "%VENV_DIR%\Scripts\activate.bat" (
        echo Failed to create venv. Ensure Python is on PATH.
        exit /b 1
    )
    call "%VENV_DIR%\Scripts\activate.bat"
    echo Installing requirements...
    pip install --upgrade pip
    pip install -r requirements.txt
)

:: Run the app (development server)
python app.py
