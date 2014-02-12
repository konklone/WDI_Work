# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "I am a Calculator, there are many like me but these calculations are mine"
  puts "What do you want to do? "
  puts "- Add"
  puts "- Subtract"
  puts "- Multiply"
  puts "- Divide"
  puts "- More advanced"
  puts "- Crazy Stuff"
  puts "- Quit"
  print "> "
  $selection = gets.chomp.downcase

case $selection
when "more advanced"
  advanced_calc
when "crazy stuff"
  crazy_stuff
when "quit"
  "q"
else
  basic_calc
end

end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  puts "Give me two numbers"
  print "> first:"
  first = gets.chomp.to_i
  print "> second:"
  second = gets.chomp.to_i

  #print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide:"
  case $selection
  when "add"
    puts "\nanswer: #{first + second}"
  when "subtract"
    puts "\nanswer: #{first - second}"
  when "multiply"
    puts "\nanswer: #{first * second}"
  when "divide"
    puts "\nanswer: #{first.to_f / second.to_f} "
  else
    puts "\nOh crap...how'd that happen..."
    puts "I guess you never told me what maths to do...EMBARASSING\n\n"
  end

end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  puts "Do you want to raise your first number to a [power] or find it's [sqrt] "
  print ">"
  $advanced = gets.chomp

  puts "Alright, now give me some numbers!"
  print "> first: "
  first = gets.chomp.to_i

  case $advanced
  when "power"
    print "> second:"
    second = gets.chomp.to_i
    puts "\nanswer: #{first} to the #{second} power is #{first**second}"
  when "sqrt"
    puts "\nanswer: The square root is #{Math.sqrt(first)}"
  else
    puts "\nOh crap...how'd that happen..."
    puts "I guess you never told me what maths to do...EMBARRASSING\n\n"
  end
end

def crazy_stuff
  puts "So you wanna do some crazy stuff, eh?"
  puts "Here are your choices"
  puts "- Sine"
  puts "- Cosine"
  puts "- Tangent"
  puts "- Factorial"
  print ">"
  choice = gets.chomp.downcase

  puts "\nOK Wildman...er...female...er...Wildperson"
  puts "Give your number to me!"
  number = gets.chomp.to_i
  number_alt = number


  case choice
  when "sine"
    puts ">answer: #{Math.sin(number)}"
  when "cosine"
    puts ">answer: #{Math.cos(number)}"
  when "tangent"
    puts ">answer: #{Math.tan(number)}"
  when "factorial"
    factorial = 1
    
    while number > 1
    factorial = factorial * number
    number -=1
    factorial
    end
    
    puts ">answer: #{number_alt}! is #{factorial}"
  else
    puts "\nOh crap...how'd that happen..."
    puts "I guess you never told me what maths to do...EMBARASSING\n\n"
  end

end

response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'

  response = menu
end
