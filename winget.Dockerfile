FROM mcr.microsoft.com/windows/servercore:ltsc2022
ADD "build-winget.bat" "C:\build-winget.bat"
RUN "C:\build-winget.bat"