person = { name: "David Copperfield", hometown: => "Metuchen"}
person2 = {name: "Syphilis Rivendell", hometown: "Brooklyn"}
dog = {name: "Sparky", hometown: "Manhattan"}


def say_persons_name(person)
  puts "#{person[:name]} is from #{person[:hometown]}"
end

say_persons_name(person1)
say_persons_name(person2)

def say_dogs_name (dog)
 puts "woof #{dog[:name]} woof"
end

say_dogs_name(dog)

def do_magic(person)
  puts "#{person[:name]} is doing a magic trick."
end

do_magic(person1)
  
  say_persons_name(person1)

  say_Dogs_name(dog)

  do_magic(person1)

- Write a `say_persons_name` function that takes a person hash as a parameter and prints out what their name is and where they are from
- Write a `say_dogs_name` function that takes a dog hash as a parameter and prints out "Woof" what their name is and then "Woof" again
- Write a `do_magic` function that takes a person hash as a parameter and prints out what their name is and the statement that they are doing a magic trick
- Call the say_persons_name function with person1 as a parameter
- Call the say_persons_name function with person2 as a parameter
- Call the say_dogs_name function with dog as a parameter
- Call the do_magic function with person1 as a paramete

### if the the input is string person1 then use hash person1