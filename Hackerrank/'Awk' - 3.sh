#!/bin/bash

# If average is >= 80, get 'A'
# If average is >= 60, get 'B'
# If average is >= 50, get 'C'
# Else, grade is 'FAIL'


awk '{
grade;
average = ($2 + $3 + $4 ) / 3;
if ( average >= 80) grade = "A";
else if ( average >= 60) grade = "B";
else if ( average >= 50) grade = "C";
else grade = "FAIL";

print $0, ":", grade
}'


# Of course, you could also use ternary operators
awk '{
average = ($2 + $3 + $4 ) / 3;

print $0, ":", (average >= 80)? "A": (average >= 60)? "B": (average >= 50)? "C": "FAIL";
}'