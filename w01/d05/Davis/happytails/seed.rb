#create new shelter #available to ../ of instances of Self scope
$shelter1 = Shelter.new("shelter1")

#create clients
$shelter1.clients["Bill".to_sym] = Client.new("Bill", 34)
$shelter1.clients["Jone".to_sym] = Client.new("Jone", 16)

#create animals for clients
$shelter1.clients["Bill".to_sym].animals["Froggy".to_sym] = Animal.new("Froggy", "Bill", "dog")
$shelter1.clients["Jone".to_sym].animals["Felix".to_sym] = Animal.new("Felix", "Jone", "cat")

#shelter animals
$shelter1.shelter_animals["Figo".to_sym] = Animal.new("Figo", nil, "dog")
