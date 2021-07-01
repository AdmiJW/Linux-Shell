# Declare a alias 'cls' to clear the terminal
# Also 'newline' to print a new line
alias cls='printf "\033c"'
alias newline='printf "\n"'
alias press_to_continue='read -n 1 -s -r -p "Press any key to continue..."'


# Quick Starter Guide: http://www.panix.com/~elflord/unix/bash-tute.html
#
# Welcome to the world of linux shell. Learning to script in bash shell is important especially if you are
# going to work with Linux OS.

# So far, you might've already seen that anything followed by a hash sign '#' is considered as comments.
#
#
#
#
##########################
# 1.0 - Starter Script
##########################
#
# > Before starting, here's an important point:
#   SPACES ARE SIGNIFICANT IN BASH SCRIPTING. A MISUSED SPACE MAY CAUSE BUGS
#
#
#
# > A bash script shall start with the command as follows:
#       !/bin/bash
#   which indicates that the script shall be ran in the bash shell regardless of which interactive shell
#   the user has chosen. Different shells may have different syntax
#
#
#
# > To print out something to the shell, simply do
#       echo <content>
#   where everything that follows until end of line, gets printed out to the console
#
#
#    
# > Strings are usually enclosed in single or double quotes. This is due to the reason stated before:
#   spaces are significant.
#
#
#
# > By enclosing string in double quotes, we also gained a power of using variables in the string, via $<varname>
#   syntax
#       echo "Hello $USER"
#   However if we want it to immediately follow some string without spaces, enclose in curly brackets
#       echo "Hello ${USER}!"
#
#
#
# > In bash, variables are referred with a dollar sign prefix, like $USER or $PWD, which are standard variables defined
#   by the bash shell itself.
#   Additionally, if I place varibles naked, you can think that the interpreter will simply expand the variable to whatever
#   content it holds, in place!
#   Therefore, shall a variable be used as string, it is a good idea to further protect it in double quotes, because of the
#   expanding behavior:
#       EMPTY=""
#       if [ -n $EMPTY ]; then ...              # ERROR, because $EMPTY expands to nothingness
#
#       EMPTY=""
#       if [ -n "$EMPTY" ]; then ...            # OK, because protected by double quotes, it became ""
#
# 
#
# > Variables are set simply via:
#       varName=value
#   Remember, spaces are significant! Giving spaces like
#       varName = value
#   will cause errors due to the shell interpreting space separated tokens as different arguments!
#   
#
#
# > Another powerful feature of bash is command substitution. In a command, we might want to include
#   the output of another command. This is made possible via two syntax:
#       
#       $(command)
#       `command`
#
#       Eg: files="$(ls)"                       # $(ls) will be substituted by output of ls
#           web_files=`ls public_html`          # Everything in backtick is substituted
#
#
#
# > Although not too important, the way we wait for user to press any button can be achieved via:
#       read -p "Press enter to continue..."
#   or
#       read -n 1 -s -r -p "Press any key to continue..."


#!/bin/bash
echo "Hello ${USER}!"
echo This script is ran from: $PWD
echo "Here is all of your files in this directory:"
ls

newline
press_to_continue
cls

# Demonstate that variables are expanded
command='echo'
content="This is an example that the variable is expanded!"
$command $content

press_to_continue
cls






###############################
# Conditionals 
###############################
#
# > No language is complete without conditionals. In bash, we achieve conditional branching using if, then, elif, else and fi (finish if)
#           if condition1
#           then
#               ...
#           elif condition2
#           then
#               ...
#           else
#               ...
#           fi
#
#
#
# > The command used in conditionals nearly all the time is the TEST COMMAND. They return
#   either true of false (exits with 0 or non zero status) depending on whether test is passed or
#   failed.
#               test operand1 operator operand2
#   Note that in some test only requires 1 operand. Therefore, operand1 is optional
#               test operator operand2
#   The test command is typically abbreviated in the form enclosed by square brackets:
#               [ operand1 operator operand2 ]
#   Be very careful of the spaces. Since operand1, operand2 and operator are different arguments, it must
#   be separated by spaces
#
#
#
# > Here are a few examples:
#           if [ $X -lt $Y ]                # If X is less than Y
#           if [ -n "$str" ];               # If str is non-empty string
#           if [ -e "${HOME}/.fvwmrc "];    # If ~/.fvwmrc exists
#           if [ -L "${HOME}/.fvwmrc" ];    # If it is a symlink
#           if [ -f "${HOME}/.fvwmrc" ];    # If it is a regular file
#
#   
#
# > Here are a quick list of test operators:
#   1.  -n      (Operand is non zero length)
#   2.  -z      (Operand is zero length)
#   3.  -d      (There exists directory whose name is operand)
#   4.  -f      (There exists file whose name is operand)
#   5.  -eq     (The operands are integers, and are equal)
#   6.  -neq    (Opposite of -eq)
#   7.  =       (Operands are equal, as strings)
#   8.  !=      (Opposite of =)
#   9.  -lt     (operand1 is strictly less thn operand2)
#   10. -gt     (operand1 is strictly greater than operand2)
#   11. -ge     (operand1 >= operand2)
#   12. -le     (operand1 <= operand2)


# Example of conditional to check for file
if [ -d "${PWD}/Hackerrank" ]; then
    echo "${PWD}/Hackerrank exists as a directory!"
elif [ -f "{PWD}/Hackerrank" ]; then
    echo "${PWD}/Hackerrank exists as a file!"
else
    echo "${PWD}/Hackerrank doesn't even exist!"
fi

press_to_continue
cls










#####################
# Loops
#####################
# In bash, we are allowed to use either for loop, and while loop
#
# > The for loop will iterate over space separated items. If some items have embedded
#   spaces, then we'll protect them with quotes
#          
#       for X in "element 1" element2 element3
#       do
#           ...
#       done
#
# > In bash, the shell will expand a string contianing a '*' to all filenames that "match"
#   the pattern. Therefore the character "*" by itself will expand to a space separated list of all
#   files in the working directory
#
#       echo *
#       echo *.jpg
#       echo ${HOME}/public_html/*.jpg
#
# > Knowing this, we now know that this can be used in for loop to iterate over files rather effortlessly
#
#       for F in *.html
#       do
#           ...
#       done
#
#
# > A while loop iterate while a given condition is true.
#       
#       while condition
#       do
#           ...
#       done
#
#
#
# > Since Bash version 3.0+, it supports ranges:
#  
#       for i in {1..5}
#       do
#           ...
#       done
#
#   Since bash 4.0+, it supports even increment values:
#
#       for i in {1..10..2}
#       do
#           ...
#       done
#
#
#
# > Bash also supports three-expression for loop syntax, which is initialize, condition, update
#
#       for (( c=1; c<=5; c++ ))
#       do
#           ...
#       done


# Example 1 - List all files in HOME directory
for X in `ls $HOME`
do
    echo $X
done

newline
press_to_continue
cls

# Example 2 - Increasing Numbers
for (( i=1; i<=99; i+=i ))
do
    echo $i
done

newline
press_to_continue
cls