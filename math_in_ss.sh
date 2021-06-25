# * Adding two values
echo -n "Enter first number:"
read x
echo -n "Enter second number:"
read y
((sum = x + y))
echo "The result of addition=$sum"

# * Functions in Bash
function Add() {
	    echo -n "Enter a Number: "
	        read x
		    echo -n "Enter another Number: "
		        read y
			    echo "Adiition is: $((x + y))"
		    }
	    Add # Calling Add here

