puts "Please enter the price of your meal?"
price = gets.chomp.to_f
puts "whats the tax amount"
tax = gets.chomp.to_f / 100
puts "Please enter your desrired tip amount?"
tip = gets.chomp.to_f / 100

price_with_tax = price * tax
price_with_tax_and_tip = price + price_with_tax + price_with_tax * tip


puts "This is your new total including all charges #{price_with_tax_and_tip}!"

