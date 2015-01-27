# Method name: factorial
# Inputs:      A single non-negative integer, n
# Returns:     The factorial of n (see below)
# Prints:      Nothing

# The factorial of 5 is denoted by 5! and is defined as
#   5! = 5*4*3*2*1
#
# In English, you'd read "5!" as "five factorial".  In general, the factorial
# of a number is the product of every number from that number down to 1, so
#
#   4! = 4*3*2*1
#  10! = 10*9*8*7*6*5*4*3*2*1
#

def factorial(n)
  if n < 0
    fail ArgumentError, "input must be non-negative (got '#{n}')"
  end

  result = 1

    n.downto(1) do |i|
      result *= i
    end

  result
end

if __FILE__ == $0
  # What are the common cases?  What are the corner cases?
  # Your sanity checks should look like
  #   p factorial(input) == ...expected return value...
  p factorial(0)    == 1 # factorial of 0 is 1.
  p factorial(1)    == 1
  p factorial(2)    == 2
  p factorial(3)    == 6
  p factorial(10)   == 3628800
  p factorial(20)   == 2432902008176640000
end
