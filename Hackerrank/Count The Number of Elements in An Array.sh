#!/bin/bash

# To obtain the length of an array, simply prefix a '#' when referencing all the array elements


myArray=(`cat`)
echo ${#myArray[@]}