#!/bin/sh

#===================================
# Unzip / Remove / Declare Directory
#===================================
rm -rf release
unzip release.zip
# Current Directory
CD="$(pwd)"
# Templates Directory
TEMP="$(pwd)/templates"
# Empty the Templates Directory
cd $TEMP
rm -rf *
cd $CD
rm -rf *.py *.sh *.pyc
# Display Directory Values
echo "C_D = $CD"
echo "TEMP = $TEMP"

#===================================
# Install .PY & .SH
#===================================
for py_sh_file in $CD/release/*; do
    cp $py_sh_file $CD
    echo $py_sh_file " " $CD
done
echo "Scripts Installed Successfully !!"

#===================================
# Install .HTML
#===================================
cd $CD
for htm_file in $(pwd)/release/templates/*; do
    cp $htm_file $TEMP
    echo $htm_file " " $TEMP
done
echo "HTMS Installed Successfully !!"
