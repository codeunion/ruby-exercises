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
  
  running_total = 0
  list.each do |item|
  # add .downcase if I want to ignore case.
    if item == item_to_count  # should I use .to_s - only if I want "1" == 1 to yield true. 
  
      running_total += 1
    end
  end
  running_total #return the total of item_to_count found in list
end


if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  
  p count_in_list([1, 2, 1, 4], 1) == 2 # integers
  p count_in_list(["Jim", "Apple", "Orange", "Jim"], "Jim") == 2 # strings
  p count_in_list(["1", 1, 1, 4], 1) == 2 # mix of str and int
  p count_in_list([1, 1.0, 1.001, 315], 1) == 2 # int and float - 1 == 1.0 is true
  p count_in_list(["", 100, 101, "100"], "") == 1 # empty item
end
