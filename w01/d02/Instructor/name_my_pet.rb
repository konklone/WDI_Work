puts "Please enter an animal type"
animal = gets.chomp
puts "Please enter your age"
age = gets.chomp.to_i
puts "Please enter your name"
name = gets.chomp
puts "#{name} the #{animal} is #{age} years old"

puts name + " the " + animal + " is " + age + " years old"