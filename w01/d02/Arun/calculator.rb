# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "My Calculator"
	puts "(b)asic (a)dvanced or (q)uit:"
	response = gets.chomp.downcase
	response
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
 print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
 calculator = gets.chomp.downcase
 case calculator
 when "a"
 	puts "enter first number"
 	num1 = gets.chomp.to_i
 	puts "enter second number"
 	num2 = gets.chomp.to_i
 	puts "#{num1 + num2}"
 when "s"
 	puts "enter first number"
 	num1 = gets.chomp.to_i
 	puts "enter second number"
 	num2 = gets.chomp.to_i
 	puts "#{num1 - num2}"
 when "m"
 	puts "enter first number"
 	num1 = gets.chomp.to_i
 	puts "enter second number"
 	num2 = gets.chomp.to_i
 	puts "#{num1 * num2}"
 when "d"
 	puts "enter first number"
 	num1 = gets.chomp.to_i
 	puts "enter second number"
 	num2 = gets.chomp.to_i
 	puts "#{num1 / num2}"
 end


end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  advanced_calculator = gets.chomp.downcase
  case advanced_calculator
  when "p"
  	puts "enter primary number"
  	num1 = gets.chomp.to_i
  	puts "enter exponent"
  	num2 = gets.chomp.to_i
  	puts "#{num1 ** num2}"
  when "s"
  	puts "enter number to get the square root of"
  	num1 = gets.chomp.to_i
  	puts "#{Math.sqrt(num1)}"
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