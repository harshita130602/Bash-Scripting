#!/bin/bash
main=16
echo "Please enter your SGPA:"
read sgpa
cgpa=$(echo "16 - $sgpa"|bc -l)
if (( $(echo "$sgpa < 5" |bc -l) ));
then
	echo "PROBATION"
fi
if (( $(echo "$sgpa < 6" |bc -l) ));
then 
	echo "AGLE SEM PHOD DENGE"
else
	echo "You need SGPA $cgpa next sem"
fi
