
#!/bin/bash

# As mentioned before, use -d flag to specify delimiter (Default is tab), and use -f to
# select column/field


while read line
do
    echo $line | cut -d " " -f 4
done

# or

cut -d " " -f 4