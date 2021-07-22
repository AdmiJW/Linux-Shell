#!/bin/bash

# To concatenate an array with itself, we simply create an new array with all elements included.

myArray=(`cat`)
concatenatedArray=(${myArray[@]} ${myArray[@]} ${myArray[@]})

echo ${concatenatedArray[@]}