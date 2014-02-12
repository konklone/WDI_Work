puts "Please enter the price of your meal."
  meal_cost = gets.chomp.to_f

puts "What is the tax percentage in your state?"
  tax = (gets.chomp.to_f * 0.01)

puts "How much would you like to tip?"
  tip = (gets.chomp.to_f * 0.01)

puts "Your total is $#{meal_cost + (meal_cost * tax) + (meal_cost * tip)}."