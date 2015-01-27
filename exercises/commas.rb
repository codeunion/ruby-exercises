# Method name: commas
# Inputs:      A number, n
# Returns:     A string representing the input, with commas inserted into the
#              correct position.
# Prints:      Nothing

# For example,
#
#  commas(123)     == "123"
#  commas(1234)    == "1,234"
#  commas(12345)   == "12,345"
#  commas(1234567) == "1,234,567"

# Note #1
# If it's too much, don't worry about handling negative numbers at first.

# Note #2
# As always, focus first on how you would do this *as a human*. Imagine you
# has a piece of paper with a comma-less number on it.  How would you decide to
# insert the commas?  Which comma would you insert first?

# MY NOTES:
# convert incoming number to string
# split string on each char
# iterate through array from end downto 0
# build new array
# every after every three items add comma
# join new array to string
# return new array
# for negative: check if incoming number is < 0, if so add "- to array[0]

def commas(num)
  string_with_commas = num.abs.to_s.chars.reverse.each_slice(3).map { |part| part.join }.join(",").reverse
  if num < 0
    string_with_commas.prepend("-")
  end
  string_with_commas
end

if __FILE__ == $0
  p commas(1)     # == "1"
  p commas(12)     # == "12"
  p commas(123)     # == "123"
  p commas(1234)    # == "1,234"
  p commas(12345)   # == "12,345"
  p commas(1234567) # == "1,234,567"
  p commas(-1234)   # == "1,234"
  p commas(-12345)  # == "12,345"
  p commas(-1234567)# == "-1,234,567"
end
