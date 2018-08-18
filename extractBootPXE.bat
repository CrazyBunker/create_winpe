call %~dp0config.bat
mkdir %workdirectory%\%arch%\PXE
echo f | xcopy /Y %workdirectory%\%arch%\mount\windows\boot\pxe\pxeboot.n12 %workdirectory%\%arch%\PXE\pxeboot.0
xcopy /Y %workdirectory%\%arch%\mount\windows\boot\pxe\bootmgr.exe %workdirectory%\%arch%\PXE
mkdir %workdirectory%\%arch%\PXE\Boot
xcopy /Y %workdirectory%\%arch%\media\Boot\boot.sdi %workdirectory%\%arch%\PXE\Boot
