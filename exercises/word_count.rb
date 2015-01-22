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
  words = string.split(/\W+/) #split on any non-word char. Thanks Rubular.com!
  #Using \b counts even spaces as "words".  Using \W counts ... as three words.
  #I think \W is better for now. Otherwise... I wonder if \W+ would work at all? YES.
    words.length #return length
end
#Tests:
if __FILE__ == $0
  p word_count("apple")                   == 1
  p word_count("123...321")               == 2
  p word_count("one.two three")           == 3
  p word_count("This////bit has fv wds.") == 5
  p word_count("No-spaces!?-here")        == 3
  p word_count("")                        == 0  # Empty string
  p word_count(".... ")                   == 0 # A string consisting of a single space
  p word_count("one\n-- two three")       == 3
  p word_count("one\ntwo;;;\nthree")      == 3
  p word_count("is;;;  ts    has many s.")== 5
  p word_count("one\n two three")         == 3
end
