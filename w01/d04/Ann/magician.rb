person1 = {name: "David Cooperfield", hometown: "Metuchen"}
person2 = {name: "Syphilis Rivendell", hometown: "Brooklyn"}
dog = {name: "Sparky", hometown: "Manhattan"} 

#Excercise 2 

def say_persons_name(person)
    puts "Oh, #{person[:name]} is from #{person[:hometown]}."
end 

def say_dogs_name(dog) 
    puts "Woof"
    puts "#{dog[:name]}"
    puts "Woof!"
  end 

def do_magic(person)
  puts "#{person[:name]} is doing magic!"
end 

puts say_persons_name(person1)
puts say_dogs_name(dog)
puts do_magic(person1)
 

#.each {|x, y| puts "#{x}: #{y}"}

=begin
dog = h[5, ]

say_persons_name = h {|x| puts "#{x}"}

say_dogs_name = h {}

puts "Woof" + say_dogs_name + "Woof"
=end 