#!/bin/bash

# Display the menu options
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo -n "Enter the option: "

# Read the option
read option

# Ask the user to enter two numbers
echo "Enter two numbers:"
read a b

# Perform the operation based on the option selected
case $option in
    1) 
        c=$(expr $a + $b)
        echo "$a + $b = $c"
        ;;
    2) 
        c=$(expr $a - $b)
        echo "$a - $b = $c"
        ;;
    3) 
        c=$(expr $a \* $b)  # Escape the '*' for multiplication
        echo "$a * $b = $c"
        ;;
    4) 
        # Check for division by zero
        if [ $b -eq 0 ]; then
            echo "Division by zero is not allowed."
        else
            c=$(expr $a / $b)
            echo "$a / $b = $c"
        fi
        ;;
    *) 
        echo "Invalid Option"
        ;;
esac
