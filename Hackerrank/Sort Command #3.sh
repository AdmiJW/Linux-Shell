#!/bin/bash

# We use -n flag in sort command to sort by numerically.
# Our file may be column separated, like in csv using commas. We combine using -t flag (delimiter) and -k (field) to sort
# by specific numerical column

sort -n