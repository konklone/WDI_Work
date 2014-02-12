
puts "Welcome to the tip calculator! I hope you enjoyed your meal!"
puts "What was the subtotal of your meal?"
subtotal = gets.chomp.to_f

puts "Thanks. And what was the tax charged?"
tax = gets.chomp.to_f

puts "And finally, what percentage would you like to tip?"
tip_percent = (gets.chomp.to_f * 0.01) + 1

puts "Thank you! Drumroll please............."

total = ( ( subtotal * tip_percent ) + tax )

puts ""
puts "Your total is: #{total.round(2)}"
puts ""