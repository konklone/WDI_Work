#User is prompted for company name. 
#User is prompted for product. 
#User is prompted for price.
#Receipt is saved. 
#Receipt is saved in a receipts.txt file in a CSV format. 

############### receipts.txt #########

#barnes and noble, harry potter 4, 16.95
#potbellys, meatball parm, 8.25 

info = []

puts "Enter store name:"
info << gets.chomp  

puts "Enter product:"
info << gets.chomp 

puts "Enter price:"
info << gets.chomp 

file = File.new("receipt.txt", "a+")
file.puts info.join(" , ") 

file.close 