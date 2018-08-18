call %~dp0\config.bat
dism /Unmount-Image /MountDir:"%workdirectory%\x64\mount" /commit
xcopy /Y %workdirectory%\x64\media\sources\boot.wim %workdirectory%\x64\PXE\winpex64.wim
