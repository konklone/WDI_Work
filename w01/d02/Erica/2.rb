# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts 'basic, advanced, or quit'
  $answer = gets.chomp.downcase
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  $answerx = gets.chomp.downcase
end

def advanced_calc
  print '(p)ower, (s)qrt: '
  $answery = gets.chomp.downcase
end

menu
if $answer == "basic"
  basic_calc
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
    $answer == "basic"
    if $answerx == "a"
    puts 'Give me a number'
    number1 = gets.chomp.to_i
    puts 'Give me another number'
    number2 = gets.chomp.to_i
    puts "the answer is #{number1 + number2}"   
  end
  if $answerx == "s"
    puts 'Give me a number'
    number3 = gets.chomp.to_i
    puts 'Give me another number'
    number4 = gets.chomp.to_i
    puts "the answer is #{number3 - number4}"
  end
  if $answerx == "m"
  puts 'Give me a number'
  number5 = gets.chomp.to_i
  puts 'Give me another number'
  number6 = gets.chomp.to_i
  puts "the answer is #{number5 * number6}"
  end
  if $answerx == "d"
  puts 'Give me a number'
  number7 = gets.chomp.to_i
  puts 'Give me another number'
  number8 = gets.chomp.to_i
  puts "the answer is #{number7 / number8}"
  end
    
# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
advanced_calc
  if answer == 'p'
    puts 'Give me a number'
  number9 = gets.chomp.to_i
  puts 'Give me another number'
  number10 = gets.chomp.to_i
  puts "the answer is #{number9 ** number10}"
  end
    
  advanced_calc
  answer = get.chomp.downcase
  if response == 's'
    puts 'Give me a number'
  number11 = gets.chomp.to_i
  puts 'Give me another number'
  number12 = gets.chomp.to_i
  puts "the answer is #{number11 sqrt(number12)}"
end

response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'quit'

  response = menu
end
