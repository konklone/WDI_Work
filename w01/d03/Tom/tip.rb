puts "How much did your meal cost today?"
cost = gets.chomp.to_f

puts "What is the tax percentage?"
tax = gets.chomp.to_f/100

puts "What percentage would you like to tip your kind server?"
tip = gets.chomp.to_f/100

puts "Your final bill is as follows:
Sub Total: $ #{cost}
Tax: $#{cost * tax}
Tip: $#{cost * tip}"

total_tax = (cost * tax)
total_tip = (cost * tip)

puts "Your Total Comes to: $#{cost + total_tax + total_tip}"
