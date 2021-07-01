
#!/bin/bash

# By default, tab is used as the delimiter if you don't specify the -d flag
# For field selecting, you can do -f1,2,3 or -f1-3
# In echo, we put double quote to preserve the spaces. If we dont, spaces may be interpreted as different arguments
#
# To explicitly specify that we set \t as delimiter, we have to prefix it with the dollar sign, like -d $'\t'


while read line
do
    echo "$line" | cut -d $'\t' -f1,2,3
done


# Another way
cut -f1-3
