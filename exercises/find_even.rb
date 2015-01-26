# Method name: find_even
# Inputs:      An array of integers
# Returns:     An array of all the even integers appearing from the input array
#              If NO even integers are found, return an empty array
# Prints:      Nothing
def find_even(array)
  even_array = []
  array.each do |num|
    if num % 2 == 0
      even_array.push(num)
    end
  end
  return even_array
end

if __FILE__ == $0
  # If the input is the empty array,
  #  find_even should return the empty array
  p find_even([]) == []
  # If the input array contains all EVEN numbers,
  #   find_even should return the input array
  p find_even([2,4,6,8,10]) == [2,4,6,8,10]
  # If the input array contains all ODD numbers,
  #   find_even should return the empty array
  p find_even([3,7,9,11,13]) == []
  # If an even number appears N times in the input array,
  #   it should appear N times in the the array that find_even returns
  p find_even([2,2,2,8,10]) == [2,2,2,8,10]
end
