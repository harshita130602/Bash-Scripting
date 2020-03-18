#!/bin/bash
echo "Enter A and B"
read num1 num2
temp=$(( $num1*$num2 ))
temp2=$temp
num3=0
while [ 1 ]; do
    if [ $(( $num2%$num1 )) -ne 0 ]; 
    then
	c=0
        c=$num1
        num1=$(( $num2%$num1 ))
        num2=$c
	num3=$c
	continue
    else
        break
    fi
done
c=$(( $temp/$num1 ))
num2=0;
echo "GCD: "$num1
echo "LCM: "$c
