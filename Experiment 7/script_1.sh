#!/bin/bash

# Prompt the user to enter elements
echo "Enter elements (space-separated):"
read -a ele

# Prompt the user to enter the item to be searched
echo "Enter item to be searched:"
read item

# Initialize flag to 0 (indicating the item is not found)
flag=0

# Loop through the elements
for e in "${ele[@]}"
do
    if [ "$e" == "$item" ]; then
        flag=1
        break
    fi
done

# Check the flag and print appropriate message
if [ $flag -eq 1 ]; then
    echo "Item found."
else
    echo "Item not found."
fi
