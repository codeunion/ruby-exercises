# Method name: print_triangle
# Input: a number n
# Returns: Nothing
# Prints: a right triangle consisting of "*" characters that is "n" characters tall
#
# For example, print_triangle(4) should print
#
# *
# **
# ***
# ****

# The print_line method is here to help you.
# Conceptually, it prints out a row of "count" *'s.  Run it yourself to
# see how it works.  Experiment with different inputs.

# Again, for the below, why can we use, instead of a (1..count).each, 
# count.times or just "puts '*' * count" ?

def print_line(count)
  (1..count).each do |i|
    print "*"         # This prints a single "*"
  end

  print "\n"          # This forces the output to the next like, like hitting "return" on the keyboard
end

def print_triangle(height)
  (1..height).each do |n|
    print_line(n)           # I understand this conceptually but hard to know whether I would have been
  end                       # able to figure this out on my own.
end

# There are no rumble strips this time.  It's up to you to decide whether
# this is working as intended or not.

if __FILE__ == $0
  print_triangle(1)

  print "\n\n\n" # This is here just to make the separation between triangles clearer

  print_triangle(2)

  print "\n\n\n" # This is here just to make the separation between triangles clearer

  print_triangle(3)

  print "\n\n\n" # This is here just to make the separation between triangles clearer

  print_triangle(10)
end
