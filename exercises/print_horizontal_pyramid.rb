# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall
#         at its tallest
#
# For example, print_horizontal_pyramid(4) should print
#
#    *
#   ***
#  *****
# # *******
# def asterisks(count)
#   count.upto(2 * 1-i ) do
#     print "*"
#
#   end
# end

# def spaces(space)
#   space.downto(1) do |s|
#     print "*"
#
#   end
# end

def print_horizontal_pyramid(height)
  height.times {|n|
    print ' ' * (height - n)
    puts '*' * (2 * n + 1)
  }
end

if __FILE__ == $PROGRAM_NAME
  print_horizontal_pyramid(5)
end
