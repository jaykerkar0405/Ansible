#!/bin/bash

# Specify the file to be processed
file="test.txt"

# Count the number of lines
lines=$(grep -c "^" "$file")

# Count the number of words
words=$(grep -o -E '\w+' "$file" | wc -l)

# Count the number of characters
characters=$(grep -o . "$file" | wc -l)

# Display the results
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $characters"
