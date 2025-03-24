#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <file> <search_word> <replace_word>"
  exit 1
fi

# Assign arguments to variables
file=$1
search_word=$2
replace_word=$3

# Use sed to replace all occurrences of the search word with the replace word
sed -i "s/$search_word/$replace_word/g" "$file"

echo "All occurrences of '$search_word' have been replaced with '$replace_word' in the file '$file'."