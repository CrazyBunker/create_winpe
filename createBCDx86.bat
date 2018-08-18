call %~dp0config.bat
bcdedit -createstore %workdirectory%\x86\PXE\Boot\BCD
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -create {ramdiskoptions} /d "Ramdisk options"
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -set {ramdiskoptions} ramdisksdidevice boot
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -set {ramdiskoptions} ramdisksdipath \Boot\boot.sdi
for /F "tokens=2" %%i in ('bcdedit -store %workdirectory%\x86\\PXE\Boot\BCD -create /d "MyWinPE Boot Image" /application osloader') do set guid=%%i
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -set %guid% systemroot \Windows
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -set %guid% detecthal Yes
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -set %guid% winpe Yes
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -set %guid% osdevice ramdisk=[boot]\winpex86.wim,{ramdiskoptions}
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -set %guid% device ramdisk=[boot]\winpex86.wim,{ramdiskoptions}
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -create {bootmgr} /d "Windows PE BootManager"
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -set {bootmgr} timeout 2
bcdedit -store %workdirectory%\x86\PXE\Boot\BCD -set {bootmgr} displayorder %guid%