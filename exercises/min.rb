# Method name: min
# Input: a list of numbers
# Returns: the SMALLEST number in the list
# Prints: Nothing
#
# In English, the "min" method takes as input a list of numbers and
# returns the SMALLEST number in that list.

# Your job here is to fill in the ______.  Be deliberate, don't just guess!
# The number of spaces (____) is meaningless; it's not as if four blank spots
# means you need to replace it with a 4-character chunk of Ruby.

# This is going to be very similar to max, so don't be afraid if
# these two methods look almost identical
def min(list)
  ____ = ____
  ____.each do |____|
    if ____
      ____ = ____
    end
  end

  return ____
end

if __FILE__ == $0
  # "p" prints something to the screen in a way that's better for debugging

  p min([1,2,3]) == 1
  p min([0, -100, 50, -200]) == -200
  p min([-200, -400, -100, -300]) == -400
  p min([0]) == 0
  p min([1]) == 1
  p min([-1]) == -1
  p min([11,11,11]) == 11
  p min([-22,-11,-22]) == -22
end

# Each of the lines above will print out "true" or "false"
# and collectively act as a sanity check.
#
# Think of these like rumble strips on the side of the road.  They're here
# to tell you when you're veering off the road, not to guarantee you're
# driving phenomenally. :)
