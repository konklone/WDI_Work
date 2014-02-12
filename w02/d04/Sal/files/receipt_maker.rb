#User is prompted for company name 

#User is prompted for product 

#User is prompted for price 

#Receipt is saved in a receipt.txt file is CVS format


### receipts.txt ###

#barnes and noble, harry potter, 16.95 
#potbellys, meatball parm, 8.25


puts "Comany name:"
	company = gets.chomp
puts "Product:"
	product = gets.chomp
puts "Price:"
	price = gets.chomp.to_f 

file = File.new("receipts.txt", "a+")

file.puts "#{company},#{product},#{price}"

file.close

#ORRRRR!!!! (much cleaner)
=begin
info = []

puts "Comany name:"
	company << gets.chomp
puts "Product:"
	product << gets.chomp
puts "Price:"
	price << gets.chomp.to_f 

file = File.new("receipts.txt", "a+")
file.puts info.join(",")
	
=end













