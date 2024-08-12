FROM mcr.microsoft.com/windows/servercore:ltsc2019
ADD "build-winget.bat" "C:\build-winget.bat"
RUN "C:\build-winget.bat"