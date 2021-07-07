
#!/bin/bash


# Linux comes with a 'uniq' command that is mainly used to remove duplicated occurrences of lines. However,
# it has other flags that changes the behavior of the command to better suit our needs. Let's see:
#
# By using pure 'uniq', it removes DUPLICATE LINES (Exact same) in SUCCESSIVE LINES. That means like:
#       a
#       b
#       a
# Won't remove the second 'a', because it is not in successive line. Therefore to achieve what we want,
# we may want to pipe it after sorting the lines:
#       sort | uniq
#
# Now let's see the availabe flags:
#       -c      will construct a frequency table after eliminating repetitive lines. 
#       -d      will show only lines that have duplicates. Those unique values (occur once) will not show up
#       -dc     count duplicate lines. Due to this, frequency of 1 will not show up
#       -u      show unique lines only. 
#       -uc     count unique lines
#       -w      compare only first N chars
#       -s      avoid comparing first N chars
#       -i      case insensitive
#       -f      avoid first N fields


uniq