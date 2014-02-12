# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "CALCULATOR"
  print "(b)asic, (a)dvanced, or (q)uit:"
  response = gets.chomp.downcase
  response
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  calc_function = gets.chomp.downcase
  puts "Enter two numbers please"

  num_1 = gets.chomp.to_i 
  num_2 = gets.chomp.to_i 

  case calc_function
  when "a"
  	puts "Answer: #{num_1 + num_2}"
  when "s"
  	puts "Answer: #{num_1 - num_2}"
  when "m"
  	puts "Answer: #{num_1 * num_2}"
  when "d"
  	puts "Answer: #{num_1 / num_2}"
  end
 end


# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  calc_function = gets.chomp.downcase

  case calc_function
  when "p"
    puts "Enter two numbers please"
    num_1 = gets.chomp.to_i 
    num_2 = gets.chomp.to_i
    puts "Answer: #{num_1 ** num_2}"
  when "s"
  	puts "Enter a number please"
  	num_1 = gets.chomp.to_i
  	puts "Answer: #{Math.sqrt(num_1)}"
  end
end

response = menu
# This process should continue until the user selects a quit option from the menu

while response != 'q'
  if response == "b"
  	basic_calc
  elsif response == "a"
  	advanced_calc
end
response = menu
end
