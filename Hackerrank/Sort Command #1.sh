
# We can use the 'sort' command to sort the input by various ways possible.
# 
# By using 'sort' alone, it will sort each lines of the file in lexicographical order
#
# Use the -t flag to specify the delimiter in each lines, then use -k flag to specify which field
# to sort in.
#       sort -t '|' -k 4 data.txt
# will sort data.txt by delimiter '|', and on column 4
#
# Use a -r flag to reverse the sorting order
#       sort -rt '|' -k 4 data.txt
#
# Use -n flag to sort by number instead of lexicographically
#       sort -nt '|' -k 2 data.txt
#
# Use -f flag to ignore case
#       sort -ft '|' -k 2 data.txt
#
# To sort by multiple columns, we put a plus sign followed by exclusive column number,
# then a minus sign followed by inclusive column number. 
# Say you put +M -N, then it will sort for M+1 to N column
#       sort -t'|' +2 -4 data.txt    (Will sort by 3rd to 4th column)




sort