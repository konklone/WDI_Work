# ### Magician
# - Create a file called magician.rb
# - Create a hash for a person whose name is "David Copperfield" whose hometown is "Metuchen" 
# and store it in a variable called person1
# - Create a hash for a person whose name is "Syphilis Rivendell" whose hometown is "Brooklyn" 
# and store it in a variable called person2
# - Create a hash for a dog whose name is "Sparky" whose hometown is "Manhattan" and store it 
# in a variable called dog
# - Write a `say_persons_name` function that takes a person hash as a parameter and prints out 
# what their name is and where they are from
# - Write a `say_dogs_name` function that takes a dog hash as a parameter and prints out "Woof" what their name is and then "Woof" again
# - Write a `do_magic` function that takes a person hash as a parameter and prints out what 
# their name is and the statement that they are doing a magic trick
# - Call the say_persons_name function with person1 as a parameter
# - Call the say_persons_name function with person2 as a parameter
# - Call the say_dogs_name function with dog as a parameter
# - Call the do_magic function with person1 as a parameter

person1 = { name: "David Copperfield", town: "Metuchen"}
person2 = { name: "Syphilis Rivendell", town: "Brooklyn"}
dog = { name: "Sparky", town: "Manhattan"}

def say_person_name(person) 
	puts person[:name]
	puts person[:town]
end

def say_dogs_name(dog)
	puts dog[:name]
	puts "Woof"
end

def do_magic(person)
	puts "#{person[:name]} is doing magic"
end

say_person_name(person1)

say_person_name(person2)

say_dogs_name(dog)

do_magic(person1)