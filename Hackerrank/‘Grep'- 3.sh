#!/bin/bash

# To invert matches, use the -v flag
# To ignore case, use -i flag
# To match words, use -w flag or use word boundary in regex

grep -ivw "that"

# Use word boundary instead of -w

grep -iv "\<that\>"