def pad_array(array, min_size, pad_with)
  if min_size == 0
    array

  elsif array.length >= min_size
    array

  else
    pad_number = min_size - array.length

    pad_number.times do
      array.push(pad_with)
    end

    array
  end
end

if __FILE__ == $0
  p pad_array([1, 2, 3], 0, "waffles") == [1, 2, 3]
  p pad_array([1, 2, 3], 1, "waffles") == [1, 2, 3]
  p pad_array([1, 2, 3], 3, "waffles") == [1, 2, 3]
  p pad_array([1, 2, 3], 4, "waffles") == [1, 2, 3, "waffles"]
  p pad_array([1, 2, 3], 5, "waffles") == [1, 2, 3, "waffles", "waffles"]
  p pad_array([1, 2, 3], 6, "waffles") == [1, 2, 3, "waffles", "waffles", "waffles"]
end
