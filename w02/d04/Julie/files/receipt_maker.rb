#User is prompted for store
puts "What store are you in?"
store = gets.chomp.to_s
#User is prompted for product
puts "What are you buying?"
item = gets.chomp.to_s
#User is prompted for price
puts "What was the price?"
price = gets.chomp.to_s
#Reciept is saved in a receipts.txt file in CSV format
reciept = "#{store},#{item},#{price}"

file = File.new("receipts.txt","a+")
file.puts reciept
file.close

### reciepts.txt ####

#B&N, harry potter 4, 16.95