# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
 puts "Calc_it"
 puts "(b)asic, (a)dvanced, (q)uit: "
 response = gets.chomp.downcase

  if response == "b"
    basic_calc
  elsif response == "a"
    advanced_calc
  elsif response == "q"
    puts "Goodbye!"
    abort
  end
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  basic_choice = gets.chomp.downcase

  puts "Input first number"
      first_num = gets.chomp.to_i
  puts "Input second number"
      second_num = gets.chomp.to_i

  if basic_choice == "a"
      puts "The sum is #{first_num + second_num}"

  elsif basic_choice == "s"
    puts "The diference is #{first_num - second_num}"

  elsif basic_choice == "m"
    puts "The product is #{first_num * second_num}"

  elsif basic_choice == "d"
    puts "The quotient is #{first_num / second_num}"
  end
end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  advance_choice = gets.chomp.downcase

  if advance_choice == "p"
    puts "Input number"
      first_num = gets.chomp.to_i
    puts "Input power to be raised to"
      second_num = gets.chomp.to_i
    puts "The result is #{first_num  ** second_num}"
  elsif advance_choice == "s"
    puts "Input numer you would like the square root of"
      first_num = gets.chomp.to_i
    puts "The square root is #{Math.sqrt(first_num)}"
  end
end

response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'

  response = menu
end
