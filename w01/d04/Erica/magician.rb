person1 = {name: "David Copperfield", hometown: "Metuchen"}
person2 = {name: "Syphilis Rivendell", hometown: "Brooklyn"}
dog = {name: "Sparky", hometown: "Manhattan"}
# a hash with keys that are symbols and values that are strings

# puts "Do you mean person1 or person2?"
# persons_name = gets.chomp.downcase

def say_persons_name(person) # you define (person) when you execute it
    puts "Oh, #{person[:name]} is from #{person[:hometown]}." 
end

# access things in a hash is name of the hash, use [] and remember the use of symbols 

def say_dogs_name(dog)
  puts "woof"
  puts "#{dog[:name]}"
  puts "woof"
end

def do_magic (person)
  puts "#{person[:name]} is doing magic!"
end

say_persons_name(person1)
say_persons_name(person2)
say_dogs_name(dog)
do_magic(person1)
do_magic(dog)

