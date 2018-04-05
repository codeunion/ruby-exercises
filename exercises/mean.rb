# Method name: mean
# Input: a list of numbers
# Returns: the MEAN (aka average) of all the numbers in the list
# Prints: Nothing
#
# See: https://www.freemathhelp.com/arithmetic-mean.html
#
# For example,
#   The mean of 5 and 2 is 2.5 since (5 + 2)/2 is 3.5
#   The mean of 5 and 5 is 5.0 since (5 + 5)/2 is 5.0
#   The mean of 10, 20, and 30 is 20.0 since (10 + 20 + 30)/3 is 20.0
#   etc.
#
# Things we'll need:
#   1. A way to calculate the sum of the numbers in the list
#   2. A way to calculate the length of the list
#
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-length

# This is how we require the sum.rb file in the current folder.
# We can now use the "sum" method we defined there as if we defined it here!
require_relative "./sum"

def mean(list)
  total = sum(list) # This is the "sum" method from our sum.rb file
  # result = ____   # Given the list's sum, how can we calculate the average?

  result = (total)/list.count # Divides total by list count and set value to result

  return result # return result
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p mean([64, 10, 21, -69, 33]) == 11
  p mean([44,	-59,	98,	82,	13]) == 35
  p mean([84,	55,	-62,	3,	99]) == 35
  p mean([12,	68,	21,	-86,	80]) == 19
end
