
# To count consecutive repetitions, we use 'uniq' command with the -c flag to indicate counting frequencies
#
# However, the problem wants us to remove the leading spaces given by the 'uniq -c' command. To achieve that we
# may pipe the output to the 'cut' command we learnt earlier, and remove the first 6 spaces by selecting only
# from 7th character onwards


uniq -c | cut -c7-