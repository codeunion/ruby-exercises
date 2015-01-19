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
  list.each do |item|
    if longest_so_far.length < item.length
      longest_so_far = item
    end
  end
  longest_so_far
end

if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p longest_string(["a", "aa", "aaa"]) == "aaa"
  p longest_string(["aAAA", "aa", "aaa"]) == "aAAA"
  p longest_string(["aa", "aa", "a"]) == "aa"
  p longest_string(["aa", "aa", "aa"]) == "aa"
  p longest_string(["aa", "zz", "aa"]) == "aa" #list.first is never less than the other items so longest will stay with item[0]
  p longest_string(["aafefejkf", "sds", "the quick brown fox jumped over the lazy dog"]) == "the quick brown fox jumped over the lazy dog"
end
