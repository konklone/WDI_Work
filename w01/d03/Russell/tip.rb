Enter the price of your emal
puts "What is the price of your meal?"
price = gets.chomp.to_f
puts "What is the tax percentage of your meal?"
tax = gets.chomp.to_f
puts "What percentage would you like to tip?"
tip = gets.chomp.to_f
puts "Your meal costs #{price + (price * (tax/100)) + (price * (tip/100))}"
this works

#this is how they did it in class

puts "Enter price"
price = gets.chomp.to_i
puts "What is your tax?"
tax = gets.chomp.to_f / 100
puts "what would you like to tip?"
gets.chomp.to_f / 100
price_with_tax = price + price *


