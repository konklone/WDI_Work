  

    #correct possible input for main menu
    good_input = ["b", "a", "q"]
     
    #will work also
    ok_input = {"basic" => "b", "basci" => "b", "advanced" => "a", "quit" => "q"}
     
    # is the calculator???
    def menu
      puts "(b)asic, (a)dvanced, or (q)uit:"
      gets.chomp.downcase
    end
     
    #basic_calc prints the menu prompt a/s/m/d
    def basic_calc
      print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
      gets.chomp.downcase
    end
     
    #adv_calc prints prompt p/sqrt
    def advanced_calc
      print "(p)ower, (s)qrt: "
      gets.chomp.downcase
    end
     
    #get_two_numbers asks for two numbers and returns them, in order
    def get_two_numbers
      puts "give me a number"
      number1 = gets.chomp.to_i
      puts "give me another number"
      number2 = gets.chomp.to_i
      both_numbers_output = [number1, number2]
    end
     
    ########### DEFINITIONS OVER, PROGRAM BEGINS ##############
     
    response = menu
     
    # This process should continue until the user selects a quit option from the menu
     
    while response != 'q'
     
      request = menu
     
      mapped_request = ok_input[request]
     
      if mapped_request != nil
        request = mapped_request
      end
     
      if (request != bad_input[0]) && (request != bad_input[1]) && (request != bad_input[2])
        puts "Bad input!"
      end
     
      if request.to_sym == :b
     
        # prints add/sub/mult/etc...
        request2 = basic_calc
     
        #obviously, gets two numbers....
        both_numbers = get_two_numbers
     
        case request2.to_sym
          when :a
            puts "your answer is #{both_numbers[0] + both_numbers[1]}"
          when :s
            puts "your answer is #{both_numbers[0] - both_numbers[1]}"
          when :m
            puts "your answer is #{both_numbers[0] * both_numbers[1]}"
          when :d
            puts "your answer is #{both_numbers[0] / both_numbers[1]}"
        end
     
      end
     
      if request == "a"
     
        #adv_calc prints prompt p/sqrt
        request3 = advanced_calc
     
        if request3 == "p"
          #obviously, gets two numbers....
          both_numbers = get_two_numbers
          puts "your answer is #{both_numbers[0] ** both_numbers[1]}"
        end
     
        if request3 == "s"
          puts "give me a number"
          number11 = gets.chomp.to_i
          puts "your answer is #{Math.sqrt(number11)}"
        end
     
      end
     
    end

