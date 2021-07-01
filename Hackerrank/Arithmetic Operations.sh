#!/bin/bash


# To perform arithmetic operations literally (in string), one is able to use:
#
#   >   $(( ... )), however it only operates on integers. A . will trigger an error
#   >   $(expr ...), but spaces are required to separate in between operands and operators, and only meant
#                    for integers
#   >   bc -l. 'bc' stands for basic calculator, and it is a package that might or might not come installed
#               in your bash. However, good thing is it parses the string and works with floating point numbers.
#               One can even format the result to desired decimal points.
#               Without the -l flag, it might not work correctly with floating point numbers
#
#   To use bc, do as follows:
#       echo "scale = 2; 5+5 * 10-3" | bc -l
#
#   The '|' is essentially a operator that connects std output of shell command as std input of another.
#   The "scale = 2;" part tells bc to format the output into 2 decimal places. It is optional
#
# Note for bc, no rounding is done when you use scale. 
# For printf like "%.3f" however, there is rounding off done!


# Example on $((...))
echo $((5 + 3))             # 8
echo $((5 / 3))             # 1 (No floating point)
echo $((3.4 / 3))           # Error because of decimal point


# Example on expr
echo $(expr 5 + 3)          # 8
echo $(expr 5 / 3)          # 1
echo $(expr 3.4 / 3)        # Error: non integer argument

# Example on bc
echo "5 + 3" | bc           # 8
echo "5 / 3" | bc           # 1  (No -l flag, still integer evaluation)
echo "5 / 3" | bc -l        # 1.66666...
echo "scale = 2; 5 / 3" | bc -l     # 1.66



# Solve the hackerrank problem
read toEval
printf "%.3f" $(echo "scale = 4; $toEval+0.005" | bc -l)        


read -n 1 -s -r -p "Press any key to continue..."