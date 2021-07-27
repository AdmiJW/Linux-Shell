
# Instead of filtering arrays using operator /, we can use it to replace array elements, or even just PARTS of the element.
# Convert all the uppercase to .

myArray=(`cat`)
echo ${myArray[@]/[A-Z]/.}


# Or

myArray=(`cat`)
echo ${myArray[@]/[[:upper:]]/.}