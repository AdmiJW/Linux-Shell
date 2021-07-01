#!/bin/bash


while read line
do
    echo $line | cut -c 2,7
done



# Or simply do

cut -c 2,7