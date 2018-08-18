call %~dp0\config.bat
dism /Mount-Image /Imagefile:"%workdirectory%\%arch%\media\sources\boot.wim" /index:1 /MountDir:"%workdirectory%\%arch%\mount"