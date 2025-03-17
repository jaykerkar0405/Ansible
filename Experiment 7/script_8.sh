#!/bin/bash

# Display current working directory
echo "Current working directory is : $(pwd)"

# List the contents of the current directory
echo "Content of current directory :"
ls

# Create a new directory
echo "Creating another directory :"
mkdir New_Folder
ls

# Change to the new directory
cd New_Folder

# Create a new file in New_Folder
echo "Creating a file in New_Folder :"
touch new_file.txt
echo new_file.txt >> "Test"

# Wait for the user to finish editing the file
echo "Content of the file is : $(cat new_file.txt)"