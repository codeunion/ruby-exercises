# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
  longest_so_far = list.first

  list.each do |string|
    if string.length >= longest_so_far.length
      longest_so_far = string
    end
  end

  return longest_so_far
end

if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p longest_string(["a"]) == "a"
  p longest_string(["xyz", "xy", "x"]) == "xyz"
  p longest_string(["xy", "x", "xyz"]) == "xyz"
  p longest_string([""]) == ""
  p longest_string(["bat", "cat", "to"]) == "cat"
  p longest_string(["b", "bat", "to", "cat"]) == "cat"
  p longest_string([]) == nil
end
