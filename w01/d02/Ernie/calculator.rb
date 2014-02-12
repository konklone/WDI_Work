# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu 
  puts "Please choose a function basic, advanced, or quit"
  return gets.chomp
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc 
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  selector = gets.chomp.downcase
    if selector == "add"
        puts " PLease enter one number and press enter then another and press enter"
        addone = gets.chomp
        addtwo = gets.chomp
        puts addone.to_f + addtwo.to_f
    end

    if selector == "subtract"
        puts " PLease enter one number and press enter then another and press enter"
        addone = gets.chomp
        addtwo = gets.chomp
        puts addone.to_f - addtwo.to_f
    end

    if selector == "multiply"
        puts " PLease enter one number and press enter then another and press enter"
        addone = gets.chomp
        addtwo = gets.chomp
        puts addone.to_f * addtwo.to_f
    end


    if selector == "divide"
        puts " PLease enter one number and press enter then another and press enter"
        addone = gets.chomp
        addtwo = gets.chomp
        puts addone.to_f / addtwo.to_f
    end
end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc 
  print "(p)ower, (s)qrt: "
    selector = gets.chomp.downcase
    
  if selector == "power"
    puts "Please enter a number"
    number_1 = gets.chomp.to_i
    puts "Please enter exponet"
    number_2 = gets.chomp.to_i
      puts number_1 ** number_2
      
    elsif selector == "sqrt"
      puts "Please enter a number you want the sqrt root of"
      sqrt_num = gets.chomp.to_i
      puts sqrt_num * 2 
      
    end
        
 end  


response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'quit'
  if response == "basic" 
      basic_calc
      elsif response == "advanced" 
        advanced_calc
  end
  response = menu
end


