#!/bin/bash

# For full reference, refer to 'Read in An Array.sh'

# To slice an array, first read the array from arrayName=(`cat <file>`) or arrayName=($(cat <file>))
# Then, to slice an array, we first refer to every element, then use : operator for slicing

array=(`cat`)
echo ${array[@]:3:5}