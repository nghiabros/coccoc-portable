@echo off
setlocal

echo CocCoc Portable Auto Updater
echo ================================
echo.

:: Create PowerShell script
echo Creating update script...
(
echo # CocCoc Updater
echo $ErrorActionPreference = "Stop"
echo $coccocPath = Join-Path "%~dp0" "browser.exe"
echo $apiUrl = "https://api.github.com/repos/bibicadotnet/coccoc-portable/releases/latest"
echo $tempDir = Join-Path $env:TEMP "CocCocUpdate"
echo.
echo try {
echo   $currentVersion = if ^(Test-Path $coccocPath^) { ^(Get-Item $coccocPath^).VersionInfo.ProductVersion } else { "Not installed" }
echo   $response = Invoke-RestMethod -Uri $apiUrl
echo   $latestVersion = ^($response.tag_name -split "_"^)^[1^]
echo   $downloadUrl = $response.assets^[0^].browser_download_url
echo.
echo   Write-Host "Current version: $currentVersion" -ForegroundColor Yellow
echo   Write-Host "Latest version: $latestVersion" -ForegroundColor Yellow
echo   Write-Host
echo.
echo   $confirm = Read-Host "Do you want to update? (y/N)"
echo   if ^($confirm -ne 'y' -and $confirm -ne 'Y'^) { exit }
echo.
echo   if ^(Test-Path $coccocPath^) {
echo     Write-Host "Stopping processes..."
echo     Stop-Process -Name browser,CocCocUpdate,CocCocCrashHandler -Force -ErrorAction SilentlyContinue
echo     Start-Sleep 2
echo   }
echo.
echo   if ^(Test-Path $tempDir^) { Remove-Item $tempDir -Recurse -Force }
echo   New-Item -ItemType Directory -Path $tempDir -Force ^| Out-Null
echo   $zipFile = Join-Path $tempDir "update.zip"
echo.
echo   Write-Host "Downloading..."
echo   ^(New-Object System.Net.WebClient^).DownloadFile^($downloadUrl, $zipFile^)
echo.
echo   Write-Host "Extracting..."
echo   Expand-Archive -Path $zipFile -DestinationPath $tempDir -Force
echo.
echo   $extractedDir = Get-ChildItem $tempDir -Recurse -Directory ^| Where-Object { $_.Name -eq "CocCoc" } ^| Select-Object -First 1
echo   $currentDir = "%~dp0"
echo.
echo   Write-Host "Updating files..."
echo   Get-ChildItem $currentDir ^| Where-Object { $_.Name -ne "update.bat" -and $_.Name -ne "chrome++.ini" } ^| Remove-Item -Recurse -Force
echo.
echo   robocopy $extractedDir.FullName $currentDir /E /XF update.bat chrome++.ini /NFL /NDL /NJH /NJS /NC /NS /NP
echo.
echo   Remove-Item $tempDir -Recurse -Force
echo   Write-Host "Update completed! Version: $latestVersion" -ForegroundColor Green
echo.
echo } catch {
echo   Write-Host "Error: $_" -ForegroundColor Red
echo }
echo.
echo Read-Host "Press Enter to exit"
) > "%TEMP%\coccoc_update.ps1"

powershell -NoProfile -ExecutionPolicy Bypass -File "%TEMP%\coccoc_update.ps1"

del "%TEMP%\coccoc_update.ps1" 2>nul
