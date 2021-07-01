# Reference: https://www.thegeekstuff.com/2012/12/linux-tr-command/
#
# Linux shell have a command 'tr', which stands for translate
#
# 'tr' command is particularly useful for translating, deleting
# or squeezing repeated characters.
#
# Syntax:
#        tr [OPTION] SET1 [SET2]
#
# > Translation
#       Done by omitting [OPTION] and specify [SET2]. What it does
#       is to replace each characters in SET1 with each character with same
#       position in SET2
#
#       Eg: echo "Hello World" | tr "lo" "ra"
#           >> Herra Warrd
#
#       One particularly useful case is to translate uppercase to lowercase and vice versa
#       We can specify to convert white spaces to tabs using [:space:] as SET1 and '\t' as SET2
#       
#
# > Sqeezing
#       Use -s flag to treat repetition of characters as one occurrence.
#       
#       Eg: echo "Hello World" | tr -s "l" "r"
#              >> Hero Worrd
#
#       This is useful when say we want to eliminate multiple white spaces
#       by chaning them into one single space
#
# > Deleting
#       Specific characters can be removed using -d option
#
#       Eg: echo "Hello World" | tr -d "l"
#           >>  Heo Word
#
# > Complementing
#       The SET1 can be complemented using -c option. Say we select digits using
#       [:digit:], then -cd [:digit:] will select those who are non digit
#
#       Eg: echo "Username12345" | tr -cd [:digit:]
#           >>  12345



tr "()" "[]"