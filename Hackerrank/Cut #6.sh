
#!/bin/bash

# If we want to obtain the substring from nth character until end of line, specify only
# the starting position, and omitting the ending position using hyphen operator for ranges


while read line
do
    echo $line | cut -c 13-
done



# or

cut -c 13-