person1 = {name: "David Copperfield", hometown: "Metuchen", }

person2 = {name: "Syphilis Rivendell", hometown: "Brooklyn"}

dog = {name: "Sparky", hometown: "Manhattan"}

######################################################

puts "Did you mean person1 or person2?"

def say_persons_name person

  puts "Oh, #{person[:name]} is from #{person[:hometown]}."

end

say_persons_name (person1)
say_persons_name (person2)

def say_dogs_name (dog)
   puts "Woof, #{dog[:name]}. Woof!"

end

say_dogs_name (dog)

def do_magic (person)
  puts "#{person[:name]} is doing a magic tricks in his hometown, #{person[:hometown]}"

end

do_magic (person1)