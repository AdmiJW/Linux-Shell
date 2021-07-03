
# The default delimiter in Linux is tab
# Use the -t flag to specify delimiter, and -k flag to specify which field to use in sorting.
#   Multiple fields can be used
# Again, -r flag to reverse the sorting order
# Don't forget, we are sorting by numerical value, so -n is required
#
# Delimiter has to be specified as $'\t' to show it as correct ASCII, instead of treated as pure backslash and a 't'


sort -nrt $'\t' -k2