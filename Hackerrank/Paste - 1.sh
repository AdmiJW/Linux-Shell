
# Here we introduce new command 'paste'
#
#
# In 'paste' command, the most direct usage is use with 1 or 2 files
# 
#   -s      Stands for serial. To concatenate every line into one line
#   -d      To specify delimiters between each field. Can be multiple characters and it will be used sequentially
#
# Eg:      
#       paste -s text1.txt
#       paste -s -d: text1.txt
#
# Say we want to read the input file and combine each line into several columns, we can do like:
#
#       paste - - < text1.txt         (one row consist of 2 columns)
#
# For use with two files, each line in the text files will be joined together. Like line1 from txt1 will join with line1 of txt2
# The result is two columns, where each row consist of a line in txt1 and txt2
#
#       paste text1.txt text2.txt
#
# We can convert them into spreadsheet like format, use '-' for that

paste -s -d";"



# Alternative: Use tr to replace \n with a ;, then use head -c -1 to delete the semicolon on last line
tr "\n" ";" | head -c -1