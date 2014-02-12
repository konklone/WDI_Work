require "sinatra"
require "sinatra/reloader"
require "erb"

get ("/") do
	erb :index
end

get ("/receipts/new") do
	erb :form
end


post ("/receipts") do
	@store = params[:store]
	@product = params[:product]
	@price = params[:price]
	receipt_info = Array.new
	receipt_info << @store
	receipt_info << @product
	receipt_info << @price
	file = File.new("receipts.txt", "a+")
	file.puts receipt_info.join(",")
	file.close
end



# get ("/receipts") do
# 	file = File.new("receipts.txt", "r")
# 	master_receipts = Array.new
# 	file.each do |line|
# 		info = line.split(",")
# 		@list = master_receipts.push(info)
# 	end
# 	erb :display
# end
