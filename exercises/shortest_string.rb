# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  # This is your job. :)
  shortest = list.first               # Assign initial string to variable to use as a comparison point
  list.each do |str|                  # Loop through each element in the array
    if str.length < shortest.length   # Compare the shortest lenght with the length of the current string in loop
      shortest = str                  # If current string in loop is shorter, assign that to shortest variable
    end
  end
  return shortest
end

if __FILE__ == $0
  p shortest_string(["aa", "bbb", "cccc"]) == "aa"
  p shortest_string(["one-thousand", "two", "twenty", "fourty"]) == "two"
  p shortest_string(["hello", "world!"]) == "hello" 
end
