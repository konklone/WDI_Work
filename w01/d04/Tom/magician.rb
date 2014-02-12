person1 = {:person_name => "David Copperfield", :person_hometown => "Metuchen"}
person2 = {:person_name => "Syphilis Rivendell", :person_hometown => "Brooklyn"}
dog = {:dog_name => "Sparky", :dog_hometown => "Manhattan"}

#puts "Do you mean person1 or person2?"
#persons_name = gets.chomp.downcase

def say_persons_name(person)
  puts "#{person[:person_name]} is from #{person[:person_hometown]}"
end

def say_dogs_name(dog)
  puts "Woof #{dog[:dog_name]} Woof"
end

def do_magic(person)
  puts "#{person[:person_name]} is doing magic!"
end

say_persons_name(person1)
say_dogs_name(dog)
do_magic(person1)

