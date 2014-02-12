# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Basic, Advanced, or Quit"
  $answer = gets.chomp.downcase
end
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
  menu
  def basic_calc
    puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  end
  if $answer.downcase == "Basic"
end
  basic_calc
  if $answer == "a"
    puts "Give me a number"
    number1 = gets.chomp.to_i
    puts "Give me another number"
    number2 = gets.chomp.to_i
    puts "your answer is #{number1 + number2}"
  end
  basic_calc
  $answer3 == gets.chomp.downcase
  if  $answer3 == "s"
  puts "Give me a number"
  number3 = gets.chomp.to_i
  puts "Give me another number"
  number4 = gets.chomp.to_i
  puts "your answer is #{number3 - number4}"
end
  



def basic_calc
  

  end
  
# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "

end


response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'

  response = menu
end
