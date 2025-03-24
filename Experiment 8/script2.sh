#!/bin/bash

# Specify the directory (default to the current directory if not provided)
dir="${1:-.}"

# Specify the types of files (e.g., .txt, .jpg, .pdf)
file_types="\.txt$|\.jpg$|\.pdf$"

# List the files in the specified directory and filter with egrep
ls "$dir" | egrep -i "$file_types"
