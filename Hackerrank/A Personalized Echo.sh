
# First reading a input, then printing out the input, can be done via 2 commands:
#       >   Echo / printf      -    Prints out contents to the console
#       >   read               -    Reads input from the standard input,stdin
#
# For the read command, it can be followed by one or more variable names. Remember that, input arguments are separated
# by spaces
#
# For official documentation, It can be found here: https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_08_02.html

#!/bin/bash

read name1
echo "Welcome $name1"


# Bonus:
#cat is one of the most frequently used commands in Unix operating systems. 
#cat is used to read a file sequentially and print it to the standard output. 
#The name comes from the way it can concatenates files So the name input will be 
#store in the cat command and will concatenates with the "welcome" string
printf "Welcome "
cat