
person_1 = {
  :name => "David Copperfield",
  :hometown => "Metuchen"
}

person_2 = {
  :name => "Syphilis Rivendell",
  :hometown => "Brooklyn"
}

dog = {
  :name => "Sparky",
  :hometown => "Manhattan"
}

def say_persons_name (hash_name)
  puts hash_name[:name]
  puts hash_name[:hometown]
end

def say_dog_name (dog_hash_name)
  puts "Woof! #{dog_hash_name[:name]} Woof"
end

def do_magic (hash_name)
  puts "#{hash_name[:name]} just did a magic trick"
end

puts say_persons_name(person_1)
puts say_dog_name(dog)
puts do_magic(person_2)


