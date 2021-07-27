
# The problem asks us to determine whether the credit card numbers have 2 consecutive numbers,
# which may be in different segments (separated by space).
# We may simply check for pattern of 00, 11, 22... But that is too lengthy, and we are better off using
# capturing group instead


# Brute force solution
grep -e "00" -e "11" -e "22" -e "33" -e "44" -e "55" -e "66" -e "77" -e "88" -e "99" -e "0 0" -e "1 1" -e "2 2" -e "3 3" -e "4 4" -e "5 5" -e "6 6" -e "7 7" -e "8 8" -e "9 9"
    
# Better brute force
grep -E "00|11|22|33|44|55|66|77|88|99|0 0|1 1|2 2|3 3|4 4|5 5|6 6|7 7|8 8|9 9"

# Turns out, in Unix BRE, the brackets has to be escaped to convey it is not literal bracket. 
# So to have capturing groups, we need \( and \)
grep "\([0-9]\) \?\1"