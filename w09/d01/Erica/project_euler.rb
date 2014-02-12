# Natural numbers below 10 that are multiples of 3 or 5 are 3,5,6 and 9.
# The sum is 3 + 5 + 6 + 9 = 23
# Find the sum of all the multiples of 3 or 5 below 1000.

range = (1...1000).select { |i| i % 3 == 0 || i % 5 == 0 }
total = range.inject(0) { |sum, x| sum + x }

puts total

# general case

range = (x...y).select { |i| i % n == 0 || i % n == 0 } 
total = range.inject(0) { |sum, x| sum + x }

puts total




