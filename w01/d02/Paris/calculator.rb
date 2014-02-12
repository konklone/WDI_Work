
def menu
  puts "(b)asic, (a)dvanced, or (q)uit:"
  $top_menu_choice = gets.chomp.downcase
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  $basic_operator_choice = gets.chomp.downcase
  ask_for_number
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  $advanced_operator_choice = gets.chomp.downcase
  ask_for_number
end

# def ask_for_one_number
#     puts "Give me a number."
#     $users_first_number = gets.chomp.to_i
# end

def ask_for_number
  puts "Give me a number."
  $users_first_number = gets.chomp.to_i
  puts "Give me another number."
  $users_second_number = gets.chomp.to_i
  operator
end

def add 
  $users_first_number + $users_second_number
end 

def sub
  $users_first_number - $users_second_number
end

def mult
  $users_first_number * $users_second_number
end

def divide
  $users_first_number / $users_second_number
end  

def power
  $users_first_number ** $users_second_number
end

def sqrt
  Math.sqrt($users_first_number )
end

# def $operator_one
#   when $advanced_operator_choice == "s"
#     puts "your answer is #{sqrt}"
#   end 
# end 

def operator
  if $basic_operator_choice == "a"
    puts "your answer is #{add}"
  end
  if $basic_operator_choice == "s"
    puts "your answer is #{sub}"
  end
  if $basic_operator_choice == "m"
    puts "your answer is #{mult}"
  end
  if $basic_operator_choice == "d"
    puts "your answer is #{divide}"
  end
  if $advanced_operator_choice == "p"
    puts "your answer is #{power}"
  end
  # here I wasn't able to figure out how to ask for just one number and not two for square root.
  if $advanced_operator_choice == "s"
    puts "your answer is #{sqrt}"
  end
end 

response = menu
# This process should continue until the user selects a quit option from the menu
  while response != 'q'
  if response == "b"
    basic_calc
  end
  if response == "a"
    advanced_calc
  end
end