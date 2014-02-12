#Welcome Menu for clients 
def menu 
  puts "Welcome to the Manhattan Animal Shelter!\n"
  puts "Please select what you would like to do."
  #puts "The Manhattan Animal Shelter has "
  #string here listing name of shelter, number of clients, number of animals 
  puts "1 : List Animals"
  puts "2 : List Clients"
  puts "3 : Create Client"
  puts "4 : Create Animal"
  puts "5 : Adopt Animal"
  puts "6 : Return Animal"
  puts "q : QUIT!"
  gets.chomp.downcase.to_s 
end 


###################PROGRAM BEGINS#########################
response = menu 

while response != "q"
  case response 
  when "1"
    puts list_animals 
    #list the names of the animals in the shelter 
  when "2"
    puts list_clients 
  when "3"
    
  end 
end 


