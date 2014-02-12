# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  print "(b)asic, (a)dvanced or (q)uit: "
  return gets.chomp
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp
  puts "Please enter your first number"
  num1 = gets.chomp.to_f
  puts "Please enter your second number"
  num2 = gets.chomp.to_f
  case operation
  when "a"
    puts "#{num1} + #{num2} = #{num1 + num2}"
  when "s"
    puts puts "#{num1} - #{num2} = #{num1 - num2}"
  when "m"
    puts puts "#{num1} * #{num2} = #{num1 * num2}"
  when "d"
    puts puts "#{num1} / #{num2} = #{num1 / num2}"
  end
end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt, (sin)e, (cos)ine, (tan)gent: "
  operation = gets.chomp
  if operation == "p"
    puts "Please enter your first number"
    num1 = gets.chomp.to_f
    puts "Please enter your second number"
    num2 = gets.chomp.to_f
  elsif operation == "s"
    puts "Please enter your number to have the square root taken"
    num1 = gets.chomp.to_f
  #Tried to use || for "sin" and "cos" but I was getting an error??
  elsif operation == "sin"
    puts "Please enter a number from -1 to 1"
    num1 = gets.chomp.to_f
  elsif operation == "cos"
    puts "Please enter a number from -1 to 1"
    num1 = gets.chomp.to_f
  elsif operation == "tan"
    puts "Please enter a number to have the tangent taken"
    num1 = gets.chomp.to_f
  end
      
  case operation
  when "p"
    puts "#{num1} to the power of #{num2} = #{num1 ** num2}"
  when "s"
    puts "The square root of #{num1}  = #{Math.sqrt(num1)}"
  when "sin"
    puts "The sine of #{num1}  = #{Math.sin(num1)}"
  when "cos"
    puts "The cosine of #{num1}  = #{Math.cos(num1)}"
  when "tan"
    puts "The tangent of #{num1}  = #{Math.tan(num1)}"
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


