# * Concatination
string1="Ubuntu"
string2="Pit"
string=$string1$string2
echo "$string is a great resource for Linux beginners."

# * String Slicing
Str="Learn Bash Commands from UbuntuPit"
subStr=${Str:0:14}
echo $subStr

# * Extracting Sub String Using Cut
Str="Learn Bash Commands from UbuntuPit"
echo $Str| cut -d ' ' -f 1-8

