#!/bin/bash

# Reference:
# https://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/

# 'grep' command (Glboal Regular Expression Print) is used to search for a certain pattern in strings
# using regular expressions. Once it has matches, it will output the whole line itself.

# Regular Expressions in Unix is, special. It primarily has two modes: BRE (Basic RE) and ERE (Extended RE), which
# characters may not have special meaning in BRE, but does in ERE
#
#   https://www.gnu.org/software/sed/manual/html_node/BRE-vs-ERE.html

# 1 - Search 
#   To search for pattern, simply pass the pattern to search between quotes "". Like:
#      
#           grep "regex" filename
#
#   If you want to use Extended Regex, use -E flag (Or simply use egrep)
#
#           grep -E "powerfulRegex" filename
#
#   Only literal string search? Use -F flag
#
#           grep -F "literal string" filename


# 2 - Search in Multiple files
#   Simply include meta characters in filename to expand to a list of matched files to search for
#
#           grep "regex" FILE_PATTERN                  (Eg: my_text_*) - match any file starting with name my_text_


# 3 - Case insensitive search
#   Use flag -i for case insensitive
#
#           grep -i "regex" filename


# 4 - Complete word match only 
#   Use flag -w for a complete word match, not substring within a word match
#   A complete word match example is:
#       Regex: "is"
#       Match: "This is a string", "It is me"
#       No Match: "Its his fault", "isis"


# 5 - Looking around the matched lines
#   Upon successful matching, you may also want to see N lines before and after the matching line. Use flags -A, -B and -C
#   for that
#
#   >   -A (After) - Shows N lines after the match too
#               grep -A <N> "regex" filename
#
#   >   -B (Before) - Shows N lines before the match too
#               grep -B <N> "regex" filename
#
#   >   -C - Shows N lines before and after the match
#               grep -C <N> "regex" filename


# 6 - Invert match
#   Maybe you want to see which lines does not match the pattern? Use flag -v
#
#       grep -v "regex" filename


# 7 - Count matches
#   You simply want to know how many lines matched against a particular pattern. Use -c
#
#       grep -c "regex" filename


# 8 - Multiple patterns to match
#   Use -e to combine multiple patterns. (Union of the given pattern's match)
#
#       grep -e "pattern" -e "pattern" filename
#
#   It can be combined with -v to find lines that DOES NOT MATCH ANY OF THE PATTERNS
#
#       grep -v -e "pattern1" -e "pattern2" filename


# Line numbers
#   Use -n to show not only matching lines, but also line numbers
#
#       grep -n "regex" filename



# Reference:
# -H	Add 'filename:' prefix
# -h	Do not add 'filename:' prefix
# -n	Add 'line_no:' prefix
# -l	Show only names of files that match
# -L	Show only names of files that don't match
# -c	Show only count of matching lines
# -o	Show only the matching part of line
# -q	Quiet. Return 0 if PATTERN is found, 1 otherwise
# -v	Select non-matching lines
# -s	Suppress open and read errors
# -r	Recurse
# -i	Ignore case
# -w	Match whole words only
# -x	Match whole lines only
# -F	PATTERN is a literal (not regexp)
# -E	PATTERN is an extended regexp
# -m N	Match up to N times per file
# -A N	Print N lines of trailing context
# -B N	Print N lines of leading context
# -C N	Same as '-A N -B N'
# -e PTRN	Pattern to match
# -f FILE	Read pattern from file



# SOlUTION - Using Combine with -e
# > We want case insensitive property
# > Only match words, no substrings in words
grep -i -w -e "the" -e "that" -e "then" -e "those"



# ANOTHER - Pure Regex
grep -i -w -E "the|that|then|those"