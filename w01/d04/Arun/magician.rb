person1 = {name: "David Copperfield", hometown: "Metuchen"}
person2 = {name: "Syphilis Rivendale", hometown: "Brooklyn"}
dog = {name: "Sparky", hometown: "Manhattan"}

#puts "Do you mean person1 or person2?"
#persons_name = gets.chomp.downcase
#trying to get it as a string...but code is written as a hash below


def say_persons_name(person)
	puts "#{person[:name]} is from #{person[:hometown]}"
end

def say_dogs_name(canine)
	puts "Woof"
	puts "#{dog[:name]}"
	puts "Woof"
end

def do_magic(person)
	puts "#{person[:name]} is doing magic!"
end



say_persons_name(person1)
say_dogs_name(dog)
do_magic(person1)


