#!/bin/bash
#some variables have been initialised in the beginning of code just to check some test cases and are not useful variables
echo "Enter name:"
read name
main=8
echo "Enter DOB:"
read dob
presentmon=$(date +%m)

presentyr=$(date +%Y)
dobarr=(${dob//-/ })
temp=0
month=$( echo "$presentmon - ${dobarr[0]}" | bc)
temp=$main
year=$( echo "$presentyr - ${dobarr[1]}" | bc)
ans=$main
yearmonth=$( echo "$year * 12" | bc)
main=12
total=$( echo "$yearmonth + $month" | bc)
echo "Hello $name your age is $total months."

