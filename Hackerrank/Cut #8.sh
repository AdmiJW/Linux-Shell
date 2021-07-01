
# Use ' ' as delimiter, and use -f to select the first three fields

while read line
do 
    echo $line | cut -d " " -f1,2,3
done


# or

cut -d " " -f1,2,3


# or use range, -f 1-3

cut -d " " -f 1-3