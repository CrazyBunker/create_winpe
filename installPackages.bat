call %~dp0config.bat

dism /image:%workdirectory%\%arch%\mount /add-package:"%workdirectory%\%arch%\Packages\winpe-wmi.cab"
dism /image:%workdirectory%\%arch%\mount /add-package:"%workdirectory%\%arch%\Packages\en_uswinpe-wmi_en-us.cab"
dism /image:%workdirectory%\%arch%\mount /add-package:"%workdirectory%\%arch%\Packages\winpe-hta.cab"
dism /image:%workdirectory%\%arch%\mount /add-package:"%workdirectory%\%arch%\Packages\en_us\winpe-hta_en-us.cab"
dism /image:%workdirectory%\%arch%\mount /add-package:"%workdirectory%\%arch%\Packages\winpe-scripting.cab"
dism /image:%workdirectory%\%arch%\mount /add-package:"%workdirectory%\%arch%\Packages\en_us\winpe-scripting_en-us.cab"