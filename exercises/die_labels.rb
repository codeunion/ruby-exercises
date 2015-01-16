# Classes: Die

# Now write a Die class that can return more than numbers.
# Instead of passing in a number of sides, we pass in an Array of labels.
# Die#roll will then return one of these labels, randomly.

class Die
  def initialize(labels)
    # Hint: assign the labels argument to an instance variable
  end

  def roll
    # Hint: Use Array#sample to return a random label.
    # See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-sample
  end
end

def prompt(msg)
  print "#{msg}: "
  gets.chomp
end

if __FILE__ == $0
  # Examples of what we mean by "returning a random label":
  # normal_die = Die.new([1,2,3,4,5,6])
  # letter_die = Die.new(['A', 'B', 'C', 'D'])
  # dot_die    = Die.new(['.', '..', '...', '....'])
  #
  # letter_die.roll would return one of 'A', 'B', 'C', or 'D' at random

  eight_ball = Die.new(['Yes', 'No', 'Unclear', 'Absolutely', 'Never', 'Maybe'])

  loop do
    input = prompt("Ask the Magic 8-Ball a question (or type 'quit' to quit)")

    if input == "quit"
      puts "Goodbye!"
      break
    elsif input.chars.last != "?"
      puts "The Magic 8-Ball says, \"That doesn't look like a question to me.\""
    else
      result = eight_ball.roll
      puts "The Magic 8-Ball says, \"#{result}\"."
    end

    puts ""
  end
end
