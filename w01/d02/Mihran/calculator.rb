####this is the calculator initial prompt####
def get_two_numbers
  puts "enter first number"
  $first_number = gets.chomp.to_i
  puts "enter second number"
  $second_number = gets.chomp.to_i
end
####################################


#######this is the basic calculator#########
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  $basic_menu_choice = gets.chomp.downcase

   if $basic_menu_choice == "a"
    get_two_numbers
    puts $first_number + $second_number
  end

   if $basic_menu_choice == "s"
    get_two_numbers
    puts $first_number - $second_number
  end

   if $basic_menu_choice == "m"
    get_two_numbers
    puts $first_number * $second_number
  end

   if $basic_menu_choice == "d"
    get_two_numbers
    puts $first_number / $second_number
  end
end
####################################


###this is the advanced calculator#######
def advanced_calc
  print "(p)ower, (s)qrt:"
  $advanced_menu_choice = gets.chomp.downcase

  if $advanced_menu_choice == "p"
    get_two_numbers
    puts $first_number**$second_number
  end

  if $advanced_menu_choice == "s"
    puts "enter a number to find square root of "
    $square_root_of_this_number = gets.chomp.to_i
    puts Math.sqrt($square_root_of_this_number)
  end
end
####################################

#### this is the calculator selector######
def calc

  puts "(b)asic, (a)dvanced, or (q)uit?"
  $response = gets.chomp.downcase

    if $response == "b"
      basic_calc
    end

     if $response == "a"
      advanced_calc
    end

  if $response == "q"
    #exit 
  end

end
################################


###this is all it takes to run the program####

puts "Welcome to the calculator"

until $response == "q"
calc
end

#################################

