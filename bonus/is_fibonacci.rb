# Method:  is_fibonacci?(n)
# Inputs:  A single non-negative integer +n+
# Returns: true if +n+ is a Fibonacci number and false otherwise

# Goal 1: Get this working with small Fibonacci numbers (N < 100)
# Goal 2: Get this working with large Fibonacci numbers (N >= 2**15)
# Goal 3: Get this working QUICKLY with large Fibonacci numbers.
#
# Here's a screenshot of the fastest implementation I know:
#   http://cl.ly/image/1z3b3y41130b
# This can calculate is_fibonacci?(fib(2**18)) in ~0.9 seconds.

require 'benchmark'
require_relative 'fast_fib'

BIG_FIB_INPUT = 2**18

# Later, we'll want to generate large Fibonacci numbers. "fast_fib"
# implements a very fast method to calculate the Nth Fibonacci number.

def is_fibonacci?(n)
  # Everything's a Fibonacci number!  Yay.
  # Run the home-made test suite to see it fail:
  #   ruby is_fibonacci.rb --test
  return true
end

# Print out some friendly usage information
def show_usage!
  puts "Usage:"
  puts "  #{$0} <number-to-test>"
  puts ""
  puts "Options:"
  puts "  -t, --test        Run PASS/FAIL tests"
  puts "  -b, --bench       Run benchmarks"
end

# Run our benchmark suite
def run_benchmarks!(iterations = 3)
  big_fib = fast_fib(BIG_FIB_INPUT)
  big_not_fib = big_fib + 100

  msg = "Benchmarking #{iterations} iterations of is_fibonacci?"

  puts "=" * msg.length
  puts msg
  puts "Fibonacci input:     fib(#{BIG_FIB_INPUT})"
  puts "Non-Fibonacci input: fib(#{BIG_FIB_INPUT}) + 100"
  puts "=" * msg.length

  Benchmark.bm(label_width = 40) do |x|
    x.report("is_fibonacci? (w/ Fibonacci input)") do
      iterations.times { is_fibonacci?(big_fib) }
    end

    x.report("is_fibonacci? (w/ non-Fibonacci input)") do
      iterations.times { is_fibonacci?(big_not_fib) }
    end
  end
end

# Run our test suite
def run_tests!
  puts "Testing with Fibonacci inputs"
  [0,1,2,3,5,39088169].each do |n|
    assert_equal(true, is_fibonacci?(n), "is_fibonacci?(#{n}) is true")
  end

  puts ""
  puts "Testing with non-Fibonacci inputs"
  [4,6,7,10,39088169 - 1].each do |n|
    assert_equal(false, is_fibonacci?(n), "is_fibonacci?(#{n}) is false")
  end

  puts ""
  print "Testing with large inputs. Generating inputs..."

  big_fib = fast_fib(BIG_FIB_INPUT)
  big_not_fib = big_fib + 100

  puts "done"

  assert_equal(true, is_fibonacci?(big_fib), "is_fibonacci?(fib(#{BIG_FIB_INPUT})) is true")
  assert_equal(false, is_fibonacci?(big_not_fib), "is_fibonacci?(fib(#{BIG_FIB_INPUT}) + 100) is false")
end

# Helper method for testing purposes
def assert(test, msg)
  if test
    puts "[PASS] #{msg}"
  else
    puts "[FAIL] #{msg}"
  end
end

# Helper method for testing purposes
def assert_equal(expected, actual, msg)
  assert(expected == actual, msg)
end

if __FILE__ == $0
  case ARGV[0]
  when '-h', '--help', '', nil
    show_usage!
  when '-b', '--bench'
    run_benchmarks!
  when '-t', '--test'
    run_tests!
  else
    puts is_fibonacci?(ARGV[0].to_i)
  end
end
