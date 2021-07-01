#!/bin/bash


# We are able to compare numbers in bash rather easily.
# Comparison is commonly used in for loops or conditional statements.
# We may achieve this in several ways:
#
# Using Regular Operators - <, > or =
#       if [[ $a = $b ]]
#       then
#           ...
#       fi
#
# Using operators for POSIX shells (-lt, -gt, -eq) - You might want to check out get_started.sh
#
#       if [ $a -lt $b ]
#       then
#           ...
#       fi


read a
read b

if [[ $a < $b ]]
then
    echo "X is less than Y"
elif [ $a -eq $b ]
then
    echo "X is equal to Y"
else
    echo "X is greater than Y"
fi

read -n 1 -s -r -p "Press any key to continue..."