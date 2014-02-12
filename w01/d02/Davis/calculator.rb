#user input method
def get_user_input
	gets.chomp
end

#multiple numbers/inputs method
def get_multiple_numbers
  #convert user string into array of only numbers (ignore other input), change each element into integer
  get_user_input.scan(/\d+/).map { |num| num.to_i }
end

#basic calculator functions: add, substract, multiply, divide
def add(numbers)
  "#{numbers.join(" + ")} = #{numbers.inject(:+)}"
end

def subtract(numbers)
  "#{numbers.join(" - ")} = #{numbers.inject(:-)}"
end

def multiply(numbers)
  "#{numbers.join(" * ")} = #{numbers.inject(:*)}"
end

def divide(numbers)
  numbers.map! { |num| num.to_f }

    #no division by 0
    if numbers[1..-1].include?(0)
      puts "Sorry. You can't divide a number by 0. Input again."
      n = get_multiple_numbers
    else
      puts "#{numbers.join(" / ")} = #{numbers.inject(:/)}"
    end
end

#advanced calculator functions: power
def power(number)
  puts "To what power do you want to raise #{number}?"
  n2 = get_user_input.to_i

  "#{number} ** #{n2} = #{number ** n2}"
end

#extra calculator functions: factorial
def factorial(number)
  (1..number).inject(:*)
end

# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "(b)asic, (a)dvanced, (e)xtra or (q)uit?"
	get_user_input
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
# extra: take multiple numbers, error when provide 0 in division that is not 1st value
# extra2: allow for continous typing ie 2 + 4 - 3
# extra3: "save" result for continued calculations
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  choice = get_user_input

  puts "What numbers do you wish to #{choice}?"
  n = get_multiple_numbers

  case choice
  when "a" 
    puts add(n)
  when "s" 
  	puts subtract(n)
  when "m" 
  	puts multiply(n)
  when "d" 
    puts divide(n)
  else
  	puts "Not an option. Resubmit."
  	choice = get_user_input
  end

end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt,: "
  choice = get_user_input

  #user input
  puts "Pick a number"
  n = get_user_input.to_i

  case choice
  when "p"
  	puts power(n)
  when "s"
  	puts "The square root of #{n} is #{Math.sqrt(n)}"
  else
  	puts "Not an option. Resubmit."
  	choice = get_user_input
  end
end

def extra
	print "(s)in, (c)os, (t)an, (f)actorial: "
	choice = get_user_input

	puts "Pick a number"
	n = get_user_input.to_i

	case choice
	when "s"
		puts "The cos of #{n} is #{sin(n)}"
	when "c"
		puts "The sin of #{n} is #{sin(n)}"
	when "t"
		puts "The sin of #{n} is #{tan(n)}"
	when "f"
		puts "The factorial of #{n} is #{factorial(n)}"
	else
		puts "Not a choice. Pick again."
		choice = get_user_input
	end

end

response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'
  case response
    when 'b' then basic_calc
    when 'a' then advanced_calc
    when 'e' then extra
  end

  response = menu
end
