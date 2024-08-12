:: go to where this batch file is located
cd /D "%~dp0"

:: create directories
mkdir "winget"
mkdir "winget\src"
mkdir "winget\vc_redist"

:: download and unpack winget release 
curl -L "https://github.com/microsoft/winget-cli/releases/download/v1.9.2151-preview/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -o "winget\src\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.zip"
powershell -Command "Expand-Archive -LiteralPath winget\src\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.zip -DestinationPath winget\src -Force"
powershell -Command "Rename-Item -LiteralPath winget\src\AppInstaller_x64.msix -NewName AppInstaller_x64.zip"
powershell -Command "Expand-Archive -LiteralPath winget\src\AppInstaller_x64.zip -DestinationPath winget -Force"

:: download and install visual c++ redistributable
curl -L "https://aka.ms/vs/17/release/vc_redist.x64.exe" -o "winget\vc_redist\vcredist_x64.exe"
"winget\vc_redist\vcredist_x64.exe" /install /passive /norestart

:: clean up directories
rmdir /s /q "winget\src"
rmdir /s /q "winget\vc_redist"

:: update path
setx /M path "%path%;%~dp0winget"