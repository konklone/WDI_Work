require './animal'
require './client'
require './shelter'
require './seed.rb'

#NOTES##########################################################

#distinction bet pets and shelter animals

#later adjust for multiple shelters:
	#methods
	#variables
	#add another client param specifying shelter
	#exist? statement outside current structure for add shelter

	#create hash in Self scope
	#of shelters
	#hash <- shelters <- clients <- animals

	#take animal from Shelter array and add to Client array

#methods##########################################################

def menu
	puts "What would you like to do manneeeeeee: create (a)nimal, (c)lient,\n (da) display all animals, (dc) display all clients, (ad)opt an animal, or (q)uit?"
	gets.chomp.downcase
end

def error_msg
	"Not valid option. Choose again."
end

#change input into individual enters
def get_animal_input
	puts "In order state: name, client, and species"
	@animal_input = gets.chomp.scan(/\w+/)
end

#change input into individual enters
def get_client_input
	puts "In order state: name then age"
	@client_input = gets.chomp.scan(/\w+/)
end

def get_adoption_input
	puts "Which animal and which client?"
	@adoption_input = gets.chomp.scan(/\w+/)
end

def client_exist?(client_instance)
	$shelter1.clients.include?(client_instance.to_sym)
end

def animal_exist?(client, animal)
	client.animals.values.include?(animal.to_sym)
end

def y_or_n_create_client
	puts "That client doesn't exist."
	puts "Do you want to create him/her then add the animal to him/her? (y)es or (n)o?"
	gets.chomp.downcase[0]
end

def add_animal(name, client_instance, species)
	$shelter1.clients[client_instance.to_sym].animals[name.to_sym] = Animal.new(name, client_instance, species)
end

def add_client(name, age)
	$shelter1.clients[name.to_sym] = Client.new(name, age)
end

#################################################################

choice = menu
#menu loop
until choice == 'q'
	#display menu options
	case choice
	#1 create animal
	when 'a'
		#animal input
		get_animal_input
		#does client specified / owner exist? yes

		if client_exist?(@animal_input[1])	
			#add animal to specified client
			add_animal(@animal_input[0], @animal_input[1], @animal_input[2])
		else

			#create? yes or no loop
			decision = y_or_n_create_client					
				until decision == 'n'
					#do you want to create client and add animal?
					case decision
					when 'y'
						get_client_input
						#create client
						add_client(@client_input[0], @client_input[1])
						
						#add animal to created client
						add_animal(@animal_input[0], @animal_input[1], @animal_input[2])
						puts "animal added to create client"
						break
					#no
					else
						#reprompt for (yes or no loop)
						puts error_msg
						decision = y_or_n_create_client
					end		
				end
		end

	#2 create client
	when 'c'
		#client input
		get_client_input
		#does client exist? yes
		if client_exist?(@client_input[0])
			#reprompt (client input)
			puts "Sorry, but that client already exists"
		#no
		else
			#create client
			puts "creating client"
			add_client(@client_input[0], @client_input[1])
		end
	
	#3 display all animals
	when 'da'
		puts 'Displaying all shelter animals'
		$shelter1.list_animals

	#4 display all clients
	when 'dc'
		puts "Display all clients"
		$shelter1.list_clients


	when 'ad'
		get_adoption_input

		if client_exist?(@adoption_input[1])
		#facilitate adoption
		$shelter1.facilitate_adoption(@adoption_input[0], @adoption_input[1])
		else
			puts "That client does not exist"
		end

	when 'p'
		get_adoption_input

		if client_exist?(@adoption_input[1])
		
			if animal_exist?(@adoption_input[1], @adoption_input[0])
				#facilitate putting up
				$shelter1.facilitate_put_up(@adoption_input[0], @adoption_input[1])
			else
				puts "That animal does not exist"
			end

		else
			puts "That client does not exist"
		end

	#else error message
	else
		puts error_msg
		choice = menu
	end

	#reprompt for menu input
	choice = menu
end