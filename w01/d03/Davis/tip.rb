puts "What is the price of the meal?"
price = gets.chomp.to_f

puts "What is the tax as a percentage terms?"
tax = gets.chomp[/\d+/].to_f / 100.0

puts "How much would you like to tip in percentage terms?"
tip = gets.chomp[/\d+/].to_f / 100.0

total = price + (price * tax) + (price * tip)

puts "You are paying $#{total.round(2)}"
