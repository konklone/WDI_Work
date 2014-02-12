# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	print "(b)asic, (a)dvanced, (q)uit"
	$user_menu_choice = gets.chomp
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide"
  $basic_calc_choice = gets.chomp

	case $basic_calc_choice 
	when "a"
		puts "What number do you wanna add to?"
		num1 = gets.chomp.to_i
		puts "What is the second number?"
		num2 = gets.chomp.to_i
		puts "Your sum is #{num1 + num2}"

	when "s"
		puts "What number do you wanna subtract from?"
		num1 = gets.chomp.to_i
		puts "How much do you wanna subtract?"
		num2 = gets.chomp.to_i
		puts "Your sum is #{num1 - num2}"

	when "m"
		puts "What number do you wanna multiply?"
		num1 = gets.chomp.to_i
		puts "What is your second number?"
		num2 = gets.chomp.to_i
		puts "Your total is #{num1 * num2}"

	when "d"
		puts "What number do you wanna divide from?"
		num1 = gets.chomp.to_f
		puts "what number do you wanna divide by?"
		num2 = gets.chomp.to_f
		puts "Your number is #{num1 / num2}"
	end
end

def advanced_calc
 	 print "(p)ower, (s)qrt"
 	 advanced_calc_choice = gets.chomp

	case advanced_calc_choice
	when "p"
		puts "What is your base?"
		num1 = gets.chomp.to_f
		puts "what is your exponent?"
		num2 = gets.chomp.to_f
		puts "Your number is #{num1 ** num2}"
	when "s"
		puts "What is your base?"
		num1 = gets.chomp.to_f
		puts "Your soltuion is #{Math.sqrt(num1)}"
	end
	
end



menu
while $user_menu_choice != 'q'
	case $user_menu_choice
	when "b"
		basic_calc
	when "a"
		advanced_calc
	when "q"
		abort
	else
		"stop breaking the calculator"
	end

	response = menu
end

