#!/bin/bash

# Prompt for the number of rows
echo "Enter Number of rows:"
read rows

# Loop to print the pattern
for ((i=0; i<rows; i++))
do
    # Print spaces
    for ((j=i; j<rows-1; j++))
    do
        echo -n " "
    done
    
    # Print stars
    for ((k=0; k<=i; k++))
    do
        echo -n "* "
    done
    
    # Move to the next line after each row
    echo
done
