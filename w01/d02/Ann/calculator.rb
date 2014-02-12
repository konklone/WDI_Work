# A user should be given a menu of operations
# A user should be able to choose from the menu
=begin
  
rescue puts "Welcome to your calculator!"
  
=end  
  
def menu
puts "Welcome to The Calculator! What would you like to do? (b)asic, (a)dvanced, or (q)uit?"
$main_menu_user_response = gets.chomp.downcase.to_s 

case $main_menu_user_response 
when "b"
    basic_calc 
    
when "a"
    advanced_calc 
 
end 
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result

#Math request has been completed properly!

def basic_calc 
    print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
    basic_menu_user_response = gets.chomp.downcase.to_s 

    case basic_menu_user_response 
    when "a"
      puts "What is the first number you'd like to add?"
      first_number_add = gets.chomp.to_i

      puts "What is the second number you'd like to add?"
      second_number_add = gets.chomp.to_i 

      puts "Your answer is #{first_number_add + second_number_add}!" 
     # puts "Would you like to (q)uit and return to the main menu or continue in the (b)asic calculator?"
      #math_request_complete = gets.chomp.downcase.to_s

    when "s"
      puts "What's the first number you'd like to subtract?"
      first_number_subtract = gets.chomp.to_i

      puts "What's the second number you'd like to subtract?"
      second_number_subtract = gets.chomp.to_i

      puts "Your answer is #{first_number_subtract - second_number_subtract}."

    when "m"
      puts "What's the first number you'd like to multiply?"
      first_number_multiple = gets.chomp.to_i

      puts "What's the second number you'd like to subtract?"
      second_number_multiple = gets.chomp.to_i

      puts "Your answer is #{first_number_multiple * second_number_multiple}."

    when "d"
      puts "What's the first number you'd like to divide?"
      first_number_divide = gets.chomp.to_i

      puts "What's the second number you'd like to divide?"
      second_number_divide = gets.chomp.to_i

      puts "Your answer is #{first_number_divide / second_number_divide}."
      
    end
menu
end 

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  advanced_menu_user_response = gets.chomp.downcase.to_s 

case advanced_menu_user_response 
      when "p"
      puts "What is the number you'd like to square?"
      number_squared = gets.chomp.to_i

      puts "#{number_squared} is #{number_squared ** 2}!" 

      when "s"
      puts "What is the number you'd like to take the square root of?"
      number_sqrt = gets.chomp.to_i
      #math.sqrt(number_sqrt) = final_sqrt 

      puts "The square root of #{number_sqrt} is #{number_sqrt ** 0.5}!" 
     
   end 
  menu 
end


response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'

  response = menu
end
