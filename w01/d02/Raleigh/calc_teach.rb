# Definitions

# correct possible input for main menu
good_input = ["b", "a", "q"]

#will work also
ok_input = {"basic"=>"b", "advanced"=>"a", "quit"=>"q"}

# get_two_num asks for two numbers and then returns them
def get_two_num 
  puts "give me a number"
  number1 = gets.chomp.to_i
  puts "give me another number"
  number2 = gets.chomp.to_i
  both_num_output = [number1, number2] #RETURN as a list(array)
end

# basic_calc prints add, subtract, multiply... and gets input
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  user_input = gets.chomp.downcase
  # "return user_input" is implied (Ruby methods ALWAYS returns the last expression)
end

# advanced_calc prints...
def advanced_calc
  print "(p)ower, (s)qrt: "
end

def menu(ok_input, map_input)
  puts "(b)asic, (a)dvanced, or (q)uit:"
  $request1 = gets.chomp.downcase

  mapped_request = map_input[$request1]

    if mapped_request != nil
      $request1 = mapped_request
    end

  if $request1 == "b"
    # prints add, subtract, multiply, divide & gets user_input
    request2 = basic_calc

    # gets two numbers
    both_num = get_two_num

    case request2
    when "a"
      puts "your answer is #{both_num[0] + both_num[1]}"
    when "s"
      puts "your answer is #{both_num[0] - both_num[1]}"
    when "m"
      puts "your answer is #{both_num[0] * both_num[1]}"
    when "d"
      puts "your answer is #{both_num[0] / both_num[1]}"
    end

  end

    if $request1 == "a"
      # prints power, sqrt
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
      end
  end
end
# Definitions End

# Program Begins
 
response = menu(good_input, ok_input)

# This process should continue until the user selects a quit option from the menu
while response != 'q'
 
        response = menu
end