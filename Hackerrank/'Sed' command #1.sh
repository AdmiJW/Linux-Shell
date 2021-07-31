#!/bin/bash]

# Reference:
# https://www.folkstalk.com/2012/01/sed-command-in-unix-examples.html

# Alongside 'grep' command that we learnt to search if a line has certain pattern in it,
# 'sed' (Stream editor) is another useful command commonly used to replace certain patterns with another

# 1 - Replacing or Substituting strings
#   To replace strings, simply use as format below:
#   Note that IT ONLY REPLACES FIRST OCCURRENCE IN A LINE BY DEFAULT.
#
#       sed 's/original/replaced' <filename>
#
#   The first 's' specifies the substitution operation, '/' are delimiters
#   Note that because / is used as delimiter, if our pattern consist of /, escape it like \/


# 2 - Replacing nth occurrence.
#   Use /1, /2 etc flags to only replace the nth occurrence of a pattern in a line
#
#       sed 's/original/replaced/2' <filename>
#
#   In above, the operation will only replace the second occurrence


# 3 - Replacing all occurrence in a line and Case Insensitivity
#   The substitute flag /g is used to specify replacing all the occurrences
#   The substitute flag /i is used to specify case insensitivity search
#
#       sed 's/original/replaced/g' <filename>


# 4 - Replace starting from nth occurrence onwards
#   Combine /1, /2... with the /g flag to replace all occurrences starting from nth occurrence
#
#       sed 's/original/replaced/3g' <filename>
#
#   In example, it replaces the 3rd, 4th, 5th etc occurrences.


# 5 - Changing delimiter from /
#   We are using slash / as our delimiter. The truth is we can easily use another delimiter
#
#       sed 's|http://|www|' <filename>
#       sed 's_http://_www_' <filename>


# 6 - Use & as the matched string
#   In the replacement string, we can use & to represent the matched string itself.
#   This allows us to "decorate" the matched string with additional characters
#
#       sed 's/original/(&)/' <filename>
#
#   The example will enclose the matched substring with brackets


# 7 - \1, \2 from capturing groups
#   The capturing groups in the original regex can be referred with \1 \2 etc.
#
#       sed 's/\(original\)/\1\1/' <filename>
#
#   The example captures the matching string, and repeat it twice


# 8 - /p to print
#   To print the replaced line twice, specify the /p flag
#   Any lines that are not replaced will only be printed once
#   To only print replaced lines ONCE and don't print non-replaced lines, specify -n flag
#
#       sed 's/original/replaced/p' <filename>
#       sed -n 's/original/replaced/p' <filename>


# 9 - Running multiple sed commands
#   We can choose to pipe the output of one sed command to another.
#   Additionally, use -e flag to specify multiple sed commands through only one sed command
#
#       sed 's/original/replaced/' <filename> | sed 's/original2/replaced2/'
#       sed -e 's/original/replaced/' -e 's/original2/replaced2/' <filename>


# 10 - Choosing lines to replace
#   Inside the command before the actual part, we can specify range of line numbers to replace. See:
#
#       sed '3 s/original/replaced/' <filename>             - Replaces only line 3
#       sed '1,3 s/original/replaced/' <filename>           - Replaces line 1 to 3
#       sed '2,$ s/original/replaced/' <filename>           - Replaces line 2 to end


# 11 - Replace lines which match a pattern
#   We can specify a pattern to match a line before proceeding to replace it.
#
#       sed '/pattern/ s/original/replaced/' <filename>     - Check if a line satisfy /pattern/ before replacing


# 12 - Use d for deleting lines
#   Give a range of line numbers, use d to delete lines
#
#       sed '2 d' <filename>                - Delete second line
#       sed '2,$ d' <filename               - Delete from line 2 until end


# 13 - New line before / after a match
#   Use 'a' command in se to tell it add a new line after match
#   Use 'i' command in se to tell it add a new line before match
#
#       sed '/pattern/ a Yournewline' <filename>
#       sed '/pattern/ i Yournewline' <filename>


# 14 - Replacing a line entirely
#   Use 'c' to change the line entirely
#
#       sed '/pattern/ c Yournewline' <filename>



# Working solution, but not practical
sed 's/ the / this /'

# Best solution, where \< and \> represents word boundary
# As alternative, you may use \b
sed 's/\<the\>/this/'