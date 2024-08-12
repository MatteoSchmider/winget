FROM mcr.microsoft.com/windows/server:ltsc2022
ADD "build-winget.bat" "C:\build-winget.bat"
RUN "C:\build-winget.bat"