def populate_shelter(shelter)

	animal1 = Animal.new("Stella", "og")
	animal2 = Animal.new("Lucy", "dog")
	animal3 = Animal.new("Tom", "cat")

	person1 = Client.new("Nichol", 37)
	person2 = Client.new("Bob", 72)
	person3 = Client.new("Sarah", 38)

	shelter.animals << animal1
	shelter.animals << animal2
	shelter.animals << animal3

	shelter.clients << person1
	shelter.clients << person2
	
end
