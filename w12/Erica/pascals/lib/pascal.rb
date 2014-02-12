require 'pry'
# Pascal's Triangle
#                 1
#               1   1
#             1   2   1
#           1   3  3    1
#         1   4   6   4   1
#       1   5   10  10  5   1

# The Logic

def pascal(row)
  if row == 0 || row < 0
    return [1]
  end

  previous = pascal(row - 1)
  array = []

  (previous.length - 1).times do |i|
    array << previous[i] + previous[i + 1]
  end

  return [1, array, 1].flatten
end

binding.pry