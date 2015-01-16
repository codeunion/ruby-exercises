# Classes: HotOrCold

# We're going to object-orient-ify the hot_or_cold kata.
# The class only handles the guessing aspect.  If we think of our code
# as a model of some real-world situation, the class would represent
# a single person who has picked a number in their head.  Anyone can
# guess as to the number and the person will say "too hot", "spot on", or
# "too cold", but they will never change the number in their head.


class HotOrCold
  def initialize(number_to_guess)
    @number_to_guess = number_to_guess
  end

  # Returns the String "hot" if number given is too large, the String "cold" if
  # number given is too small, and the String "correct" if number given is
  # correct.
  def hot_or_cold(number)
    # Hint: we'll ened to be comparing number to @number_to_guess
  end
end


# A helper method to prompt the user for input and return whatever they type
def prompt(msg)
  print "#{msg}: "
  gets.chomp
end

# Don't change this code!  If your HotOrCold#hot_or_cold method is working
# correctly, the code below will work without changing.
if __FILE__ == $0
  if ARGV[0]
    top_guess = ARGV[0].to_i
  else
    top_guess = 100
  end

  loop do
    # rand(1..top_guess) returns a random number between 1 and top_guess (inclusive)
    # See: http://www.ruby-doc.org/core-2.1.2/Random.html#method-i-rand
    puts "Welcome to Hot or Cold!"

    game = HotOrCold.new(rand(1..top_guess))

    loop do
      our_guess = prompt("Guess a number between 1-#{top_guess} (or type \"quit\" to quit)")

      if our_guess == "quit"
        puts "Goodbye!"
        exit # exit the entire program
      end

      our_guess = our_guess.to_i

      result = game.hot_or_cold(our_guess)

      if result == "hot"
        puts "#{our_guess} is too hot!\n\n"
      elsif result == "cold"
        puts "#{our_guess} is too cold!\n\n"
      elsif result == "correct"
        puts "#{our_guess} is correct!\n\n"
        break # breaks out of the inner-most loop, taking us to line 35
      end

    end
  end
end
