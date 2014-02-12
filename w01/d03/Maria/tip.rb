puts "What is the price of your meal?"
price = gets.chomp.to_f
puts "What is the percentage of tax?"
percentage = gets.chomp.to_f
puts "How much percentage would you like to tip?"
tip = gets.chomp.to_f

answer = price * percentage / tip 
puts "Your answer is #{answer.to_f}"


