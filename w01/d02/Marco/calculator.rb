# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu

  puts "~~~~~~~~Best Calculator EVER!~~~~~~~~"
  puts "Choose Function"
  print "(b)asic, (a)dvanced or (q)uit: "
    option_1 = gets.chomp.downcase

    if option_1 == "b"
      basic_calc
    elsif option_1 == "a"
      advanced_calc
    else 
      "q"
      
    end
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  option_2 = gets.chomp.downcase

  if option_2 == "a"
    print "Please enter a number: "
      number_1 = gets.chomp.to_i
    print "Please enter a second number to add: "
      number_2 = gets.chomp.to_i
    puts "Result: #{number_1} + #{number_2} = #{number_1 + number_2}"
  elsif option_2 == "s"
    print "Please enter a number: "
      number_1 = gets.chomp.to_i
    print "Please enter a second number to subtract: "
      number_2 = gets.chomp.to_i
    puts "Result: #{number_1} - #{number_2} = #{number_1 - number_2}"
  elsif option_2 == "m"
    print "Please enter a number: "
      number_1 = gets.chomp.to_i
    print "Please enter a second number to multiply: "
      number_2 = gets.chomp.to_i
    puts "Result: #{number_1} x #{number_2} = #{number_1 * number_2}"
  elsif option_2 == "d"
    print "Please enter a number: "
      number_1 = gets.chomp.to_i
    print "Please enter a second number to divide: "
      number_2 = gets.chomp.to_i
    puts "Result: #{number_1} ÷ #{number_2} = #{number_1 / number_2}"
  else
    puts "That is not a valid option. Please try again."
  end

end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  option_3 = gets.chomp.downcase

  if option_3 == "p"
    print "Please enter a number: "
      number_1 = gets.chomp.to_i
    print "Please enter an exponent: "
      number_2 = gets.chomp.to_i
    puts "Result: #{number_1} ** #{number_2} = #{number_1 ** number_2}"
  elsif option_3 == "s"
    print "Please enter a number: "
      number_1 = gets.chomp.to_i
    puts "The square root of #{number_1} is #{Math.sqrt(number_1)}"
  else
    puts "That is not a valid option. Please try again."
  end

end



response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'

  response = menu
end
