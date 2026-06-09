@echo off
title QuoteBot - Zoho Invoice Automation

echo.
echo  ==========================================
echo    QuoteBot - Zoho Invoice Automation
echo  ==========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo  ERROR: Python is not installed.
    echo  Please install Python from https://python.org
    echo  Make sure to check "Add Python to PATH" during install.
    pause
    exit /b
)

REM Install dependencies if not already installed
echo  Installing required packages...
pip install -r requirements.txt --quiet

echo.
echo  Starting QuoteBot...
echo  Browser will open automatically.
echo  Press Ctrl+C in this window to stop.
echo.

python app.py

pause
