FROM mcr.microsoft.com/windows:1909
ENV chocolateyUseWindowsCompression false
RUN powershell -Command Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
RUN powershell -Command choco install visualstudio2019community cmake