#!/bin/bash

# Prompt for the basic salary
echo "Enter the basic salary:"
read sal

# Check if salary is less than 1500
if [ $sal -lt 1500 ]; then
    # Calculate gross salary when less than 1500
    gross=$((sal + (sal * 10 / 100) + (sal * 90 / 100)))
    echo "The gross salary: $gross"
fi

# Check if salary is greater than or equal to 1500
if [ $sal -ge 1500 ]; then
    # Calculate gross salary when greater than or equal to 1500
    gross=$((sal + 500 + (sal * 98 / 100)))
    echo "The gross salary: $gross"
fi
