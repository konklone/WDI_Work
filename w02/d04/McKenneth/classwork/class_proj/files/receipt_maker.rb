# User is prompted for store

# User is prompted for the product

# User is prompted for the price

# Receipt is saved in a receipts.txt in csv

#barnes and noble , harry potter, 16.95
#potbelly sandwich shop, meatball parm,8.25
add = []
puts "What store?"
#item = gets.chomp
add << gets.chomp
puts "What item?"
#item = gets.chomp
add << gets.chomp
puts "How much does it cost?"
#price = gets.chomp
add << gets.chomp
file = File.new("receipts.txt", "a+")

#file.puts "#{store}, #{item}, #{price}"
file.puts info.join(",")

file.close
