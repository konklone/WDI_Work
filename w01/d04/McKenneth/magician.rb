person1 = {name: "David Copperfield", hometown: "Metuchen"}
person2 = {name: "Syphilis Rivendell", hometown: "Brooklyn"}
dog = {name: "Sparky", hometown: "Manhattan"}

def say_persons_name(hash)
    puts "name is : " + hash[:name]
    puts "hometown is : " + hash[:hometown]
end

def say_dogs_name(hash)
    puts "Woof"
    puts "Dogs name is : " + hash[:name]
    puts "Woof"
end

def do_magic(hash)
    puts "#{hash[:name]} is doing a magic trick"
end

say_persons_name(person1)
say_persons_name(person2)
say_persons_name(dog)
do_magic(person1)