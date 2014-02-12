# Validating Credit Card Numbers

# Credit card numbers can be validated with a process called the Luhn algorithm. Simply stated, the Luhn algorithm works like this:

# 1. Starting with the next to last digit and continuing with every other digit going back to the beginning of the card, double the digit.

# 2. Sum all doubled and untouched digits in the number.

# 3. If that total is a multiple of 10, the number is valid.

# For example, given the card number 4408 0412 3456 7893:

# ```
# Orig  :  4 4 0 8 0 4 1 2 3 4   5 6   7 8   9 3
# Step 1:  8 4 0 8 0 4 2 2 6 4  10 6  14 8  18 3
# Step 2:  8+4+0+8+0+4+2+2+6+4+1+0+6+1+4+8+1+8+3 = 70
# Step 3:  70 % 10 == 0
# ```

# ### To Do
# Write a method `valid?` tha t takes a number as an argument and returns true for a valid number and false for an invalid number

# ### Bonus
# For 16 digit credit card numbers, how many possible combinations exist that satisfy the luhn algorithm?

# ### Appendix

# Reference: http://en.wikipedia.org/wiki/Luhn_algorithm

# Source: http://www.rubeque.com/problems/validating-credit-card-numbers

def valid?(n)
  string = n.to_s
  array = string.split(//)
  popped_number = array.last 
  array.pop
  reversed_array = array.reverse

  numbers = reversed_array.map do |char| 
     numbers = char.to_i
  end


  with_doubles = numbers.map do |number, i|
    if number[i] == 0 || number[i] % 2 == 0
      number * 2
    end
  end

  string2 = with_doubles.to_s
  array2 = string2.split(//)
  
  digits = array2.map do |char|
    number = char.to_i
  end

  final_digit = digits.reduce(:+) 

  if final_digit % 10 == 0
    return true
  else
    return false
  end
end

# the .pop was unnecessary. the with_doubles if statement needs finessing. 






