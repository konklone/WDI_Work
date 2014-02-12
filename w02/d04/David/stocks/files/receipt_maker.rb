# User is prompted for store

# User is prompted for product

# User is prompted for price

# Receipt is saved in a receipts.txt file in CSV format


####### receipts.txt #####

#barnes and noble, harry potter 4, 16.95
#potbellys, meatball parm, 8.25
info = Array.new

print "Please enter your store: "
info << gets.chomp.capitalize

print "Please enter your product: "
info << gets.chomp.capitalize

print "Please enter the price: "
info << gets.chomp

file = File.new("receipts.txt", "a+")

file.puts info.join(",")

file.close