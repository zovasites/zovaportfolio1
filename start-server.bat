@echo off
title ZovaSites Local Server
echo ========================================================
echo   ZovaSites Local Web Server
echo   Running at: http://localhost:5000/
echo ========================================================
echo.
echo Opening browser...
start http://localhost:5000/
echo.
echo Server active. Press Ctrl+C to stop.
echo.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0server.ps1"
pause
