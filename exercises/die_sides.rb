# Classes: Die

# This is a variation on the previous Die class.  Rather than hard-coding
# the number of sides to 6, allow the user to initialize a new die with any
# number of sides.  Die#roll will then return a random number between
# 1 and the value the user initialized the die with.

# See the code below from examples.

class Die
  def initialize(sides)
    @sides = sides
  end

  def roll
    return rand(1..@sides)
  end
end


if __FILE__ == $0

  def test_roll(roll_count, sides)
    die = Die.new(sides)
    puts ""
    puts "Rolling the die #{roll_count} times. Valid numbers are between 1 and #{sides}."
    puts ""

    1.upto(roll_count) do |i|
      result = die.roll
      unless (1..sides).include?(result)
        raise "die.roll returned #{result.inspect}, but it must return a number between 1 and 6 (inclusive)"
      else
        puts "Roll #{i}: #{result}"
      end
    end
  end

  test_roll(5, 10)
  test_roll(3, 20)
  test_roll(6, 6)

end

