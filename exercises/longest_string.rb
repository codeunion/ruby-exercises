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
  # This is your job. :)
  longest = list.first                 # Assigning any item in the list to initialize the variable as a compare point
  list.each do |str|                   # Loop through each item in the array
    if str.length > longest.length     # Compare the length of the current item in the loop to the length of the longest variable
      longest = str                    # If str is longer than reassign longest variable
    end
  end
  return longest
end

if __FILE__ == $0
  p longest_string(["a", "zzzz", "cc"]) == "zzzz" 
  p longest_string(["hello", "my", "name", "is", "John"]) == "hello"
  p longest_string(["one", "thirteen", "four", "hundred"]) == "thirteen"
end


