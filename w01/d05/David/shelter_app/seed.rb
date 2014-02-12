require 'pry'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

$shelter = Shelter.new("Dope Ass Animal Shelter")

animals = [["dylan", "dog", ["ball", "frisbee", "rope"]], ["george", "cat", ["birds", "string", "mouse"]], ["wolfie", "doge", ["squirrels", "rocks"]]]

animals.each do |x|
  name = x[0].capitalize
  species = x[1].capitalize
  toys = x[2]
  $shelter.animals[name.downcase] = Animal.new(name, species, toys)
end

clients = [["david", "36"], ["aki", "27"], ["lauren", "27"]]

clients.each do |x|
  name = x[0].capitalize
  age = x[1]
  $shelter.clients[name.downcase] = Client.new(name, age)
end

# animals = {name: ["dylan", "george", "wolfie"], species: ["Dog", "Cat", "Dog"], toys: ["ball, frisbee, rope", "birds, string, mouse", "squirrels, rock"]}

# animals.each do | x, y |
#  iterator = 0
#   if x == :name
#     name = y[iterator]
#   elsif x == :species
#     species = y[iterator]
#   elsif x == :toys
#     toys = y[iterator.split(",")]
#   end
#   $shelter.animals["name.downcase"] = Animal.new(name, species, toys)
#   binding.pry
# end



# $shelter.animals["dylan"] = Animal.new("Dylan", "Dog", ["ball, frisbee, rope"] )
# $shelter.animals["george"] = Animal.new("George", "Cat", ["birds", "string", "mouse"])
# $shelter.animals["wolfie"] = Animal.new("Wolfie", "Dog", ["squirrells", "rocks"])

# $shelter.clients["david"]  = Client.new("David", "36")
# $shelter.clients["aki"]  = Client.new("Aki", "27")
# $shelter.clients["lauren"]  = Client.new("Lauren", "27")

