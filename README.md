#Repository "create_winpe"
Scripts for creating winpe images
First we need the Windows ADK package for window 10 or Windows AIK for windows 7Description of scripts:

#1 generate.bat and generatex64.bat
These scripts are run from the deployment environment
They create a working directory with an empty boot.wim

#2 unpackx64.bat and unpackx86.bat
Unpack boot.wim
These scripts are run from the deployment environment

#3 import_startx64.bat and import_startx86.bat
These scripts are run from the deployment environment
Copy startnet.cmd into the ordered image

#4 extractBootPXEx64.bat and extractBootPXEx86.bat
Extract files from the wim image for PXE downloads

#5 packx64.bat and packx86.bat
Pack in boot.wim using the changes made

#6 pack_dscardx64.bat and pack_dscardx86.bat
Unmount the image without applying any changes

#7 config.bat
This file contains the working directory

#Starter
Depending on the architecture chosen, the files are launched in the following order

generate.bat
unpack<arch>.bat
extractBootPXE<arch>.bat
import_start<arch>.bat
pack<arch>.bat or pack_dscards<arch>.bat


