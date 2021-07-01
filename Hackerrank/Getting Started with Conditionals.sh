#!/bin/bash

# Conditionals in Bash is done via the following structure:
#
#   if [[ condition ]]
#   then
#       ...
#   elif [[ condition ]]; then      <<<< Notice that to simulate a new line, use semicolon ;
#       ...
#   else
#       ...
#   fi
#
# There must be spaces between the brackets and their enclosing conditionals.
# Also, 'then' is required for if and elif, but not else


read char
if [[ $char == 'Y' || $char == 'y' ]]
then
    echo "YES"
else
    echo "NO"
fi



# One neat trick in Bash (and maybe other programming languages), is early termination
# of AND and OR statements.
# Turns out, it may just be the ternary operator in Bash! Which takes the form:
# [[ condition ]] && ifTrue || ifFalse
# Lets see:

read char

[[ $char == 'Y' || $char == 'y' ]] && echo "YES" || echo "NO"
