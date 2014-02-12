puts "how expensive was your meal?"
meal_cost = gets.chomp.to_f

puts "what's the tax percentage (e.g. for 3.2% type 3.2)?"
tax = gets.chomp.to_f
tax = tax/100

puts "how much would you like to tip (e.g. for 15% type 15)"
tip = gets.chomp.to_f
tip = tip/100

total = ((meal_cost * (1 + tax)) * (1 + tip)).round(3)

puts "your total is $#{total}!"