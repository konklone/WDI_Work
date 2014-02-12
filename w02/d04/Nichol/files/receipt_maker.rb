#user is prompted for store name
while 1==1 do	
	puts "store name"
	store_name = gets.chomp

	#user is prompted for product
	puts "product"
	product = gets.chomp

	#user is prompted for price
	puts "price"
	price = gets.chomp

	#receipt is saved in a receipts.txt file in csv format

	file = File.new("receipts.txt", "a+")

	receipt_entry = store_name + ", " + product + ", " + price

	file << receipt_entry

	file.close
end

#### reeipts.txt #####

#barnes and noble, harry potter 4, 19.99
#potbellys, meatball parm, 8.25

