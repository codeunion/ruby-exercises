# Method name: run_length_encode
# Inputs:      A String to be encoded
# Returns:     A String that has been "run-length encoded"
# Prints:      Nothing

# This kata is meant to explore the basic idea behind file compression using
# a very naive type of compression called "run-length encoding."

# See http://en.wikipedia.org/wiki/Run-length_encoding

# The idea behind run-length encoding is to take a string and replace
# all repeated sequences of characters with the number of times that character
# is repeated followed by that character.  For example, we'd encode the string
#
#   WWWWWWAAAAAAWWWWWWAAAAAABBBBBB
#
# as
#
#   6W6A6W6A6B
#
# As you can see, this "encoded" string is actually *shorter* than the input
# string but still contains all the information we need to reconstruct the
# original. On the other hand, the string "ABCEDFG" would be encoded as
#
#   1A1B1C1D1E1F1G
#
# In this case, the "encoded" string is *longer* than the input string. So,
# run-length encoding is great at compressing some kinds of data and really
# bad as compressing others.  Nevertheless, it paints a picture of how
# compression actually works: by taking advantage of duplicating in the
# underlying data, we can find a way to represent the same information while
# taking up less space.
#
# In particular, RLE is great when there are large sections of repeated data.
# You can imagine this operating on things other than "characters," e.g.,
# images.  In this case, "large sections of repeated data" might mean
# large runs of a single color in an image.
#
# Fun fact: every fax machine you've used uses run-length encoding to compress
# the image before transmitting over the phone line, since faxed documents tend
# to be almost entirely white.  So this isn't just a "toy problem.""


def run_length_encode(string)
end

# If you want to iterate over each character in a string, look at String#each_char
# http://ruby-doc.org/core-2.1.0/String.html#method-i-each_char
#
# string.each_char do |c|
#   puts "Character is #{c}"
# end

if __FILE__ == $0
  p run_length_encode("WWWWWWAAAAAAWWWWWWAAAAAABBBBBB") == "6W6A6W6A6B"
  p run_length_encode("A") == "1A"
  p run_length_encode("AB") == "1A1B"
  p run_length_encode("Mississippi") == "1M1i2s1i2s1i2p1i"
end
