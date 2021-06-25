# * Displaying last updated file
ls -lrt | grep ^- | awk 'END{print $NF}'
