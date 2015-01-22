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
  print_triangle(height)

  # countdown = (height - 1)

  # countdown.times do             # I have no idea if this is a really convoluted way of accomplishing this.
  #   if countdown > 0             # This is the only way I can write this code and conceptualize.
  #     print_line(countdown)      # Is there a better way?
  #     countdown -= 1
  #   end
  # end

  countdown = height                # Refactored using downto!

  countdown.downto(0) do |n|
    print_line(n)
  end


end

if __FILE__ == $0
  print_pyramid(5)
  print "\n\n\n"
  print_pyramid(10)
end
