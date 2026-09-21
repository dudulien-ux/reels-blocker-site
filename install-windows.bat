@echo off
REM Reels Blocker Auto-Installer for Windows

title Reels Blocker Installer
color 0A
cls

echo.
echo ========================================
echo   Reels Blocker Installer
echo ========================================
echo.

REM Check if Chrome is installed
if not exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    if not exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
        echo ERROR: Chrome is not installed.
        echo Please install Chrome first.
        pause
        exit /b 1
    )
)

echo Step 1: Preparing files...
echo.

REM Set paths
set DOWNLOADS=%USERPROFILE%\Downloads
set EXTENSION_ZIP=%DOWNLOADS%\reels-blocker-extension.zip
set EXTENSION_DIR=%DOWNLOADS%\reels-blocker-extension

REM Clean up old folder
if exist "%EXTENSION_DIR%" rmdir /s /q "%EXTENSION_DIR%"
mkdir "%EXTENSION_DIR%"

echo Step 2: Opening Chrome...
echo.

REM Open Chrome
start chrome://extensions

timeout /t 3 /nobreak

cls
echo.
echo ========================================
echo   Setup Complete!
echo ========================================
echo.
echo Chrome is now open. Follow these steps:
echo.
echo 1. Look in the TOP RIGHT corner
echo 2. Find the toggle that says "Developer mode"
echo 3. Click it to turn it ON
echo.
echo 4. A "Load unpacked" button will appear
echo 5. Click "Load unpacked"
echo.
echo 6. Go to your Downloads folder
echo 7. Select the "reels-blocker-extension" folder
echo.
echo 8. Done! Reels are now hidden on Instagram
echo.
echo ========================================
echo.
pause
