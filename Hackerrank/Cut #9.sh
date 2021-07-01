#!/bin/bash


# From second field to last field, sounds like a range of "2-" right? Remember if
# the range right limit is omitted, it is essentially until the end.

# REMEMBER: Put a double quote to enclose the variable. Since we outputting a range of
# tokens, it interprets them as separate arguments.

while read line
do
    echo "$line" | cut -f 2-
done

# or
cut -f 2-