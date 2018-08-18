call %~dp0\config.bat
dism /Mount-Image /Imagefile:"%workdirectory%\x86\media\sources\boot.wim" /index:1 /MountDir:"%workdirectory%\x86\mount"
pause