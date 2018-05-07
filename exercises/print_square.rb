# Method name: print_square
# Input: a number n
# Returns: Nothing
# Prints: an n-by-n grid of *'s
#
# Note, this PRINTS a square, it does not RETURN a square.  For example,
# print_square(3) should print this to the screen:
#
# ***
# ***
# ***
#

# The print_line method is here to help you.
# Conceptually, it prints out a row of "count" *'s.  Run it yourself to
# see how it works.  Experiment with xRails params explained?different inputs.
def print_line(count)
  (1..count).each do |i| # or, equivalently, for i in (1..count)
    print "*"            # This prints a single "*"
  end

  #print "\n"   # This forces the output to the next line, like hitting "return"
end

# We can call methods we've defined ourselves.  In this case, we want
# to call the print_line method we've defined to help us print out a square.
def print_square(dimension)

  (1..dimension).each do |i| # or, equivalently, for i in (1..dimension)
    print_line(dimension)         # Recursion. Kind of. I called the print_line method on the print_square method using the print_square arguement. I don't know what its called. It just works ;).
    print "\n"
  end

end

# There are no rumble strips this time.  It's up to you to decide whether
# this is working as intended or not.

if __FILE__ == $PROGRAM_NAME
  print_square(1)

  print "\n\n\n" # This is here to make the separation between squares clearer

  print_square(2)

  print "\n\n\n" # This is here to make the separation between squares clearer

  print_square(3)

  print "\n\n\n" # This is here to make the separation between squares clearer

  print_square(10)
end
