#!/bin/bash

# Reference: https://unix.stackexchange.com/questions/93029/how-can-i-add-subtract-etc-two-numbers-with-bash
#
# Recall that to read and write something out on the screen, we use the read and echo command (Alternatively, use printf)
#
#   read x
#   echo $x
#
# Now, if we were to perform some arithmetic operations, we actually cannot simply put the operator and call it a day
# If you do like:
#
#       read a              # 1
#       read b              # 2
#       echo $a + $b
#
# You will only get output "1 + 2", which is not what you want
#
# Instead, In Bash, we perform these arithmetic by first prefixing with a dollar sign $, and do the expression inside
# either double brackets, or a square brackets
#
#       $((a+b))
#       $[a-b]
#
# In using printf, remember that it interprets a '-' (dash) as a command line option. Therefore if our expression is
# evaluated to be negative, error will be thrown.
# To escape this, we can choose to use string formatting instead, like:
#
#       printf "%s" "$[a-b]"


read a
read b

echo $((a + b))
echo $[a - b]
printf "%s\n" "$((a * b))"
printf "%s\n" "$[a / b]"

read -n 1 -s -r -p "Press any key to continue..."