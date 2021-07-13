#!/bin/bash


# To combine N lines into single one with paste command, we use '-' (dashes) to do the job
#
# Specify delimiter as semicolon ;, then put however many dashes needed (3) to specify that many columns


paste -d";" - - -