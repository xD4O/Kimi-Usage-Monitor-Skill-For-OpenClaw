@echo off
REM Kimi Usage Check - Windows batch version
REM Usage: check_usage.bat [--json]

cd /d "%~dp0"
python3 scripts\fetch_usage.py %*
