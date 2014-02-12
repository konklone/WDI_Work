   # A user should be given a menu of operations
    # A user should be able to choose from the menu
    # basic menu prompt: add, subtract, multiple, divide
    def basic_calc
          print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
          $request2 = gets.chomp.downcase
          end

    #prints prompt power sqrt
    def advanced_calc
      print "(p)ower, (s)qrt: "
    end
# is the calculator
def get_two_numbers
  puts "give me a number"
  number1 = gets.chomp.to_i
  puts "give me another number"
  number2 = gets.chomp.to_i
  both_numbers = [number 1, number 2]
end


    def menu
    puts "(b)asic, (a)dvanced, or (q)uit:"
    $request = gets.chomp.downcase
    # A user should be able to enter numbers to perform the operation on
    # A user should be shown the result
        if $request == "b"
 
        request2 = basic_calc 
        both_numbers = get_two_numbers
      #     if request2 == "a"
      #         puts "your answer is #{both_numbers[0] + both_numbers[1]}" #use [0] because it represents first number
      #       end
      #      if request2 == "s"
      #         puts "your answer is #{both_numbers[0] - both_numbers[1]}" 
      #   end
      #          if request2 == "m"
      #         puts "your answer is #{both_numbers[0] * both_numbers[1]}" 
      #   end
      #          if request2 == "d"
      #         puts "your answer is #{both_numbers[0] / both_numbers[1]}" 
      #       end
      # end
      case request2 
      when "a"
         puts "your answer is #{both_numbers[0] + both_numbers[1]}" 
      when "s"
         puts "your answer is #{both_numbers[0] - both_numbers[1]}" 
      when "d"
      puts "your answer is #{both_numbers[0] / both_numbers[1]}" 
      when "m"
       puts "your answer is #{both_numbers[0] * both_numbers[1]}" 
      end
      

      # Only tackle these once you get all of the basic_calc operations working
    # A user should be able to enter numbers to perform the operation on
    # A user should be shown the result
         if $request == "a"
        #prints prompt power sqrt
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
      
     
    response = menu
    # This process should continue until the user selects a quit option from the menu
    while response != 'q'
     
            response = menu
    end
