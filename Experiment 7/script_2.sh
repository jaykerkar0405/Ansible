#!/bin/bash

# Prompt for input
echo "Enter the first string:"
read a

echo "Enter the second string:"
read b

# Compare the strings
if [ "$a" = "$b" ]; then
    echo "String is equal"
else
    echo "Not equal"
fi
