require_relative "./shelter"
require_relative "./animal"
require_relative "./client"
require_relative "./main"
 
@first_shelter = Shelter.new("WDISPCA")
 
justin = Client.new("Justin", "33")
@first_shelter.clients_add(justin)
 
sheila = Client.new("Sheila", "52")
@first_shelter.clients_add(sheila)
 
dan = Client.new("Dan", "24")
@first_shelter.clients_add(dan)
 
an1 = Animal.new("Fido", "dog")
an1.add_toys("bone")
an1.add_toys("squeeky")
@first_shelter.animal_add(an1)
 
an2 = Animal.new("Fido", "dog")
an2.add_toys("frizbee")
@first_shelter.animal_add(an2)
 
an3 = Animal.new("Fido", "dog")
an3.add_toys("bone")
@first_shelter.animal_add(an3)