call %~dp0config.bat
dism /image:%workdirectory%\%arch%\mount /add-driver /driver:"%workdirectory%\drivers" /recurse /forceunsigned