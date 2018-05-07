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
  mycount = [] # Sets the initial count of item_to_count to empty array

  list.each do |str| # For each str in list
    if str == item_to_count # If str is equal to item_to_count
      mycount.push(str) # Push str to the mycount array
    end

  end
  
  return mycount.count # Return the count of str in mycount
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p count_in_list(["A", "way", "to", "add", "to", "the"], "to") == 2
  p count_in_list([1,1,1], 1)  == 3
  p count_in_list([1,2,3], -1) == 0
  p count_in_list([1,2,3], 1)  == 1
end
