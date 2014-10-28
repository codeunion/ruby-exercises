# Method name: commas
# Inputs:      A number, n
# Returns:     A string representing the input, with commas inserted into the
#              correct position.
# Prints:      Nothing

# For example,
#
#  commas(123)     == "123"
#  commas(1234)    == "1,234"
#  commas(12345)   == "12,345"
#  commas(1234567) == "1,234,567"

# Note #1
# If it's too much, don't worry about handling negative numbers at first.

# Note #2
# As always, focus first on how you would do this *as a human*. Imagine you
# has a piece of paper with a comma-less number on it.  How would you decide to
# insert the commas?  Which comma would you insert first?

def commas(num)
end

if __FILE__ == $0
  # What are the common cases?  What are the corner cases?
  # Your sanity checks should look like
  #   p commas(input) == ...expected return value...
end

# Hint #1
# Use .to_s to convert a number to a string.  That is,
#
#  5.to_s   == "5"
#  100.to_s == "100"
