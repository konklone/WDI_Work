person1 = {name: "David Copperfield", hometown: "Metuchen"}
person2 = {name: "Syphilis Rivendell" , hometown: "Brooklyn"}
dog = {name: "Sparky", hometown: "Manhattan"}

# created to try and place a random person in a method -- unsuccessful :-(())
large_array = ["person1", "person2", "dog"]

def say_persons_info(person)
  puts "Hi #{person[:name]} from #{person[:hometown]}."
end

def say_dogs_info(dog)
  puts "Woof #{dog[:name]} woofff."
end

def do_magic(person)
  puts "#{person[:name]} is about to do a magic trick...wait for it"
end

say_persons_info(person1)
say_persons_info(person2)
say_dogs_info(dog)
do_magic(person1)

#attempt to put random person in method, but gets name as a string rather than a hash
#say_persons_info(large_array.sample.to_a)
