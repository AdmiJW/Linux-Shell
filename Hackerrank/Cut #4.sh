
#!/bin/bash

# As in previous 3 similar problems, we use cut command to perform a lot of
# string operations. For example, cutting out portions of string (substring) using -c flag or 
# split string based on delimiter -d and -f flag.
#
# We can cut characters by range, thus essentially giving us a substring.
# For example,
#       cut -c1-6 file.txt
# For each line in file.txt, it will cut out the first character until 6th one
#
# We might also cut from the start, or cut until very end. In these cases, we omit the starting/ending
# index
#
#       cut -c-6 file.txt
# Will cut from first character until 6th
#
#       cut -c10- file.txt
# will cut from 10th character until the end
#
#       cut -c- file.txt
# will cut entire line.


while read line
do
    echo $line | cut -c-4
done

# or

cut -c-4