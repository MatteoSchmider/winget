FROM mcr.microsoft.com/windows:ltsc2019
ADD "build-winget.bat" "C:\build-winget.bat"
RUN "C:\build-winget.bat"