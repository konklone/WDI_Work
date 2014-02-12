 ### Magician

person1 = {name: "David Copperfield", hometown: "Metuchen"}
person2 = {name: "Syphilis Rivendell", hometown: "Brooklyn"}
dog = {name: "Sparky",  hometown: "Manhattan"}

# Takes a person hash as a parameter and prints out what their name is and where they are from
def say_persons_name(name: "n", hometown: "h")
   puts "#{name} is from #{hometown}."
end

# # ANOTHER way to define the above method
# def says_persons_name(person)
#    puts "#{person[:name]} is from #{person[:hometown]}."
# end

# Takes a dog hash as a parameter and prints out "Woof" what their name is and then "Woof" again
def say_dogs_name(name: "n", hometown: "h")
   puts "Woof! #{name}! Woof!"
end

# Takes a person hash as a parameter and prints out what their name is and the statement that they are doing a magic trick
def do_magic(person)
   puts "#{person[:name]} is doing a magic trick!"
end

########### DEFINITIONS OVER, PROGRAM BEGINS ##############

say_persons_name(person1)

say_persons_name(person2)

say_dogs_name(dog)

do_magic(person1)