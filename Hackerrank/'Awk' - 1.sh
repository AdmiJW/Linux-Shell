#!/bin/bash

# Reference:
# https://www.thegeekstuff.com/2010/01/awk-introduction-tutorial-7-awk-print-examples/

# Awk is a programming language, used specifically for manipulation of structured data and generation
# of formatted reports.
# Awk stands for the authors, 'Aho, Weinberger and Kernighan'

# Awk is used for pattern scanning and processing - It searches files to see if it contain lines
# that matches the specified pattern, and perform the associated actions

# > Awk view text files as records (rows) and fields (columns)
# > Awk has variables, conditionals and loops
# > Awk has arithmetic and string operators
# > Awk can generate formatted reports

#################################
# AWK Basics
#################################
# Awk commands come in the syntax:
#
#       awk '/search pattern/ { Actions }' filename
#
# You can have several search patterns and actions.
#
#       awk '/search pattern1/ { Action1 }
#            /search pattern2/ { Action2 }' filename
#
# How it works:
#   >   Awk reads input files one line at a time
#   >   For each line it tries to match the specified pattern
#       If no pattern is provided, then it will match all lines
#       If pattern fails to match, action will not be done on that line
#   >   For matched lines, it will perform action on the line
#       If action is not provided, the default action is to print
#       The actions shall be delimited by semicolon ;




#################################
# 1 - Default Awk
#################################
#
#  By default, if no pattern provided, it will match all line
#  We can use 'print' action to print the matched lines
#
#       awk '{ print; }' text.txt
#
# This will print out all lines in text.txt


#################################
# 2 - Patterns
#################################
#
# The pattern is simply a regular expression to match the lines.
# Use it to match lines that will be performed action on
#
#       awk '/Thomas/
#            /Nisha/' text.txt
#
# NOTE: Each pair of (pattern, action) MUST BE SEPARATE BY NEWLINE
#
# This will print lines containing 'Thomas' or 'Nisha'


#################################
# 3 - Built in variables
#################################
#
# Awk has number of built in variables. Each line it will split the record with
# delimiter. By default, the delimiter is a whitespace, but we can change the delimiter
# with the -F flag
#
# The variable $0 represents the whole line. $1, $2 and so on represents the fields
# 'NF' is the variable storing how much field the line has
#
#       awk '{print $2,$5;}' text.txt
#
# This prints the second field and the fifth field
#
#       awk '{print $2,$NF;}' text.txt
#
# This prints the second field and the LAST field (NF = number of fields)


#################################
# 4 - Every Beginning has an End
#################################
#
# We can execute some actions BEFORE awk start reading lines. Similarly,
# We can also execute some actions AFTER awk is done reading all lines.
# This allows us to better format our output, for example, a report
#
# Syntax:
#       BEGIN { Actions before reading }
#       { Actions for each line }
#       END { Actions after reading }
#
# Example:
#       awk 'BEGIN { print "Name\tDesignation\tDepartment\tSalary";' }
#            { print $2,"\t",$3,"\t",$NF; }
#            END { print "Report Generated\n--------------"; }' text.txt
#
# This will print out a output formatted like a table


#################################
# 5 - Some Conditionals
#################################
#
# Awk comes with some conditionals. Let's see:
#
#       awk '$1 > 200' text.txt
#
# It will print out all the lines where first field is greater than 200
#
#       awk '$4 ~/Technology/' text.txt
#
# It will print out all the lines where fourth field matches the pattern 'Technology'


#################################
# 6 - Counting Example
#################################
#
#       awk 'BEGIN { count=0; }
#            $4 ~ /Technology/ { count++; }
#            END { print "Number of employees in Technology Dept = ",count; }' text.txt
#
# This will count how many employees in text.txt belongs to Technology department, according to their fourth field


# References:
# https://www.thegeekstuff.com/2010/02/awk-conditional-statements/

#################################
# 7 - Simple If statement
#################################
#
# Syntax:
#       if (conditional)
#           action
#
#
#       if (conditional) {
#           action1;
#           action2;
#           ...
#       }
#
#
#       if (conditional)
#           action1;
#       else if (conditional)
#           action2;
#       else
#           action3;
#     
#             
#       conditional? action1: action2;
#
#
# Examples:
#       awk '{
#           if ($3 == "" || $4 == "" || $5 == "")
#               print "Some score for student",$1,"is missing";
#       }' text.txt
#
# For each line, it checks if the third, fourth or fifth column is empty.
#
#
#
#       awk '{
#           if ($3 >= 35 && $4 >= 35 && $5 >= 35)
#               print $0,"=>","Pass";
#           else
#               print $0,"=>","Fail";
#       }' text.txt
#
# Determines if a student pass or fail based on third, fourth and fifth column
#
#
#
#       awk '{
#           total=$3+$4+$5;
#           avg=total/3;
#           
#           if (avg >= 90) grade="A";
#           else if (avg >= 80) grade = "B";
#           else if (avg >= 70) grade = "C";
#           else grade="D";
#
#           print $0,"=>",grade;
#       }' text.txt
#
# Calculates average mark and find grade based on it



#################################
# 8 - ORS
#################################
#
# ORS is a built-in variable that gets appended to each line that gets output.
# By default, it is a newline character, so every output is contained in their own line
#
# Also, NR is simply the row number 
#
# However, since it is a variable, we can change it.
#
#
#   awk 'ORS=NR%3?",":"\n"' text.txt
#
# If NR is divisible by 3, put newline character after output,
# otherwise, put comma





# Solution
awk '{
    if ($2 == "" || $3 == "" || $4 == "")
        print "Not all scores are available for",$1;
}'

# Better: Check number of fields, you may also use != and pass test cases
awk '{
    if (NF < 4)
        print "Not all scores are available for",$1;
}'