# Method name: count_in_list(list, item_to_count)
# Inputs:      1. a list of anything, 2. an item for us to count in the list
# Returns:     The number of times our item is contained in the input list
# Prints:      Nothing
#
# For example,
#   count_in_list([1,2,3], 1)  == 1
#   count_in_list([1,2,3], -1) == 0
#   count_in_list([1,1,1], 1)  == 3

# --- NOTE ---
# Ruby has a built-in method to do this, but the purpose of this kata is
# to write it yourself.
#
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-count

def count_in_list(list, item_to_count)
  # You'll need three things:
  #  1. A running total of the number of times you've seen the item
  #  2. A way to loop/iterate through the list
  #  3. A way to add to the running total as you see the item

  item_count = 0                      # Sets the initial count variable to zero

  list.each do |list_item|            # Iterates through the list
    if list_item == item_to_count     # If the current item in the loop is equal to the item to count
      item_count += 1                 # Add 1 to the count
    end
  end
  return item_count
end

if __FILE__ == $0
  p count_in_list([1,2,3], 1)  == 1
  p count_in_list([1,2,3], -1) == 0
  p count_in_list([1,1,1], 1)  == 3
  p count_in_list(["one", "two", "hello", 1, "one"], "one") == 2 
end
