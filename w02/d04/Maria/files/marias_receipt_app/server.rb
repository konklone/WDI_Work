require "sinatra"
require "sinatra/reloader"
require "pry"

info = []

get "/" do # "Welcome" and links page below
  erb :index
end


# Still having trouble understanding how to show 
# via routes that have more than one / like below.

get "/receipts/new" do # form for new receipts
# info =  STORE the params above into info
# erb file shows receipts.erb  
 erb :receipts
end

post "/receipts" do
# Brad says I don't need instance vars: like @store,@product,@price because I won't be calling them in an erb file
#instead can store them into the txt file with the code below and calling them through array.
  
  info << params[:store]
  info << params[:product]
  info << params[:price]
  fs = File.new("receipts.txt", "a+")

  fs.puts info.join(",")
  fs.close
end

get "/receipts" do

  # info << params[:store]
  # info << params[:product]
  # info << params[:price]

  fs = File.new("receipts.txt", "r") #this gets the info in the receipts.txt file
  puts fs 

  # fs.each do |line|
  # values = line.split(",") # remember this returns it as an array
  # "Store: #{values[0]}"
  # "Product: #{values[1]}"
  # "Price: #{values[2]}"
  file.close # *** get an error here Not sure why ***

  erb :receipts
end



