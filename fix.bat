REM ===================================================
REM Install the chocholaty package manager for windows
REM ===================================================
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

REM ===================================================
REM Set explorer to show hidden files, OS files and shows file extentions
REM ===================================================
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Hidden /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Hidden /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowSuperHidden /T REG_DWORD /D 1 /F
RED ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideFileExt /T REG_DWORD /D 0 /F

REM ===================================================
REM Set file explorer to defualut view This PC
REM ===================================================
RED ADD  "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideFileExt /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe
