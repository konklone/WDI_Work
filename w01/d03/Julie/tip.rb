puts "How much was your meal?"
price = gets.chomp.to_f
puts "What is the tax percentage on your bill?"
tax = gets.chomp.to_f
puts "What percentage would you like to tip?"
percent_tip = gets.chomp.to_f
tax_amount = (price * tax) / 100
total_with_tax = (tax_amount + price)
tip_amount = (price * percent_tip) / 100
total_with_tip = (tip_amount + total_with_tax)


puts "Your bill is #{total_with_tip}"
