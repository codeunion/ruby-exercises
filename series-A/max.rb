# Method name: max
# Input: a list of numbers
# Returns: the largest number in the list
# Prints: Nothing
#
# In English, the "max" method takes as input a list of numbers and
# returns the largest number in that list.

# Note: This exercise is "complete."
# This is meant to give you a starting point and also illustrate what we're looking for.
# There is ***NO NEED*** to comment line-by-line, although it can't hurt.
# It's not common in everyday, professional Ruby, but here we're in a learning environment.

def max(list)
  max_so_far = list.first  # or, equivalently, list[0]
  list.each do |item|      # or, equivalently, for item in list
    if item > max_so_far   # if current item is greater than max so far
      max_so_far = item    #   set max so far to current item
    end
  end

  return max_so_far        # we've gone through entire list, return max so far
end


# This "if" statement will be gobblededook, but it means:
#   "If this file is the file currently being executed, then..."
#
# __FILE__ is always the name of the current file.
# $0 is always the name of the program beind executed.
#
# This means that if we run this file directly, i.e.,
#     ruby max.rb
# then everything below will be executed.
#
# If, however, we include this file in another Ruby program via
#     require 'max'
# then the below will *not* be executed

if __FILE__ == $0
  # "p" prints something to the screen in a way that's better for debugging

  p max([1,2,3]) == 3
  p max([0, -100, 50, -200]) == 50
  p max([-200, -400, -100, -300]) == -100
  p max([0]) == 0
  p max([1]) == 1
  p max([-1]) == -1
  p max([11,11,11]) == 11
  p max([-22,-11,-22]) == -11
end

# Each of the lines above will print out "true" or "false" and collectively
# act as a sanity check.  Remember that conceptually "x == y"
# means "are x and y equal?"
#
# That is, when you run the code, if any lines print out "false"
# then you know something is off in your code.
#
# This does *not* mean that your code is perfect if each line
# prints out "true.""  For example,
#   1. We might have missed a corner case
#   2. The code does what it should, but is conceptually confused
#   3. Something else we haven't though of
#
# Remember: Option #3 is *always* possible.
#
# Think of these like rumble strips on the side of the road.  They're here
# to tell you when you're veering off the road, not to guarantee you're
# driving phenomenally. :)
