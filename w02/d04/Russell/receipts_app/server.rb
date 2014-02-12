require "sinatra"
require "sinatra/reloader"
require "httparty"

#GET / 
#=> User to be presented with "Welcome to our Stock.ly"

get "/" do
	erb :index
end

get "/receipts/new" do
	# @store = params[:store]
	# @product = params[:product]
	# @price = params[:price]
	erb :form
end

post "/receipts" do
  info = Array.new
  info << params[:store]
  info << params[:product]
  info << params[:price]
  file = File.new("receipts.txt", "a+")
  file.puts info.join(",")
  file.close
end
 
get "/receipts" do
  erb :receipts
end
 
 
get "/receipts/:id" do
 
  erb :receipts
end
  # info = Array.new
  # info << params[:store]
  # info << params[:product]
  # info << params[:price]
# 	@store = params[:store]
# 	@product = params[:product]
# 	@price = params[:price]
# 	erb :receipts
# end



# GET /stock?symbol=GOOG
#?symbol= GOOG is a query string, therefore it will be available in the body of our block
# # => 845.45

# get "/stocks" do

# 	@stock_symbol = params[:stock_symbol]
	
# 	# response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
	
# 	@price = response["Data"]["LastPrice"]

# 	@random_stuff_you_enter = params[:stuff]

# 	erb :stocks
	
# end