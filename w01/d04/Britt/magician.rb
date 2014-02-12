
# David Copperfield Hash
person1 = { :name => "David Copperfield", :hometown => "Metuchen" }
# Syphilis Rivendell Hash
person2 = { :name => "Syphilis Rivendell", :hometown => "Brooklyn" }
# Dog Hash
dog1 = { :name => "Sparky", :hometown => "Manhattan" }

def say_persons_name(person)
	puts "#{person[:name]} is from #{person[:hometown]}"
end

def say_dogs_name(dog)
	puts "Woof! #{dog[:name]} woof!"
end

def do_magic(person)
	puts "#{person[:name]} is doing magic!"
end

say_persons_name(person1)
say_persons_name(person2)
say_dogs_name(dog1)
do_magic(person1)