# Method name: pad_array
# Inputs:      An array, a minimum size, and a padding element
# Returns:     An array which has been padded with the padding element
#              if the array is smaller than the minimum size
# Prints:      Nothing

# For example,
#
#  pad_array([1,2,3], 5, "waffles") == [1,2,3,"waffles","waffles"]
#  pad_array([1,2,3], 4, "waffles") == [1,2,3,"waffles"]
#  pad_array([1,2,3], 3, "waffles") == [1,2,3]

# Note #1
# Remember, use Array#push if you want to append something to an array
# http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-push
#
# It works like this:
#
#  array = [1,2,3]
#  array.push("waffles")
#  array == [1,2,3,"waffles"]

def pad_array(array, min_size, pad_with)
end

if __FILE__ == $0
  # Here are some sanity checks written in "plain English".
  # See if you can translate them into Ruby. Your checks should look like
  #
  #   p pad_array(input) == ...expected return value...

  # If min_size is 0
  #  then pad_array should always return the input array

  # If min_size is less than the size of the input array
  #  then pad_array should always return the input array

  # If min_size equals the size of the input array
  #   then pad_array should always return the input array

  # If min_size is 1 greater than the size of the input array
  #  then pad_array should add a single item to the end of the input array
end
