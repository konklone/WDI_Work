puts "***Adopshun Klinic***"
puts "Menu"

def main_menu
puts "What would you like to do? Create an (a)nimal, build your (p)rofile?, or (q)uit?"
	choice = gets.chomp.downcase
			if choice = "a"
				puts "What kind of animal would you like to create? (c)at or (d)og?"
				animal = gets.chomp
				if animal = "c"
					puts "Great! What is your cat's name?"
					cat_name = gets.chomp.downcase
					puts "What is your cat's age?"
					cat_age = gets.chomp.downcase
					puts "How many toys does your cat have?"
					cat_toys = gets.chomp.downcase
					puts "Thanks! #{cat_name.capitalize} will have a great home here. We will make sure she always has her #{cat_toys} toys with her!"
				elsif animal = "d"
					puts "Great! What is your dog's name?"
					dog_name = gets.chomp.downcase
					puts "What is your dog's age?"
					dog_age = gets.chomp.downcase
					puts "How many toys does your dog have?"
					dog_toys = gets.chomp.downcase
					puts "Thanks! #{dog_name.capitalize} will have a great home here. We will make sure she always has her #{dog_toys} toys with her!"
			end 
			elsif choice = "p"
		 	puts "What is your name?"
		 		name = gets.chomp.downcase
	 		puts "What is your age?"
	 			age = gets.chomp.downcase
	 			puts "How many pets do you have?"
	 			pets = gets.chomp.downcase
			elsif "q"
			puts "Goodbye!"
			else 
			puts "OK that wasn't an option. Please start again."
end

end
end
main_menu