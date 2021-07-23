#!/bin/sh

#===================================
# Get Folder Names As Parameters
# $1 - PYTHON_SHELL_BACKUP_MMDDYY
# $2 - TEMPLATE_BACKUP_MMDDYY
#===================================
MAIN_FOLDER="$(pwd)/"
TEMP_FOLDER="$(pwd)/templates"
echo "CURR_FL = $MAIN_FOLDER"
echo "PYSH =  $MAIN_FOLDER$1"
echo "TEMP =  $MAIN_FOLDER$2"
echo "TEMP_F = $TEMP_FOLDER"
echo "$1"
echo "$2"

#===================================
# Rollback .PY & .SH
#===================================
for py_sh_file in $MAIN_FOLDER$1/*; do
    cp $py_sh_file $MAIN_FOLDER
    echo $py_sh_file " " $MAIN_FOLDER
done
echo "Scripts Backed Up Successfully !!"

#===================================
# Rollback .HTML
#===================================
for htm_file in $MAIN_FOLDER$2/*; do
    # cp $htm_file $TEMP_FOLDER
    echo $htm_file " " $TEMP_FOLDER
done
echo "Templates Backed Up Successfully !!"

#===================================
# DataBase BackUp
#===================================
mysql -u root -pOmni123* DB_NAME <databse_tables.sql
echo "Database tables rolled back successfully !!"

# CREATE DATABASE $(sample_test) /*!40100 DEFAULT CHARACTER SET latin1 */;