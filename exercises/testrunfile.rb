def count_in_list(list, item_to_count)
  # You'll need three things:
  #  1. A running total of the number of times you've seen the item
  #  2. A way to loop/iterate through the list
  #  3. A way to add to the running total as you see the item
  list = list.to_s
  puts list

  words = list.split(" ")

  puts words

  num = words.count(item_to_count)


  puts num

end

count_in_list([1,1,1], "to")
