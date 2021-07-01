#!/bin/bash


# In shell scripting, we might want to get an overview of how a file looks like.
# This can be done via "head" and "tail" command
#
#   head <filename>                 - View first 10 lines of the file
#   head -n <count> <filename>      - View first n lines of file, specified by count (n can be omitted, just do like -20)
#   head -c <count> <filename>      - View first n characters of file, specified by count
#   head <file1> <file2>...         - View the first 10 lines of the files listed, separated by space
#   head -f <file>                  - Display first 10 lines of the file, and updates whenever file is changed.
#
#   tail <filename>                 - View last 10 lines of the file


head -n 20

# or

head -20