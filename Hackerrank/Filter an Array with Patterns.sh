
#!/bin/bash

# To filter array in bash with patterns, we first reference to the array, then give our pattern like:
#       myArray[@]/myPattern/


myArray=(`cat`)
echo ${myArray[@]/*[aA]*/}