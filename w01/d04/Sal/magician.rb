person1 = { name: "David Copperfield", hometown: "Metuchen" }

person2 = { name: "Syphilis Rivendell", hometown: "Brooklyn" }

dog = { name: "Sparky", hometown: "Manhattan" }

def say_persons_name(person)
	puts "#{person[:name]} is from #{person[:hometown]}"
end

def say_dogs_name(dog)
	puts "Woof!"
	puts "#{dog[:name]}"
	puts "Woof!"
end

def do_magic(person)
	puts "#{person[:name]} is doing a trick"
end


say_persons_name(person1)
say_dogs_name(dog)
do_magic(person1)


