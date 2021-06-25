# * AND
echo -e "\n# Using AND operator"
echo -n "Enter Number:"
read num
# -gt (greater than)
# -lt (less than)
# -eq (equal to)
if [[ ($num -gt 0) && ($num%2 -eq 0) ]]; then
    echo "Even Number"
else
    echo "Odd Number"
fi
