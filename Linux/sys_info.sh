#!/bin/bash

#output=$HOME/sys_info.txt
output=~/home/sys_info.txt

#list of comands
commands=(
'date'
'uname -a'
'hostname -s'
)

#List of sensitive files in /etc
files=(
'/etc/passwd'
'/etc/shadow'
)

echo "The permissions for sensitive /etc/ files are: " > $output 

#Iterate through sensitive files and print permissions to output
for file in ${files[@]}
do
ls -l $file >> $output
done

#Exampole 1 of using IF to create the directory only if it doesn't exist
if [ -d ~/research ]
then
echo "The directory /research already exists"
else
mkdir ~/research
fi

#Exampole 2 of using IF to create the directory only if it doesn't exist
if  [ ! -d ~/research ]
then
mkdir ~/research
fi

#Start of system audit
echo "Quick System Information Script" >> $output

for x in {0..2}
do
results=$($commans[$x]})
echo "Results of \"$commands[$x]\" command: "
echo $results
echo ""

done

#Printing date to output file
date >> $output
echo "" >> $output

echo "Machine Type Info: $MACHTYPE" >> $output
echo -e "Uname info: $(uname -a) /n" >> $output

echo "Hostname: $HOSTNAME" >> $output

echo -e "IP Information: $(ip addr | head -n 9 | tail -n 1) \n" >> $output
