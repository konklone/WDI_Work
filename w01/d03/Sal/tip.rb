puts "How much was your meal?"

price = gets.chomp.to_f

puts "What is the tax percentage of your meal?"

tax = gets.chomp.to_f/100

puts "What percentage would you like to tip?"

tip = gets.chomp.to_f/100

total_with_tax = (price * tax) + price 

total_meal_price = (total_with_tax * tip) + total_with_tax

puts "Your total is $#{total_meal_price}"

