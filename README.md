# Repository "create_winpe"
Scripts for creating winpe images
First we need the Windows ADK package for window 10 or Windows AIK for windows 7Description of scripts:

# 1 generate.bat 
These scripts are run from the deployment environment
They create a working directory with an empty boot.wim

# 2 unpack.bat
Unpack boot.wim
These scripts are run from the deployment environment

# 3 import_start.bat
These scripts are run from the deployment environment
Copy startnet.cmd into the ordered image

# 4 extractBootPXE.bat
Extract files from the wim image for PXE downloads

# 5 pack.bat
Pack in boot.wim using the changes made

# 6 export.bat
Extracts an image from WIM

# 7 pack_dscard.bat
Unmount the image without applying any changes

# 8 config.bat
This file contains the working directory

# Starter
Depending on the architecture chosen, the files are launched in the following order
To automatically create a structure and wim-image, run the setup.bat script

1. generate.bat
2. unpack.bat
3. extractBootPXE.bat
4. import_start.bat
5. pack.bat
6. export.bat

# 9 createBCD
Run createBCD.bat from a command prompt with elevated privileges, the BCD file will appear in the PXE / Boot directory

