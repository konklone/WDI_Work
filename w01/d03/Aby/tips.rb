puts "Enter the price of your meal"
price = gets.chomp.to_f
puts "What's the tax where you are?"
tax = gets.chomp.to_f / 100
puts "what percent would you like to tip"
tip = gets.chomp.to_f / 100
pwt = price + (price * tax)
pwtat = pwt + (pwt * tip)
puts "Your total is #{pwtat.round(2)}"