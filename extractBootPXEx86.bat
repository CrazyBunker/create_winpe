call %~dp0config.bat
mkdir %workdirectory%\x86\PXE
xcopy %workdirectory%\x86\mount\windows\boot\pxe\pxeboot.n12 %workdirectory%\x86\PXE\pxeboot.0
xcopy %workdirectory%\x86\mount\windows\boot\pxe\bootmgr.exe %workdirectory%\x86\PXE
mkdir %workdirectory%\x86\PXE\Boot
xcopy %workdirectory%\x86\media\Boot\boot.sdi %workdirectory%\x86\PXE\Boot
