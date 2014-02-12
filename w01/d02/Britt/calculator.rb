
# Main menu of operations

def menu!
	puts "What type of operation you would like to perform?"
	puts "(b)asic arithmetic: addition, subtraction, multiplication, division"
	puts "(a)dvanced: exponents and square roots"
	puts "(t)rigonometry: sine, cosine, tangent"
	puts "(f)actorial: product of each integer below itself"
	puts "(q)uit the calculator"
	puts "Type your selection and press return:"
	$choice = gets.chomp.downcase
end




# methods for user input, based on how many numbers are necessary

def get_one_number
	puts "What number would you like to use?"
  # all methods requiring one arg return floats except factorial_calc
  $num1 = gets.chomp.to_f
end

def get_two_numbers
	puts "What is the first integer you'd like to use?"
  $num1 = gets.chomp.to_i

  puts "What is the second integer youd like to use?"
  $num2 = gets.chomp.to_i
end




# Methods used in all calcs
# methods for basic_calc

def addition(a, b)
	a + b
end

def subtraction(a, b)
	a - b
end

def multiplication(a, b)
	a * b
end

def division(a, b)
	a / b
end

# methods for advanced_calc

def power(a, b)
	(a ** b)
end

def square_root(a)
	Math.sqrt(a)
end

# method for factorial_calc

def fact(a)
	puts (1..a).reduce(1, :*)
end




# Methods for each menu option 
# (basic_calc, advanced_calc, trigonometic_calc, and factorial_calc):

def basic_calc
  puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  basic = gets.chomp.downcase

  get_two_numbers

  case basic
  when "a"
  	puts addition($num1, $num2)
  when "s"
   	puts subtraction($num1, $num2)
  when "m"
   	puts multiplication($num1, $num2)
  when "d"
   	puts division($num1, $num2)
  end

end


def advanced_calc
  puts "(p)ower, (s)qrt: "
  advanced = gets.chomp.downcase

  case advanced
  when "p"
  	get_two_numbers
  	puts power ($num1, $num2)
  when "s"
  	get_one_number
  	puts square_root($num1)
  end

end


def trigonometric_calc
	puts "(s)ine, (c)osine, (t)angent: "
	trig = gets.chomp.downcase

	get_one_number

	case trig
	when "s"
		puts Math.sin($num1)
	when "c"
		puts Math.cos($num1)
	when "t"
		puts Math.tan($num1)
	end

end


def factorial_calc
	get_one_number.to_i

	if a > 0
		fact($num1)
	elsif a == 0
		puts 1
	else
		puts "A factorial can only accept a non-negative integer."
	end

end




# Start application:

menu!

# This process continues until the user selects a quit option from the menu
while $choice != 'q'

	case $choice
	when "b"
		basic_calc
	when "a"
		advanced_calc
	when "t"
		trigonometric_calc
	when "f"
		factorial_calc
	end

  menu!
end

