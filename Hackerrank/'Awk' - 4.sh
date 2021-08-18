#!/bin/bash

# We have to concatenate two lines into one separated by ;. See how we could do that:


# Recall that ORS variable in awk means the delimiter between lines.
# Therefore, we could use NR(row number) to check if it is an odd or even row.
# If odd, delimiter is ;. Otherwise, delimiter is newline
awk 'ORS=NR%2?";":"\n"'


# A more traditional way of doing
awk '{
    if (NR%2) printf "%s;", $0;
    else print $0;
}'


# Turns out, concatenating lines is better fit for 'paste' command's job
paste -d';' - -