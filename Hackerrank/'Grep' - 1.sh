
# Use 'grep' to output the lines that contain the pattern specified, in this case, 'the' word
# However, it must be a full word and not that of substring, like 'these' does not count
# For that, use -w flag

grep -w 'the'

# Alternative: Specify word boundaries using \< and \>

grep "\<the\>"