#!/bin/bash

# While loops are done via syntax
# 
#   while [condition]
#   do
#       ...
#   done
#
# Refer to get_started.sh for information on conditions.


# FOR LOOPS
# Reference: https://www.cyberciti.biz/faq/bash-for-loop/
#
# For loops in bash can do a lot of things.
#
# ===========================
#  Simple Range of Numbers
# ===========================
# Firstly, to loop over a range of numbers, is done as follows:
#
#       for i in {1..5}
#       do
#           echo $i
#       done
#
# which will print 1,2,3,4,5 in separate lines
#
#
# ============================
#  Range of Numbers with Steps
# ============================
# For range of values with steps, use
#
#       for i in {1..5..2}
#       ...
#
# which from 1, increments by 2 each time.
#
#
# ============================
#  Discrete elements
# ============================
# For loop actually work very well with discrete, space separated elements.
#
#       for i in 1 2 3 4 5 6 7
#       ...
#
#  
# ============================
#  C style For loop
# ============================
# In addition, you can write for loops like in C programming language:
#  
#       for (( initializer; loop-test; update ))
#       ...
#
# like:
#
#       for (( c=1; c<=5; c++ ))
#       ...
#
#
# ============================
#  Continue and Break
# ============================
# Of course, within the loops we can use the break and continue statements
#
#       for i in "e" "c" "e" "e" "b" "e"
#       do
#           if [ $i = "e" ];
#           then
#               echo $i
#           elif [ $i = "c" ];
#           then
#               continue
#           elif [ $i = "b" ];
#           then
#               break
#           fi
#       done
#
#  Output:  e
#           e
#           e
#
#
# ============================
#  For loop and arrays
# ============================
# For arrays, we can also loop through it, but with the help of variables in strings, and the @ operator

# arr=("element 1" "element 2" "element 3")

# for i in "${arr[@]}"        # Note use {} after $ to indicate it is a code, not simply a variable name
# do
#     echo $i
# done




# Using while
X=1
while [ $X -le 99 ]
do
    echo $X
    X=$((X+2))
done



# Using for loop and range
for i in {1..99..2}
do
    echo $i
done



# Using C-styled for loop
for (( i=1; i<=99; i+=2 ))
do
    echo $i
done