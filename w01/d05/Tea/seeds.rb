def load_data(shelter)
  shelter.clients["Patrik"] = Client.new("Patrik", 25)
  shelter.clients["Tea"] = Client.new("Tea", 23)
  shelter.clients["Florence"] = Client.new("Florence", 52)
  shelter.clients["Gershwin"] = Client.new("Gershwin", 45)
  shelter.animals["Remy"] = Animal.new("Remy", "Dog")
  shelter.animals["Rudolpho"] = Animal.new("Rudolpho", "Rhino")
  shelter.animals["Lisa"] = Animal.new("Lisa", "Robot")
  shelter.animals["Foster"] = Animal.new("Foster", "Cat")
  shelter.animals["Isaac"] = Animal.new("Isaac", "Tortoise")
end