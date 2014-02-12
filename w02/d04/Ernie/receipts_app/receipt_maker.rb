#User is prompted for store name!
#User is prompted for product!
#User is prompted for price!
#Receipt is saved in a Receipt txt file in CSV format!

#######Receipt.txt#########

#barnes & noble Harry Potter, 16.95

#potbelly , meatball-parm 8.25

info = []

puts "Please Enter a Store"
info << gets.chomp.downcase
puts "Please Enter the product you wish to purchase!"
info << gets.chomp.downcase
puts  "How much does the price tag say it cost!"
info << gets.chomp.to_f

file = File.new("receipt.txt", "a+")


info puts info.join(',')

info.close