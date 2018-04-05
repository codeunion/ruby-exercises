def count_in_list(list, item_to_count)
  # You'll need three things:
  #  1. A running total of the number of times you've seen the item
  #  2. A way to loop/iterate through the list
  #  3. A way to add to the running total as you see the item
  mycount = []

  list = list.map(&:to_s)

  print list

  list.each do |str|
    if str == item_to_count
      mycount.push(str)
      puts
      print mycount

    end
    puts
  end

  puts mycount.count



end

count_in_list([1,1,1, "to", "to kill", 2562], "1")
