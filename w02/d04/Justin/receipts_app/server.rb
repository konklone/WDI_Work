require "sinatra"
require "sinatra/reloader"
require "pry"

# * GET "/" => "Welcome to Receipts.io"
get "/" do
	erb :index
end


# * GET "/receipts/new" => form for new receipts
# 	*inputs for store, product, and price
get "/receipts/new" do
	erb :purchase_form
end

# * POST "/receipts" => create a new receipt and save it as a CSV to receipts.txt
# 		(and assing it a unique id)
post "/receipts" do 
	count = %x{wc -l receipts.txt}.split[0].to_i
	purchase = []
	purchase << count + 1
	purchase << params[:store]
	purchase << params[:item]
	purchase << params[:price]
	file = File.new("receipts.txt","a+")
	file.puts purchase.join(",")
	file.close
	erb( :purchase_form )
end

# * GET "/receipts"=> print out all the generate receipts
get "/receipts" do 
	# all_r = {}
	# @array_r = []
	@string = ""
	file = File.new("receipts.txt", "r")
	file.each do |line|
		purchase = line.split ","
		@string += "#{purchase[0]} Store: #{purchase[1]} Product: #{purchase[2]} Price: #{purchase[3]}<br>"
		# @array_r << string
	end
	file.close
	erb :all_receipts
end

# * GET "/receipts/:id" => show a particular receipt
get "/receipts/:id" do
	@hash = {}
	@id = params[:id].to_i
	file = File.new("receipts.txt", "r")
	file.each do |line|
		purchase = line.split ","
		@hash[purchase[0].to_i] = purchase
	end
	file.close
	erb :single_receipt
end
