#!/bin/bash

provs=('Ontario' 'Quebec' 'Alberta' 'BC' 'Sskwn')

for province in ${provs[@]}
do

if [ $province == 'Alberta' ];
then
echo "Alberta is the best!"
else
echo "I'm not a fan of Alberta"
fi

done

nums=$(echo {0..9})
echo $nums
for num in ${nums[@]}
do
if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
then
echo $num
fi
done

ls_out=$(ls)
for x in ${ls_out[@]}
do
echo $x
done
