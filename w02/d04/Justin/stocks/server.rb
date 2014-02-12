require "sinatra"
require "sinatra/reloader"
require "pry"
require "httparty"

# GET /
#=> User to be resented with "Welcome to our Stock.ly"

get "/" do
	erb :index
end





# GET /socks?symbol=GOOG
#=> 845.45

get "/stocks" do
	binding.pry
	@stock_symbol = params[:stock_symbol]
	@random = params[:stuff]

	response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
	
	@price = response["Data"]["LastPrice"]

	erb :stocks
end




# # GET /SteverMartin

# get "/:username" do 
# 	params[:username]
# end

# # GET /?username=SteveMartin

# get "/" do
# 	params[:username]
# end

