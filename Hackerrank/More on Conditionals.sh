

#!/bin/bash



# Direct translation solution
read X
read Y
read Z
if [[ $X == $Y && $Y == $Z ]]
then
    echo "EQUILATERAL"
elif [[ $X == $Y || $Y == $Z || $X == $Z ]]
then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi


# To prevent the Isosceles checking, make it in else
read X
read Y
read Z
if [ $X -eq $Y ] && [ $Y -eq $Z ]; then
    echo "EQUILATERAL"
elif [ $X -ne $Y ] && [ $Y -ne $Z ]; then
    echo "SCALENE"
else
    echo "ISOSCELES"
fi


# Shorthand. Note that a bracket, () creates a subshell (Another bash instance environment), which allow us to
# evaluate some expression and return
read X
read Y
read Z
( [ $X == $Y ] && [ $Y == $Z ] && echo "EQUILATERAL" ) || ( [ $X != $Y ] && [ $Y != $Z ] && echo "SCALENE" ) || echo "ISOSCELES"