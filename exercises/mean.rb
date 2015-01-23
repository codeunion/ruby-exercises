# Method name: mean
# Input: a list of numbers
# Returns: the MEAN (aka average) of all the numbers in the list
# Prints: Nothing
#
# See: https://www.freemathhelp.com/arithmetic-mean.html
#
# For example,
#   The mean of 5 and 2 is 2.5 since (5 + 2)/2 is 2.5
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
require_relative './sum'
def mean(list)
  if list.length == 0
    print "List is empty: "
    return 0
  elsif sum(list) == 0
    print "Sum of list is 0. I can't divide by 0: "
    return 0
  else
    sum(list)/list.length
  end
end
if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p mean([10, 10, 10, 10]) == 10
  p mean([-1]) == -1
  p mean([-1, -1, -2, -4]) == -2
  p mean([1.5, 1.5, 2.5, 3.75]) == 2.3125
  p mean([0]) == 0 # Can't divide by zero - added handler
  p mean([]) == 0 # Can't handle empy array - added handler
end
