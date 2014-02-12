require "sinatra"
require "sinatra/reloader"
require "pry"

my_file = File.new("receipts.txt", "a+")

get "/" do
	erb :index
end

post "/newreceipt" do
	store_name = params[:store_name]
	product_name = params[:product_name]
	price = params[:price]
	
	#logic for processing new receipt
	#TODO need to add unique id!
	my_file = File.new("receipts.txt", "a+")
	my_file << store_name + "," + product_name + "," + price + "\n"
	my_file.close
	
	erb :success
end

get "/newreceipt" do
	erb :receipt
end

get "/receipts" do
	#print all receipts
	
	my_file = File.new("receipts.txt", "a+")
	#binding.pry
	
	my_file.each do |line|
		line_array = line.split(",")
		
		#pass one variable with array
		@UID = line[0]
		@store_name = line[0]
		@product_name = line[1]
		@price = line[2]
		
		binding.pry
	end
	erb :display_receipt #move to bottom / one erb code
	my_file.close

end



