# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  my_short_str = list[0] # assigns a varible to the first array index
  list.each do |str| # for each str in list
    if str.length < my_short_str.length # if the lengthof current str is greater than my_short_str
      my_short_str = str # set str to my_short_str
    end
  end
  return my_short_str
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?

  p shortest_string(["We", "might", "have", "missed", "a", "corner", "case"]) == "a"
  p shortest_string(["Remember", "that", "conceptually", "x"]) == "x"

  p shortest_string(["123456789", "might", "have", "23564.25689", "a", "corner", "case"]) == "a"

end
