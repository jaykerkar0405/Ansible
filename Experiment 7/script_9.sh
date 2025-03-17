#!/bin/bash

# Function to check if a number is prime
function prime {
    echo -n "Enter the number: "
    read a
    i=2
    z=0
    # Check for factors up to a-1
    while [ $i -lt $a ]
    do
        s=$(( $a % $i ))  # Using $(( )) for arithmetic operations
        if [ $s -eq $z ]
        then
            echo "Not a Prime Number"
            return  # Exit the function
        else
            i=$(( i + 1 ))  # Increment i
        fi
    done
    echo "Prime Number"
}

# Function to check if a number is odd or even
function oddeven {
    echo -n "Enter a Number: "
    read n
    rem=$(( n % 2 ))  # Check remainder when divided by 2
    if [ $rem -eq 0 ]
    then
        echo "Number is even"
    else
        echo "Number is odd"
    fi
}

# Function to check if a number is palindrome
function palindrome {
    echo -n "Enter number: "
    read n
    sd=0
    rev=""
    on=$n

    # Reverse the number
    while [ $n -gt 0 ]
    do
        sd=$(( n % 10 ))  # Get last digit
        rev=$( echo ${rev}${sd} )  # Add it to reverse
        n=$(( n / 10 ))  # Remove last digit
    done

    # Check if the original number is equal to the reversed number
    if [ $on -eq $rev ]
    then
        echo "Number is palindrome"
    else
        echo "Number is NOT palindrome"
    fi
}

# Menu function to display options
function menu {
    echo -e "\t1. Odd Even"
    echo -e "\t2. Palindrome"
    echo -e "\t3. Prime"
    echo -e "\t0. Exit Menu\n\n"
    echo -en "Enter an Option: "
    read -n 1 option
    echo  # Adding a newline for clarity
}

# Main program loop
while true
do
    menu
    case $option in
        0)
            echo "Exiting program..."
            break ;;  # Exit the loop and program
        1)
            oddeven ;;  # Call odd-even function
        2)
            palindrome ;;  # Call palindrome function
        3)
            prime ;;  # Call prime function
        *)
            clear
            echo "Sorry, wrong selection. Please try again." ;;  # Invalid option selected
    esac
    echo -en "\n\n\t\t\tHit any key to continue..."
    read -n 1 line  # Wait for user input to continue
done
clear
