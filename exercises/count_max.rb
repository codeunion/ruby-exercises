# Method name: count_max
# Inputs:      A list of numbers
# Returns:     The number of times the largest number in the list
#              appears in the list
# Prints:      Nothing
#
# For example,
#   count_max([10, 1,2,10,10]) == 3
# because "10" is the largest number in the list and it occurs 3 times

# This is how we require the max.rb and count_in_list.rb files in the current folder.
# We can now use the "max" and "count_in_list" methods we defined there — justs
# as if we had defined them here!

require_relative './max'
require_relative './count_in_list'

def count_max(list)
  # You can write this using nothing more than the max and count_in_list
  # methods that you've already written.  You do not HAVE to, but it's worth
  # trying. The "requite_relative" statements above make them available to us, here.
  #
  # But remember: inelegant, working code is better than elegant, unfinished code.


  # OPTION 1 USING COUNT_IN_LIST AND MAX METHODS

  number_of_times = count_in_list(list, max(list))

  # OPTION 2 MANUALLY LOOPING THROUGH LIST

  num = list.first
  max_count = 0

  list.each do |x|    # Finds the largest number in the list
    if x > num
      num = x
    end
  end

  list.each do |x|    # Finds the amount of times the largest number is in the list
    if x == num
      max_count += 1  # Adds 1 to the count each time it finds the largets number
    end
  end

  return number_of_times
  # return max_count

end

if __FILE__ == $0
  p count_max([10, 1,2,10,10]) == 3
  p count_max([100, 20, 1, 1, 1, 300, 2, 300]) == 2
end
