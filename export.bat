call %~dp0\config.bat
Dism /Export-Image /SourceImageFile:%workdirectory%\%arch%\media\sources\boot.wim /SourceIndex:1 /DestinationImageFile:%workdirectory%\%arch%\PXE\winpe%arch%.wim