person1 = {"Name" => "David Copperfield", "Home Town" => "Metuchen"}
person2 = {"Name"=> "Syphilis Rivendell", "Home Town"=>"Brooklyn"}
dog = {"Name"=>"Sparky", "Home Town"=>"Manhattan"}


def say_persons_name(person_hash)
	puts person_hash["Name"]
	puts person_hash["Home Town"]
end

def say_dogs_name(dog_hash)
	puts "woof"
	puts dog_hash["Name"]
	puts "woof"
end

def do_magic(person_hash)
	puts "#{person_hash["Name"]} is doing a magic trick!"
end


	say_persons_name(person1)
	say_persons_name(person2)
	say_dogs_name(dog)
	do_magic(person1)
