@echo off
setlocal
echo ========================================================
echo   AETHERSPHERE // 3D Spatial Photogrammetry NFT Studio
echo ========================================================
echo.

set "SCRIPT_DIR=%~dp0"
cd /d "%SCRIPT_DIR%"

python run_server.py %*
if errorlevel 1 (
    echo.
    echo Failed to start server. Please ensure Python and required dependencies are installed:
    echo pip install -r requirements.txt
    pause
)
