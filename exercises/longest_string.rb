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
  my_long_str = list[0] # assigns a varible to the first array index
  list.each do |str| # for each str in list
    if str.length > my_long_str.length # if the lengthof current str is greater than my_long_str
      my_long_str = str # set str to my_long_str
    end
  end
  return my_long_str
end

# A far better and shorter solution (on StackOverflow) is my_long_str = list.max_by(&:length)
# But I will stick with my own homegrown solution


if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?

  p longest_string(["We", "might", "have", "missed", "a", "corner", "case"]) == "missed"
  p longest_string(["Remember", "that", "conceptually", "x"]) == "conceptually"

  p longest_string([123456789, "might", "have", 23564.25689, "a", "corner", "case"]) == "corner"
end
