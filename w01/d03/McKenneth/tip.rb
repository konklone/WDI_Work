puts "Watup! Tipper here...not related to that Gore lady..."
puts "Lets get some tips, eh? How much did your meal cost?"
print ">"
price = gets.chomp.to_f

puts "Now tell me how high the taxes are in your area:"
print ">"
taxes = (gets.chomp.to_f)/100

puts "Now tell me what percentage you want to tip:"
print ">"
percentage = (gets.chomp.to_f)/100

total = price + (price * taxes) + (price * percentage)

puts "Here goes nothin..."
puts "You're grand total for your meal, including tax and tip is: #{total}"