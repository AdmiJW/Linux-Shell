
# We have to do an global case insensitive search on 'thy' and replace with 'your'
# Use /g flag for global search
# Use /i flag for case insensitive


# Straightforward solution, but not practical and prone to error
sed "s/thy/your/gi"

# The correct solution, where we use \b to see for word boundaries
sed "s/\bthy\b/your/gi"