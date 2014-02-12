# user is prompted for store name
# user is prompted for product
# user is prompted for price
# receipt is saved in receipt.txt file in CSV format

puts "Provide a store name."
store = gets.chomp
puts "Provide a product name"
product = gets.chomp
puts "Provide a price"
price = gets.chomp

receipt = File.new("receipt.txt", "w")
receipt.puts "#{store},#{product},#{price}"
receipt.close

