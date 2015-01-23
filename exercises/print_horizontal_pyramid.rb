# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest
#
# For example, print_horizontal_pyramid(4) should print
#
#    *
#   ***
#  *****
# *******
# Need:
# 1. something to loop through height times.
# 2. something to hold the str of *
# 3. something to increment the str of * making it longer **
# 4. something to center the str on *  maybe .center method
# 5. something to find the width of each level.
def print_horizontal_pyramid(height)
bricks = 1 #start first level with 1 brick
level_width=(height*2)-1
(1..height).each do |i|
    level = "*" * bricks #build the level of the pyramid
    puts level.center(level_width) #pyramid width is always (2*height)-1
    bricks += 2 #build next level and keep the number of * odd.
  end
  puts
end
if __FILE__ == $0
  print_horizontal_pyramid(5)
  print_horizontal_pyramid(6)
  print_horizontal_pyramid(7)
  print_horizontal_pyramid(8)
end