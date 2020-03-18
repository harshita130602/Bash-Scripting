#!/bin/bash
declare -i comp=$1
ans=""
while [ $comp -ge 1000 ];
do
    comp=comp-1000
    ans+="M"
    continue
done
while [ $comp -ge 900 ]
do
    comp=comp-900
    ans+="CM"
    continue
done
while [ $comp -ge 500 ]
do
    comp=comp-500
    ans+="D"
    continue
done
while [ $comp -ge 400 ]
do
    comp=comp-400
    ans+="CD"
    continue
done
while [ $comp -ge 100 ]
do
    comp=comp-100
    ans+="C"
    continue
done
while [ $comp -ge 90 ]
do
    comp=comp-90
    ans+="XC"
    continue
done
while [ $comp -ge 50 ]
do
    comp=comp-50
    ans+="L"
    continue
done
while [ $comp -ge 40 ]
do
    comp=comp-40
    ans+="XL"
    continue
done
while [ $comp -ge 10 ]
do
    comp=comp-10
    ans+="X"
    continue
done
while [ $comp -ge 9 ]
do
    comp=comp-9
    ans+="IX"
    continue
done
while [ $comp -ge 5 ]
do
    comp=comp-5
    ans+="V"
    continue
done
while [ $comp -ge 4 ]
do
    comp=comp-4
    ans+="IV"
    continue
done
while [ $comp -ge 1 ]
do
    comp=comp-1
    ans+="I"
    continue
done
echo -n $ans
