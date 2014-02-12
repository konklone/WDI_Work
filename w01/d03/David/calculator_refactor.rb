require 'pry'

#prints initial menu for calculator
def menu
  puts "(b)asic, (a)dvanced, or (q)uit:"
  request= gets.chomp.downcase
end

#prints the basic calulator menu prompt a/s/m/d
def basic_calc
        print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
        return gets.chomp.downcase
end

#prints the advanced calculator menu 
def advanced_calc
print "(p)ower, (s)qrt: "
end

#gets two numbers from the user
  def get_two_numbers
    puts "give me a number"
    number1 = gets.chomp.to_i
    puts "give me another number"
    number2 = gets.chomp.to_i
    both_numbers_output = [number1, number2]
  end

  puts menu
  request = menu

  if request== "b"

    #prints add/sub/mult/etc....
    basic_calc
    #gets two numbers from the user
    both_numbers = get_two_numbers
    if request == "a"
     puts "your answer is #{both_numbers[0] + both_numbers[1]}"
    elsif request == "s"
      puts "your answer is #{both_numbers[0] - both_numbers[1]}"
    elsif request == "m"
      puts "your answer is #{both_numbers[0] * both_numbers[1]}"
    elsif request == "d"
      puts "your answer is #{both_numbers[0] / both_numbers[1]}"
    end
  end

 
# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
if request== "a"

#prints advanced calculator menut
advanced_calc

request3 = gets.chomp.downcase
if request3 == "p"
  puts "give me a number"
  number9 = gets.chomp.to_i
  puts "give me another number"
  number10 = gets.chomp.to_i
  puts "your answer is #{number9**number10}"
end
if request3 == "s"
  puts "give me a number"
  number11 = gets.chomp.to_i
  puts "your answer is #{Math.sqrt(number11)}"
binding.pry
end
end
end


######### DEFINITIONS OVER....PROGRAMS BEGIN #########

response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'

        response = menu
end