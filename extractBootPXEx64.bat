call %~dp0config.bat
mkdir %workdirectory%\x64\PXE
xcopy %workdirectory%\x64\mount\windows\boot\pxe\pxeboot.n12 %workdirectory%\x64\PXE\pxeboot.0
xcopy %workdirectory%\x64\mount\windows\boot\pxe\bootmgr.exe %workdirectory%\x64\PXE
mkdir %workdirectory%\x64\PXE\Boot
xcopy %workdirectory%\x64\media\Boot\boot.sdi %workdirectory%\x64\PXE\Boot
