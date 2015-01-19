# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  shortest_so_far = list.first
  list.each do |item|
    if shortest_so_far.length > item.length
      shortest_so_far = item
    end
  end
  shortest_so_far
end

if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else wil you be sure your code does what you think it does?
  p shortest_string(["a","aa","aaaaa aa", "zed bed led", "ready steady eddy"]) == "a"
  p shortest_string(["aa","aa","aa"]) == "aa"
  p shortest_string(["","aa","123aaaaa aa", "zed bed led", "ready steady eddy"]) == ""
end
