puts "What is the price of the meal?"
meal_price = gets.chomp.to_i
puts "What is the tax percentage?"
tax_pre_dec = gets.chomp.to_i
dec = 0.01
dec.to_f
tax = dec * tax_pre_dec
puts "What percentage would you like to tip?"
tip_pre_dec = gets.chomp.to_i
tip = dec * tip_pre_dec
total = (meal_price * tax) + (meal_price * tip) + meal_price
puts "Your total is: $#{total}"