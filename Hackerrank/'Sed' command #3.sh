#!/bin/bash

# We have to enclose all 'thy' (case insensitive) occurrences with curly brackets. 
# Use 'sed' command for that

# Use & to reference the match
# Alternatively, if our pattern contains capturing groups, we can use \1, \2...

# Extra: If we want to ensure that 'thy' is selected as individual words and not substring of a word,
#        use word boundaries around it, like \b or \< \>

sed 's/thy/{&}/gi'


# Alternative using capturing group

sed 's/\(thy\)/{\1}/gi'