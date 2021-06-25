# * If Statement
: '
if CONDITION
then
STATEMENTS
fi
'
echo -e "\n# If Statement"
echo -n "Enter a number: "
read num
if [[ $num -gt 10 ]]; then
    echo "Number is greater than 10."
else
    echo "Number is lesser than 10."
fi
