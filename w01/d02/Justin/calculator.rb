# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "(b)asic, (a)dvanced, or (q)uit"
	$menu_choice = gets.chomp.downcase
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  basic_menu_choice = gets.chomp.downcase

  if basic_menu_choice == 'a'
  	puts "Enter the first number you want to add:"
  	x = gets.chomp.to_i
  	puts "Enter the second number you want to add:"
  	y = gets.chomp.to_i
  	puts "#{x} + #{y} = #{x + y}"

  elsif basic_menu_choice== 's'
  	puts "Enter the first number you want to subtract:"
  	x = gets.chomp.to_i
  	puts "Enter the second number you want to subtract:"
  	y = gets.chomp.to_i
  	puts "#{x} - #{y} = #{x - y}"

  elsif basic_menu_choice == 'm'
  	puts "Enter the first number you want to multiply:"
  	x = gets.chomp.to_i
  	puts "Enter the second number you want to multiply:"
  	y = gets.chomp.to_i
  	puts "#{x} x #{y} = #{x * y}"

  elsif basic_menu_choice == 'd'5
  	puts "Enter the first number you want to divide:"
  	x = gets.chomp.to_i
  	puts "Enter the second number you want to divide by:"
  	y = gets.chomp.to_i
  	puts "#{x} / #{y} = #{x / y}"

  else
  	puts "Invalid selection"
  end
end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  advanced_menu_choice = gets.chomp.downcase

  if advanced_menu_choice == 'p'
  	puts "Enter the base number:"
  	x = gets.chomp.to_i
  	puts "Enter the exponent:"
  	y = gets.chomp.to_i
  	puts "#{x} ^#{y} = #{x ** y}"

  elsif advanced_menu_choice == 's'
  	puts "Enter the number you would like the square root of:"
  	x = gets.chomp.to_i
  	puts "The square root of #{x} is: #{Math.sqrt(x)}"

  else
  	puts "Invalid selection"
  end
end


response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'
	if response == 'b'
		basic_calc
	else 
		advanced_calc
	end
	response = menu
end
