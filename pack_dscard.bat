call %~dp0\config.bat
call %~dp0var.bat
dism /Unmount-Image /MountDir:"%workdirectory%\%arch%\mount" /discard