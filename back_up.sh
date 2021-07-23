#!/bin/sh

#===================================
# Get Folder Path As Parameters
# $1 - DB Name
#===================================
DB_NAME = $1

#===================================
# GET CURRENT DATE IN MMDDYY
#===================================
VAR_DATE=$(date "+%m%d%y")

#===================================
# Folder Locations For .py & .sh
# Back Up Folder Loaction & Name
#===================================
pyhton_and_shell="$(pwd)"
pyhton_and_shell_backup="PYTHON_SHELL_BACKUP"
pyhton_and_shell_backup="${pyhton_and_shell_backup}"_"${VAR_DATE}"

#===================================
# Folder Locations For .html
# Back Up Folder Loaction & Name
#===================================
templates="$(pwd)/templates"
templates_backup="TEMPLATE_BACKUP"
templates_backup="${templates_backup}"_"${VAR_DATE}"

#===================================
# Display Details
#===================================
echo "Date = $VAR_DATE"
echo "Curr Dir = $pyhton_and_shell"
echo "BackUp Python & Scripts Folder = $pyhton_and_shell_backup"
echo "BackUp Templates Folder = $templates_backup"
echo " "

#===================================
# Remove Content
# IF Directory is Present
# ELSE Make Directory
#===================================
mkdir $pyhton_and_shell_backup || rm -rf $pyhton_and_shell_backup/*
mkdir $templates_backup || rm -rf $templates_backup/*

#===================================
# Copy All .PY & .SH To Back Up Location
#===================================
for py_sh_file in $pyhton_and_shell/*.py $pyhton_and_shell/*.sh; do
    cp $py_sh_file $pyhton_and_shell_backup
    # echo $py_sh_file
done
echo "Scripts copied successfully !!"

#===================================
# Copy all .HTML To Back Up Location
#===================================
for htm_file in $templates/*.html; do
    cp $htm_file $templates_backup
    # echo $htm_file
done
echo "Templates copied successfully !!"

#===================================
# DataBase BackUp
#===================================
mysqldump -u root -pOmni123* DB_NAME institutionid >tables_backup.sql
echo "Database tables backuped successfully !!"

mysql -u root -pOmni123* DB_NAME <databse_tables.sql
echo "Database tables copied successfully !!"

#CREATE DATABASE $(sample_test) /*!40100 DEFAULT CHARACTER SET latin1 */;
