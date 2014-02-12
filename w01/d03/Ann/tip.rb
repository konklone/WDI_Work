puts "What is the price of your meal?"
meal_price = gets.chomp.to_f 

puts "What is the tax percentage?"
tax_percentage = gets.chomp.to_f 

puts "What percentage would you like to tip?"
tip = gets.chomp.to_f 

puts "The total you should pay is $ #{meal_price + (meal_price * (tax_percentage * 0.01)) + (meal_price * (tip * 0.01)) }"
#Why do I need a zero before the dot? 