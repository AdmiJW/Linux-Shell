#!/bin/bash


# Like most programming languages, bash also have arrays for us to perform operations on multiple data using one variable
#
# 1. Declaring Array and Assigning Values
#   In Bash, array is created when variable is used in format like:
#
#       name[index]=value
#
#   To access its element, we shall use it inside the curly brackets, like
#
#       echo ${myArray[1]}
#
#
# 2. Initializing an array
#   Instead of initializing each element using above format separately, we can declare using 'declare' keyword,
#   where array can be initialized with a list of white space separated elements.
#   Remember if an element has white space as well, enclose in quotes
#
#       declare -a arrayname=(elem1 elem2 elem3)
#
#       declare -a unixTypes=('Debian' 'Red hat' 'Red hat' 'Suse' 'Fedora')
#
#   Or instead, we use shorthand by declaring an variable, and list all elements inside regular brackets (Recommended)
#
#       myArray=('A' 'B' 'C')
#
#
# 3. Printing whole array
#   Inside the square brackets [], if we put @ or * as index, it references all members, thus allowing us
#   to print everything inside.
#   Otherwise, you can also use traditional loops.
#
#       echo ${unixTypes[@]}
#
#       >   Debian Red hat Red hat Suse Fedora
#
#
#       for i in {0..4}
#       do
#           echo ${unixTypes[$i]}
#       done
#
#   The [@] or [*] indexing operator references whole array. We can use this to copy another array
#
#       myArray=('A' 'B' 'C')
#       copyArr=(${myArray[@]})
#
#       
#           
#
#
# 4. Length of array
#   To obtain length of array, we use operator #. Its behavior is different depend on how we use them:
#
#       >   echo ${#myArray[@]}                 - Length of array
#       >   echo ${#myArray}                    - Length of first element of array
#       >   echo ${#myArray[n]}                 - Length of nth element in array
#
#
# 5. Extration of elements
#   To extract subarray from an array, we can use : operator. First, reference the whole array, then put ":offset:length".
#   As follows:
#
#       >   echo ${myArray[@]:3:2}              - Extracts from element at 3rd index (4th elem) onwards, length of 2 elements
#
#   Similarly, elements itself can also be extracted, since string in a sense are also array of characters.
#
#       >   echo ${myArray[2]:3:4}              - Extracts from the fourth character (idx 3) in third element (idx 2), length 4 characters.
#
#
# 6. Selecting and Replacing Array elements
#   To filter only elements with certain patterns, use / operator
#
#       >   echo ${myArray[@]/*[aA]*/}          - Reduce to only contain elements with pattern /*[aA]*/
#
#   We can replace certain array elements with another using / operator. Like:
#
#       >   echo ${unixTypes[@]/Debian/Red hat} - Replaces all occurrences of 'Debian' with 'Red hat'
#
#
# 7. Append elements to array
#   Once an array is created, we can extend it by first referencing all the existing elements, followed by new elements
#   separated by white space in bracket
#
#       >   declare -a myArray=('A' 'B' 'C')
#           myArray=(myArray[@] 'D' 'E')
#           echo ${myArray[@]}
#
#   We could also use += operator
#
#       >   myArray+=('D' 'E')
#
#   Similar technique can be used for concatenating two arrays.
#
#       >   twoArray=(${myArray1[@]} ${myArray2[@]})
#
#
# 8. Removing element from array
#   In bash, we can 'soft' remove an element by using 'unset' operator. What this does is replacing the value with a null,
#   but it does not remove the element entirely from the array.
#
#       >   unset myArray[2]
#           echo ${myArray[2]}
#
#   To remove array entirely, use unset on array name itself
#
#       >   unset myArray
#
#   To entirely remove, we actually construct a brand new array with the element to be deleted excluded. This can be done
#   by creating an array with 2 subarray as follows (Eg: to remove 3rd element)
#
#       >   myArray=(${myArray[@]:0:2} ${myArray[@]:3})
#
#   It also turns out we can remove array elements using patterns:
#
#       >   echo ${unixTypes[@]/Red*/}          -Remove all elements that match the pattern "Red*"
#
#
# 9. Contents of file into Array
#   Contents of a file can be used to create an array. This is done via 'cat' command inside array initialization:
#   (CAREFUL! IT IS NOT LINE SEPARATED, BUT WHITESPACE SEPARATED)
#
#       >   fileContent=(`cat "logfile.txt"`)
#           echo ${fileContent[@]}
#
#   or even, we could use in-built < command, to insert from file:
#
#       >   fileContent=(`< "logfile.txt"`)



countriesArr=(`cat`)
echo ${countriesArr[@]}


# or
countriesArr=($(cat))
echo ${countriesArr[@]}

# or 

i=0
while read line
do
    array[$i]=$line
    i=$i+1                  # or use ((i=i+1)) or even ((i++))
done

echo ${array[@]}