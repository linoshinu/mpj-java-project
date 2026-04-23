@echo off
echo ==========================================
echo    SMART EXPENSE TRACKER - STARTING
echo ==========================================
echo.

echo [1/2] Setting up environment...
powershell -ExecutionPolicy Bypass -File setup.ps1

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Setup failed. Please ensure you have internet access.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [2/2] Running Smart Expense Tracker...
echo The application will be available at: http://localhost:8081
echo.
call mvnw.cmd spring-boot:run

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Failed to run the application.
    pause
)
