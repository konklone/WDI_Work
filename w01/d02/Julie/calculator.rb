# A user should be given a menu of operations
# A user should be able to choose from the menu
#basic advanced or quit
puts "Please choose from the following menu"

def menu 

  puts "(b)asic, (a)dvanced, or (q)uit:"
  input = gets.chomp
    
      if input == "b"
        basic_calc
      elsif input =="a" 
        advanced_calc
      else 
        "q"
      end
end

    


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
    choice = gets.chomp.downcase
      puts "Enter one number"
      num_1 = gets.chomp.to_i
      puts "Enter another number"
      num_2 = gets.chomp.to_i
    case choice
    when "a"
      puts "The sum is is #{num_1 + num_2}"
    when "s"
      puts "Your answer is #{num_1 - num_2}"
    when "m"
      puts "The product is #{num_1 * num_2}"
    when "d"
      puts "Your answer is #{num_1 / num_2}"
    else "Please choose an option"
    end
end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  choice = gets.chomp.downcase
     if choice == "p"
      puts "Enter one number"
      num_1 = gets.chomp.to_i
      puts "Enter another number"
      num_2 = gets.chomp.to_i
      puts "#{num_1} to the power of #{num_2} is #{num_1 ** num_2}"
    elsif choice == "s"
      puts "Enter one number"
      num_1 = gets.chomp.to_i
      puts "The square root of #{num_1} is #{Math.sqrt(num_1)}"
    else "Please choose a menu option"
    end
end



# This process should continue until the user selects a quit option from the menu

response = menu

while response != "q"

  response = menu
end



#once done, make one pull containing this and guess_number