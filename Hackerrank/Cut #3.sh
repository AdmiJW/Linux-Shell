

#!/bin/bash

while read line
do 
    echo $line | cut -c 2-7
done


# or
cut -c 2-7