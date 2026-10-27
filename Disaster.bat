@echo off
echo Cleaning personal profile directories for %USERNAME%...
echo.

:: Desktop
if exist "%USERPROFILE%\Desktop" (
    echo Cleaning Desktop...
    del /f /s /q "%USERPROFILE%\Desktop\*.*" >nul 2>&1
    for /d %%i in ("%USERPROFILE%\Desktop\*") do rd /s /q "%%i" >nul 2>&1
)

:: Documents
if exist "%USERPROFILE%\Documents" (
    echo Cleaning Documents...
    del /f /s /q "%USERPROFILE%\Documents\*.*" >nul 2>&1
    for /d %%i in ("%USERPROFILE%\Documents\*") do rd /s /q "%%i" >nul 2>&1
)

:: Downloads
if exist "%USERPROFILE%\Downloads" (
    echo Cleaning Downloads...
    del /f /s /q "%USERPROFILE%\Downloads\*.*" >nul 2>&1
    for /d %%i in ("%USERPROFILE%\Downloads\*") do rd /s /q "%%i" >nul 2>&1
)

:: Pictures
if exist "%USERPROFILE%\Pictures" (
    echo Cleaning Pictures...
    del /f /s /q "%USERPROFILE%\Pictures\*.*" >nul 2>&1
    for /d %%i in ("%USERPROFILE%\Pictures\*") do rd /s /q "%%i" >nul 2>&1
)

:: Music
if exist "%USERPROFILE%\Music" (
    echo Cleaning Music...
    del /f /s /q "%USERPROFILE%\Music\*.*" >nul 2>&1
    for /d %%i in ("%USERPROFILE%\Music\*") do rd /s /q "%%i" >nul 2>&1
)

:: Videos
if exist "%USERPROFILE%\Videos" (
    echo Cleaning Videos...
    del /f /s /q "%USERPROFILE%\Videos\*.*" >nul 2>&1
    for /d %%i in ("%USERPROFILE%\Videos\*") do rd /s /q "%%i" >nul 2>&1
)

:: Local Temp Directory
if exist "%TEMP%" (
    echo Cleaning Temp Files...
    del /f /s /q "%TEMP%\*.*" >nul 2>&1
    for /d %%i in ("%TEMP%\*") do rd /s /q "%%i" >nul 2>&1
)

echo.
echo Personal profile folders cleared!
echo Note: Active locked processes and system files were safely skipped.
pause
