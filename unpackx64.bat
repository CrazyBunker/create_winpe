call %~dp0\config.bat
dism /Mount-Image /Imagefile:"%workdirectory%\x64\media\sources\boot.wim" /index:1 /MountDir:"%workdirectory%\x64\mount"
pause