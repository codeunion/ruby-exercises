# Classes: Die

# Your job is to implement the Die#roll instance method.  We've hard-coded
# the number of sides and assigned it to the @sides instance variable —
# don't change that!

# Die#roll should return a random number between 1 and the value of
# the @sides instance variable.

class Die
  def initialize
    @sides = 6
  end

  # This method should return a random number between 1 and the
  # value of the @sides instance variable (6, in this case).
  def roll
    # This is your job. :)
  end
end


# Don't change any of this code.  It's here to tell you when your method isn't
# working.  Since we're dealing with random behavior, there's a (small) chance
# that this code will run even if your Die#roll method isn't working.

if __FILE__ == $0
  roll_count = 20
  die = Die.new

  puts "Rolling the die #{roll_count} times. Valid numbers are between 1 and 6."
  puts ""

  1.upto(roll_count) do |i|
    result = die.roll
    unless (1..6).include?(result)
      raise "die.roll returned #{result.inspect}, but it must return a number between 1 and 6 (inclusive)"
    else
      puts "Roll #{i}: #{result}"
    end
  end
end
