#!/bin/bash

# To select an element of an array, remember how we reference ALL elements in an array?
# By ${myArray[@]}
#
# This time, instead of using @ for referencing all elements, use actual indices (start from 0) to select
# the element at ith index

myArray=(`cat`)
echo ${myArray[3]}


# Alternative without array (IN Hackerrank ONLY. In real life, you are likely to read array from text file, which you'll use cat file) 
# First extract first 4 lines from input, then select the last element only
head -4 | tail -1