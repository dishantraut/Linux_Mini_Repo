# * Remove Duplicate Lines From File
# * Make New File With Unique Lines (sorted.text)
echo -n "Enter Filename-> "
read filename
if [ -f "$filename" ]; then
	sort $filename | uniq | tee sorted.txt
else
	echo "No $filename in $pwd...try again"
fi
exit 0