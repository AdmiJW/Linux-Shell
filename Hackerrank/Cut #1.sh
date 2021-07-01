# https://www.geeksforgeeks.org/cut-command-linux-examples/
# https://www.folkstalk.com/2012/02/cut-command-in-unix-linux-examples.html

#!/bin/bash

# In bash, the cut command perform operations on strings. Specifically, it is able to select sections of strings based on
# some delimiter, or pick out range of characters.
#
# To cut strings, specify the delimtier using the -d flag.
# Then, use -f to choose which element of the tokenized string to select and return
#
# To pick out characters on the other hand, use -c flag, followed by the index of the character
# The index of characters can be separatated by comma, or a hyphen indicating a range
#
# ======================================================
#
# Turns out, we don't necessary need to use echo or some sort. By simply doing:
#       cut -c 4
# It will print out 4th character ON EVERY LINE of the file / input



# Example:
echo "This is a string" | cut -d ' ' -f 4

echo "There are Alex,Johnny,Peter" | cut -d ' ' -f 3 | cut -d ',' -f 3

echo "abcdefghi" | cut -c 4
echo "abcdefghi" | cut -c 3,6,9
echo "abcdefghi" | cut -c 1-3



# Solution to problem
while read line
do
    echo $line | cut -c 3
done


read -n 1 -s -r -p "Press any key to continue..."