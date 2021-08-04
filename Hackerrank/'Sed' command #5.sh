#!/bin/bash


# We have to reverse the groups in credit card numbers. We will use capturing group for that

sed 's/\([0-9]\+\) \([0-9]\+\) \([0-9]\+\) \([0-9]\+\)/\4 \3 \2 \1/g'