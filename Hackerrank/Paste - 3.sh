
# We have to concatenate each line into one line, delimited by tab characters
# Note that we can get away without using -d, because default delimiter is already tab character

paste -s -d$"\t"                

# or turns out, we can use tr (transform) to replace all newline with tab

tr "\n" "\t"