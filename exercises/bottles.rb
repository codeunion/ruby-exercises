# Method name: bottles
# Inputs:      A number, n
# Returns:     Nothing
# Prints:      The text for "99 bottles", starting at the input number and
#              counting down to 1

# For example, bottles(99) should print...
#
# 99 bottles of beer on the wall, 99 bottles of beer.
# Take one down, pass it around, 98 bottles of beer on the wall!
# 98 bottles of beer on the wall, 99 bottles of beer.
# Take one down, pass it around, 97 bottles of beer on the wall!
#
# ... and so on...
#
# 2 bottles of beer on the wall, 2 bottles of beer.
# Take one down, pass it around, 1 bottle of beer on the wall!
# 1 bottle of beer on the wall, 1 bottle of beer.
# Take one down, pass it around, no more bottles of beer on the wall!

# NOTE NOTE NOTE
# This method should print out the correct form of "bottles".  That is,
# it should say
#   2 bottles
#   1 bottle
#   no more bottles
#   etc.

def bottles(start_number)
    puts "Counting down..."
    start_number.downto(1) do |i|
      if i > 1
        print "#{i} bottles of beer on the wall, #{i} bottles of beer. Take one down, pass it around, "
        puts "#{i-1} bottles of beer on the wall!"
      else
        print "#{i} bottles of beer on the wall, #{i} bottles of beer. Take one down, pass it around, no more bottles of beer on the wall!"
      end
    end
#I could not implement the method at the moment so I just coded it logically straight
end

if __FILE__ == $PROGRAM_NAME
  # What *should* this print?
  bottles(50)
end

# Hint #1:
# The "downto" method will be useful.
#
# See http://ruby-doc.org/core-2.0/Integer.html#method-i-downto or try this:
#
#   puts "Counting down..."
#   10.downto(1) do |i|
#     puts i
#   end
#   puts "Blast off!"

# Hint #2:
# The priority is getting this method to work, even if your code is messy, but
# try to isolate the part of each line that changes depending on the number of
# bottles and move it to its own method.  This makes handling the
# singular/plural logic much easier.
#
# Yes, that means you'll need to define another method here on your own. If you
# decide to try this approach, give it a sensible name. :)
