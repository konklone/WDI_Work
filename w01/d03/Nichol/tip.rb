# ### Tip Calculator
# - This should be done in a new file called tip.rb
# - The user should be asked to enter the price of their meal
# - The user should be asked to enter what the tax percentage is
# - The user should be asked to enter what percentage they would like to tip
# - After these three options have been entered, the user should see an appropriate displayed output with their total
#   - For example:
#   `Your total is $15.47`

puts "what did your food cost?"
mealprice = gets.chomp.to_f

puts "what tax did you pay (enter as percentage)?"
tax = gets.chomp.to_f
taxtotal = tax / 100
taxtotal = taxtotal*mealprice

puts "what percentage do you want to tip?"
tip = gets.chomp.to_f
tipammount = tip / 100
tipammount = tipammount * (mealprice+taxtotal)

total = mealprice + taxtotal + tipammount

puts "your meal cost #{mealprice}, you paid #{taxtotal}
 in taxes and you tipped #{tipammount}"

puts "your total is #{total}"

if tip < 15
	puts "tip more next time"
end

