#!/bin/bash

# To delete characters, simply use -d flag
# The argument is not restricted to only string of characters, but also ranges like [0-9] or [a-z]
# or even POSIX character classes like [:digit:] or [:lower:]

tr -d [a-z]

# or

tr -d [:lower:]