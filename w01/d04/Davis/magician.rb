person1 = { name: "David Copperfield", 
	hometown: "Metuchen"
}

person2 = { name: "Syphilis Rivdendell",
	hometown: "Brooklyn"
}

dog = { name: "Sparky", 
	hometown: "Manhattan"
}

def say_person_name(person_hash)
	puts "Name: #{hash[:name]} Hometown: #{hash[:hometown]}"
end

def say_dogs_name(dog_hash)
	puts "Woof #{hash[:name]} Woof"
end

def do_magic(person_hash)
	puts "My name is #{hash[:name]} and I am doing magic!"
end

say_person_name(person1)
say_person_name(person2)
say_dogs_name(dog)
do_magic(person1)