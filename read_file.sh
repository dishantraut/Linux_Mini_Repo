# * Read Files
# * Give filename as 1 argument
file=$1
while read line; do
	    echo $line
    done <$file

