  # Tip Calculator

  puts "What was the price of your meal?"
  price = gets.chomp.to_f

  puts "How much is tax (i.e. 7%): "
  tax = gets.chomp.to_f / 100

  puts "How much would you like to tip (i.e. 20%): "
  tip = gets.chomp.to_f / 100

  total = price + ((price * tax) * tip)

  puts "Your total including tip is $#{total}"