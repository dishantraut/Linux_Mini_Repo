# * While Loop
: '
while [ condition ]
do
commands 1
commands n
done
'
echo "# For Loop"
i=0
while [ $i -le 2 ]; do
    echo Number: $i
    ((i++))
done
