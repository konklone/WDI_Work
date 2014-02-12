puts "Please enter the price of your meal"
meal = gets.chomp.to_f

puts "Please enter your tax percentage"
tax = gets.chomp.to_f / 100

puts "Enter the percentage you want to tip"
tip_perc = gets.chomp.to_f / 100

tip = tip_perc  * meal
total = meal + (tax * meal) +tip

puts "Your total cost is $#{total}."

if tip_perc >=15
  puts "Your tip is $#{tip}...nice, you have some class"
else
  puts "Where you from....New Jersey?? Tip more than $#{tip} you cheap bastard"
end