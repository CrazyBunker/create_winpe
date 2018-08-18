call %~dp0\config.bat
dism /Unmount-Image /MountDir:"%workdirectory%\%arch%\mount" /commit
