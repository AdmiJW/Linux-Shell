#!/bin/bash

# We would use a for loop here to read each integer
read N
sum=0
for ((i=0;i<N;++i))
do 
    read number
    sum=$((sum + number))
done

printf "%.3f", $(bc -l <<< "$sum/$N")



# Perhaaps use awk?
# Note that the first element shall not be included
awk 'BEGIN { count=0; sum=0; }
     { sum+=$0; count+=1; }
     END { printf "%.3f", (sum - count + 1)/(count-1) }'