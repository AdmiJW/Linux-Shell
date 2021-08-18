#!/bin/bash

# For this problem, we have to search for lines that contain the word 'the', but not substrings like 'these'.
# Also, it must be case insensitive, use -i flag for that (or use -w flag)

# Using -w flag
grep -iw 'the'


# Remember word boundaries \< and |> (or use \b)
grep -i '\<the\>'