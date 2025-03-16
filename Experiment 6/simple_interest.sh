#!/bin/bash

echo Enter the principle value
read p

echo Enter rate of interest
read r

echo Enter time period
read n

i=`expr $p \* $n \* $r / 100`

echo "The simple interest is: ";
echo $i
