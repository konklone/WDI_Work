puts "Enter price"
price = gets.chomp.to_f
puts "What's the tax?"
tax = gets.chomp.to_f / 100
puts "What % would you like to tip?"
tip = gets.chomp.to_f / 100
price_with_tax = price + price * tax
price_with_tax_and_tip = price_with_tax + price_with_tax * tip
puts "Your total is #{price_with_tax_and_tip}"