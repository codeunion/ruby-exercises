# Method name: count_max
# Inputs:      A list of numbers
# Returns:     The number of times the largest number in the list
#              appears in the list
# Prints:      Nothing
#
# For example,
#   count_max([10, 1,2,10,10]) == 3
# because "10" is the largest number in the list and it occurs 3 times

# This is how we require the max.rb and count_in_list.rb files in the current
# folder. We can now use the "max" and "count_in_list" methods we defined there
# -- as if we had defined them right here!

require_relative "./max"
require_relative "./count_in_list"

def count_max(list)
  # You can write this using nothing more than the max and count_in_list
  # methods that you've already written.  You do not HAVE to, but it's worth
  # trying. The "require_relative" statements above make them available to us.
  #
  # But remember: inelegant, working code is better than elegant,
  # unfinished code.
  item = max(list) # Sets item to the maximum number in the list

  list.each do |num| # For each num in the list do
    maxcount = count_in_list(list, item) # Sets citem equal to the count of item
    return maxcount # returns the count
  end

end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p count_max([1, 2, 3]) == 1
  p count_max([50, -100, 50, -200]) == 2
  p count_max([-200, -400, -100, -300]) == 1
  p count_max([10, 1,2,10,10]) == 3
end
