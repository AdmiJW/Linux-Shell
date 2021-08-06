
# We have to check that all of the 3 marks are above or equal to 50. In that case, the student passed

awk '{
    if ($2 >= 50 && $3 >= 50 && $4 >= 50)
        print $1,": Pass"
    else
        print $1,": Fail"
}'


# Using Ternary operator
awk '{ print $1,":", ($2 >= 50 && $3 >= 50 && $4 >= 50)? "Pass" : "Fail" }'


# If we don't know the number of marks
awk '{
    pass = 1
    for (i=2; i<=NF; i++) {
        pass = pass && ($i > 50)
    }; 
    if (pass) {
        print $1" : Pass"
    } else {
        print $1" : Fail"
    }
}'