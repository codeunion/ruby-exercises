# Method name: print_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest
#
# For example, print_pyramid(4) should print
#
# *
# **
# ***
# ****
# ***
# **
# *
# This is how we require the print-triangle.rb file in the current folder.
# We can now use the "print_triangle" and "print_line" methods we defined
# there — as if we defined them here!
require_relative './print_triangle'
def print_pyramid(height)
  # This is your job. :)
  # Suggestion: you can call print_triangle to print out the first, "upward" half of the pyramid
  # You'll have to write code to print out the second, "downward" half of the pyramid.
  print_triangle(height) #method from ./print_triangle
  (height-1).downto(1) do |i| #learned #downto
    print_line(i) #method from ./print_triangle
  end
  puts
end
if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  print_pyramid(1)
  print_pyramid(2)
  print_pyramid(3)
  print_pyramid(4)
  print_pyramid(5)
  print_pyramid(10)
end
