puts "How much did your meal cost?"
meal_price = gets.chomp.to_f

puts "What is the tax percentage?"
tax = gets.chomp.to_f / 100

puts "How much would you like to tip in percent? For example: 15%."
tip = gets.chomp.to_f / 100

puts "Your total with tax and tip is $#{meal_price + (tax * meal_price) + (meal_price * tip)}."
