
   def menu 
      puts "***Rock, Paper, Scissors***\n"
      puts "Would you like to (p)lay of (q)uit?"
      response = gets.chomp.downcase
   end

### Definitions End, Program Begins ###

   response = menu

   while response !="q"
      puts "Choose (r)ock, (p)aper, or (s)cissors:"
      user_choice = gets.chomp.downcase
      comp_choice = ["r", "p", "s"].sample

      if user_choice == comp_choice
         puts "It's a tie!"
      else
         case user_choice
         when "r"
            if comp_choice == "p"
               puts "Paper beats rock..."
               puts "You lose!"
            elsif comp_choice == "s"
               puts "Rock beats scissors..."
               puts "You win!"
            end
         when "p"
            if comp_choice == "r"
               puts "Paper beats rock..."
               puts "You win!"
            elsif comp_choice == "s"
               puts "Paper beats scissors..."
               puts "You lose!"
            end
         when "s"
            if comp_choice == "r"
               puts "Rock beats scissors..."
               puts "You lose!"
            elsif comp_choice == "p"
               puts "Scissors beats paper..."
               puts "You win!"
            end
         end      
      end
   end
         
      