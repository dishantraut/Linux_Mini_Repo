# BackUp Files/Scirtps/Dir
BACKUPFILE=backup-$(date +%m-%d-%Y)
archive=${1:-$BACKUPFILE}
find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"
zip -r "$BACKUPFILE.zip" .
echo "$BACKUPFILE.zip"
echo "Directory $PWD backed up in Zip file \"$archive.zip\"."
echo "Directory $PWD backed up in Archive file \"$archive.tar.gz\"."
exit 0