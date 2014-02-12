puts "How much was your meal?"
meal_price = gets.chomp.to_f

puts "What is the tax percentage?"
tax_percentage = gets.chomp.to_f / 100

puts "What percentage would you like to tip? "
tip_amount_preference = gets.chomp.to_f / 100

puts "Your total is #{meal_price + (meal_price * tax_percentage) + (meal_price * tip_amount_preference)}"