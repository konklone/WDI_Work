person1 = { name: "David Copperfield", hometown: "Metuchen"}
person2 = { name: "Syphilis Rivendell", hometown: "Brooklyn"}
dog = { name: "Sparky", hometown: "Manhattan"}

#say person's name function
def say_persons_name(person_hash)
  puts "Your name is #{person_hash[:name]} and you're from #{person_hash[:hometown]}."
end

#say dog's name function
def say_dogs_name(dog_hash)
  puts "woof #{dog_hash[:name]} woof!."
end

#do magic function
def do_magic(person_hash)
  puts "#{person_hash[:name]} is doing maaaaaagic!."
end

#call the functions
# - Call the say_persons_name function with person1 as a parameter
# - Call the say_persons_name function with person2 as a parameter
# - Call the say_dogs_name function with dog as a parameter
# - Call the do_magic function with person1 as a parameter

say_persons_name(person1)
say_persons_name(person2)
say_dogs_name(dog)
do_magic(person1)