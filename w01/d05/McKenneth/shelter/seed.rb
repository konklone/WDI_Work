require_relative 'main.rb'
require_relative 'shelter.rb'
require_relative 'client.rb'
require_relative 'animal.rb'

#------------------SEED ANIMALS

charmander = Animal.new("Charmander", "Fire-type", ["Candle"])
bulbasaur = Animal.new("Bulbasaur", "Plant-type", ["UV lamp"])
squirtle = Animal.new("Squirtle", "Water-type", ["Bubble Gun"])

#------------------SEED CLIENTS

ash = Client.new("Ash", "10", ["Pikachu"])
misty = Client.new("Misty", "10", ["Togepi"])
brock = Client.new("Brock", "15", ["Onix"])

#-------------------END SEEDS

#Makes a shelter and adds seeds
new_shelter = Shelter.new("Welcome to The Pokecenter!")
new_shelter.add_pet(charmander)
new_shelter.add_pet(bulbasaur)
new_shelter.add_pet(squirtle)
new_shelter.add_client(ash)
new_shelter.add_client(misty)
new_shelter.add_client(brock)

#takes seeded shelter and passes into main
seed = MakeShelter.new(new_shelter)
