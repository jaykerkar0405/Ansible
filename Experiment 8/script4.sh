#!/bin/bash

# Check if a file is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Use sed to print duplicate lines
sed '{
    h
    s/^\(.*\)$/\1/
    x
    G
    s/^\(.*\)\n\1$/\1/p
}' "$1"