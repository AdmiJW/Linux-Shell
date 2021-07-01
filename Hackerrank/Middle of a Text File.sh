#!/bin/bash


# The problem specifies to obtain the 11th to 22th line of a text file.
# Can you perhaps do it using head, tail?
# Or even, can you use cut to do it?




# Solution #1 - Cut
#
# Recall that a line is nothing but a newline character of \n. 
# Therefore, using \n as a delimiter in cut, we can easily select out the 11th to 22th
# line using range in field flag -f

cut -d $'\n' -f 12-22




# Solution #2 - Head + Tail
#
# First, obtain the first 22 lines of the text file, then to select from 11th to the last (22th),
# use tail

head -n 22 | tail -n 11



# Solution #3 - Head and looper
#
# Obtain first 22 lines, but print out only if line no is 12+

for (( i=1; i<=22; i++ ))
do
    read line 

    if [ $i -gt 11 ]
    then
        echo $line
    fi
done