
# Use -c flag to indicate that we want to count repetitions 
# Use -i flag for case insensitive.
# Then, since output is prefixed with 6 spaces, we extract from 7th character onwards

uniq -ci | cut -c7-