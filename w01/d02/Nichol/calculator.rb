include Math

# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "What would you like to do?"
	puts "(b)asic"
	puts "(a)dvanced"
  puts "(t)rig"
  puts "(f)actorial"
	puts "(q)uit"

	return gets.chomp.downcase
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  
  puts "What would you like to do?"
	puts "(a)dd"
	puts "(s)ub"
	puts "(m)ultiply"
	puts "(d)ivide"

	operation = gets.chomp.downcase

	puts "give me one number"
	a = gets.chomp.to_f
  
  	puts "give me the other number"
  	b = gets.chomp.to_f

  case operation
  when "a"
  	result = a+b
  when "s"
  	result = a-b
  when "m"
  	result = a*b
  when "d"
  	result = a/b
  else
  	puts "error"
  end

  puts "the result of #{a} #{operation} #{b} is #{result}"
  return result
end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp
  
  puts "give me a number"
  number = gets.chomp.to_f

  case operation
  when "p"
  	puts "raise #{number} to what power?"
  	power = gets.chomp.to_f
  	result = number**power
  when "s"
  	result = sqrt(number)
  else 
  	puts error
  end
  
  puts "the result is #{result}"

end

def trig_calc
  print "(s)in, (c)os, (t)an:"
  operation = gets.chomp

  puts "give me a number"
  number = gets.chomp.to_f

  case operation
  when "s"
    result = sin(number)
  when "c"
    result = cos(number)
  when "t"
    result = tan(number)
  else
    puts "error"
  end

  puts "the #{operation} of #{number} is #{result}"
end


def factorial()
  print "what number?"
  number = gets.chomp.to_i
  factorial = number
  while number != 2
    number -= 1
    factorial = factorial * number
  end

  puts factorial
end


#dry attempt?
# def getnumbers(a, b)
# end

def factorial(n)
  if n > 1
    return n * factorial(n-1)
  else 
    return 1
  end
end

def factorial_calc()
  puts "what number to factorialize?"
  number = gets.chomp.to_i
  result = factorial(number)
  puts "#{number}! is #{result}"
end


response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  
case response
when "b"
	basic_calc()
when "a"
	advanced_calc()
when "t"
  trig_calc()
when "f"
  factorial_calc()
else
	"puts error"
end

  response = menu
end
