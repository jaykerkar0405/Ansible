#!/bin/bash

# Prompt for the file name
echo "Enter the file name:"
read file

# Check if the file exists
if [ -e "$file" ]; then
    echo "File exists"
else
    echo "File does not exist"
    echo "Creating file"

    # Create the file and allow the user to add content
    cat > "$file"
    echo "File $file has been created."
fi
