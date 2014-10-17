# Method name: sum
# Input: a list of numbers
# Returns: the SUM of all the numbers in the list
# Prints: Nothing
#
# In English, the "sum" method takes as input a list of numbers and
# returns the SUM of all the numbers in the list

# Things we'll need:
#   1. Something to keep track of the running total
#   2. Something that goes through the list one number at a time
#   3. Something that adds the current number to the running totao
#
# For (3), consider these bits of Ruby:
#   total = 10           # assign the value 10 to the variable "total"
#   total = total + 5    # the value of "total" is now 15
#   total = total + 20   # the value of "total" is now 35
#   total = total + 7    # the value of "total" is now 42
#   total = total - 10   # the value of "total" is now 32 (notice the minus)
#   total = total + 70   # the value of "total" is now 102

def sum(list)
  # This is your job. :)
end

if __FILE__ == $0
  p sum([1]) == 1
  p sum([0]) == 0
  p sum([-1]) == -1
  p sum([1, -1]) == 0
  p sum([0, 10, 0, 20]) == 30
  p sum([-111, -111, -111]) == -333
  p sum([11,22,33]) == 66
end

# Remember: these are rumble strips, not a driving instructor.
# If any are "false" then something is broken, but just because they're
# all "true" doesn't mean you've nailed it. :)
