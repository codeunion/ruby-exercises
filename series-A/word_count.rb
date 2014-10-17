# Method name: word_count
# Input: A string representing an English sentence
# Returns: The number of words in the sentence
# Prints: Nothing
#
# Although it's more complicated in relaity, we'll just pretend
# that sequence of spaces in a sentence designates the start of a new word.
# That means we don't care about how many spaces are between two words, only
# that there is at least one.

def word_count(string)
  # Hint: You'll want to use String#split
  # See: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-split
end

if __FILE__ == $0
  p word_count("apple") == 1
  p word_count("123...321") == 1
  p word_count("one two three") == 3
  p word_count("This sentence has five words.") == 5
  p word_count("No-spaces-here") == 1
  p word_count("") == 0  # Empty string
  p word_count(" ") == 0 # A string consisting of a single space

  # It's probably worth having a few more sanity checks.
  # What are some input strings that might be tricky to handle?
  # How about where the answer to "How many words?" is less clear-cut?
end
