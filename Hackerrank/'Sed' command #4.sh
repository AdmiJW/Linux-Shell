#!/bin/bash

# To mask the first 3 groups of the credit card number and only show the remaining last group,
# we can use sed


# Every group of 4 digits is followed by a space, EXCEPT LAST GROUP. We could exploit this fact to select
# only the first 3 groups.
sed 's/[0-9]\{4\} /**** /g'


# Full Match Solution
sed 's/[0-9]\{4\} [0-9]\{4\} [0-9]\{4\} \([0-9]\{4\}\)/**** **** **** \1/'

# Compress Solution above
sed 's/\([0-9]\{4\} \)\{3\}\([0-9]\{4\}\)/**** **** **** \2/'