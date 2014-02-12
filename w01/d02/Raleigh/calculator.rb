# MyCalc Ruby App

# Definitions
def menu
  puts "\n***MyCalc***\n"
  puts "(b)asic, (a)dvanced, or (q)uit:"
  $user_choice = gets.chomp.downcase
end

def basic_calc
   print "Would you like to (a)dd, (s)ubtract, (m)ultiply, or (d)ivide?"
   user_choice_oper = gets.chomp.downcase

    oper_choice_as_string = case user_choice_oper
    when "a"
      "add"
    when "s"
     "subtract"
    when "m" 
     "multiply"
    when "d"
     "divide"
    else 
     puts "\nIncorrect input. Please enter 'a' for addition, 's' for subtraction, 'm' fomultiplication, 'd' for division or 'r' to return to the main screen. \n"    
     basic_calc
    end

      puts "The first number you would like to #{oper_choice_as_string}: "
      num_one = gets.chomp.to_i
      puts "The second number you would like to #{oper_choice_as_string}: "
      num_two = gets.chomp.to_i

    if user_choice_oper == "a"
      puts "Your answer is #{num_one + num_two}."
    elsif user_choice_oper == "s"
      puts "Your answer is #{num_one - num_two}."
    elsif user_choice_oper == "m"
      puts "Your answer is #{num_one * num_two}."
    else
      puts "Your answer is #{num_one / num_two}."
    end
  end

def advanced_calc
    print "Would you like to find a (p)ower or a (s)quare root?"
    adv_user_choice_oper = gets.chomp.downcase

    if adv_user_choice_oper == "p"
      puts "Your first number: "
      adv_one = gets.chomp.to_i
      puts "#{adv_one} to the power of: "
      adv_two = gets.chomp.to_i
      puts "Your answer is #{adv_one ** adv_two}."
    elsif adv_user_choice_oper == "s"
      puts "Find the square root of: "
      sqroot = gets.chomp.to_f
      puts "The square root of #{sqroot} is #{Math.sqrt(sqroot)}"
    else
      puts "\nIncorrect input. Please enter 'p' for power or  's' for square root.\n"
      advanced_calc
    end
end

# Call menu
menu 

while $user_choice != "q"
  if $user_choice == "b"
    basic_calc
  elsif $user_choice == "a"
    advanced_calc
  else
    puts "\nIncorrect input. Please enter 'b' for basic calculations, 'a' for advanced calculations, or 'q' to quit.\n"
    menu
  end
end
