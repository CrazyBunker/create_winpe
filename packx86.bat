call %~dp0config.bat
dism /Unmount-Image /MountDir:"%workdirectory%\x86\mount" /commit
xcopy /Y %workdirectory%\x86\media\sources\boot.wim %workdirectory%\winpex86.wim    