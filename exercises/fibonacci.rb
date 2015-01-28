# Method name: fibonacci
# Inputs:      A single non-negative integer, n
# Returns:     The n-th Fibonacci number (see below)
# Prints:      Nothing

# The Fibonacci numbers are the numbers in the following sequence:
#
# n       0  1  2  3  4  5  6   7   8   9  10  11  12  13  14
# fib(n)  0  1  1  2  3  5  8  13  21  34  55  89 144 233 377
#
# If you can't see the pattern, you start with the numbers 0 and 1. From there,
# every subsequent number is the sum of the previous two numbers. That is,

# My notes      f1  f2  f3
# 0 iterations      0
# 1 iterations  0 + 1 = 1
# 2 iterations  1 + 1 = 2
# 3 iterations  1 + 2 = 3
# 4 iterations  2 + 3 = 5
# 5 iterations  3 + 5 = 8

# I don't understand why I need to return f2.  Read some wikipedia.  From there
# I got to the solution below but returning f3 or third base - this was incorrect.
# Then I looked at:
# http://stackoverflow.com/questions/12178642/fibonacci-sequence-in-ruby-recursion
# That's when I realized that I overlooked the recursive method of calling the
# function over and over inside itself.  Apparently it's easier on the computer
# to use iteration though.  This was when I realized I needed to return first_base
# (actually second_base reassigned to first_base at this point in the method.)

def fib(n)
  first_base = 0
  second_base = 1
  third_base = 0

  n.times do
    third_base = first_base + second_base
    puts "#{first_base} + #{second_base} = #{third_base}"
    first_base = second_base # Returning this value.
    second_base = third_base
  end

  print third_base
  print " "
  return first_base # This is actually the value of second_base.
  # NOTE: It took me a while to realize that returning third_base was wrong.
end

if __FILE__ == $0
  # Here are our sanity checks with justification.

  # These are the two "base cases", so if anything is wrong here,
  # everything computed from these numbers will almost certainly be wrong.
  p fib(0) == 0
  p fib(1) == 1

  # This is the first "computed" number, so if something is wrong with our
  # computation there's a good chance it will show up here.
  p fib(2) == 1

  # The 5th Fibonacci number is 5 and is the only one with this property, so
  # it serves as a good sanity check.
  p fib(5) == 5
  p fib(20) == 6765
  # This serves as a good input for the "common case"
  p fib(123) == 22698374052006863956975682

  # Want to see if your fibonacci method can handle big inputs?
  # Uncomment this:
  #
  # puts "The 1,000,000th Fibonacci number is #{fib(1000000)}"
  #
  # !!!WARNING!!!
  # This might grind your computer to a halt. If that happens, press CTRL+c.
  # That's "control" and "c" at the same time.
end
