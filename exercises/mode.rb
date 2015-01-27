# Method name: mode
# Inputs:      An arbitrary array — could be of anything
# Returns:     The item in the array which occurs most frequently (the mode)
# Prints:      Nothing
def mode(array)
  counts = Hash.new(0)
  # Building a counts from an array - the same problem we solved in textalyze.rb.
  array.each do |key|
    counts[key] += 1
  end

  counts.max_by {|key, value| value}.first # Find the max value in the key, value pairs.
  # .max_by returns an array ["key", value]. #first gives first item in array.
end

if __FILE__ == $0
  p mode([-1234.50]) == -1234.50
  p mode(['hello']*100) == 'hello'
  p mode(['a', 'a', 'a', 'b']) == 'a'
  p mode(['b', 'a', 'a', 'a']) == 'a'
  p mode(['a', 'b', 'a', 'a']) == 'a'
end
