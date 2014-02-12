puts 'How much was your meal?'
meal = gets.chomp.to_i
puts 'What is the tax percentage where you are?'
tax = gets.chomp.to_f
puts 'What percentage would you like to tip?'
tip = gets.chomp.to_f


tax_percent = tax / 100
tip_percent = tip / 100

tax_amount = meal * tax_percent
tip_amount = meal * tip_percent

tax_total = meal + tax_amount
total = tax_total + tip_amount

puts "Your total is #{total}"