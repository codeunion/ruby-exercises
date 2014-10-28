# Method name: mode
# Inputs:      An arbitrary array — could be of anything
# Returns:     The item in the array which occurs most frequently (the mode)
# Prints:      Nothing

# If you have a list of data points, the "mode" is the data point which occurs
# most frequently. See: http://en.wikipedia.org/wiki/Mode_(statistics)

# Note that the mode might not be well-defined, e.g., when two data points
# appear the same number of times.  Just return one or the other.

# As always, focus first on understanding the problem in human terms.
# If you had a long list of data points on a piece of paper, how would you
# go about finding the data point which occured most frequently?
#
# Break it down as clearly as you can in your own head first.

def mode(array)
end

if __FILE__ == $0
  # Write some of your own "sanity checks" here.  Each check should look like:
  #
  #  p mode([...data points...]) == ...expected return value...
  #
  # A good sanity check is like a canary in a coal mine: when it fails we know
  # something is very wrong in our code.  This means sanity checks should
  # reflect
  #   1. The common cases
  #   2. The edge cases
  #   3. Likely mistakes you'll make in your code (e.g., using <= instead of <)
  #
  # What these cases mean concretely depends on what your method does.
  #
  # Here are facts about the mode that can serve as inspiration.

  # Tip: You can generate *really* long arrays a few different ways:
  #   1. long_array = ['a']*100
  #   2. long_array = Array.new(100, 'a')
  # These each generate a 100-element array consisting only of 'a'

  # The mode of a single data point should be that data point
  p mode([-1234.50]) == -1234.50

  # The mode of identical data points should be that data point
  p mode(['hello']*100) == 'hello'

  # The mode doesn't depend on the order of the data
  p mode(['a', 'a', 'a', 'b']) == 'a'
  p mode(['b', 'a', 'a', 'a']) == 'a'
  p mode(['a', 'b', 'a', 'a']) == 'a'
end
