require "sinatra"
require "sinatra/reloader"
require "httparty"

#GET / 
#=> User to be presented with "Welcome to our Stock.ly"

get "/" do
	erb :index 
end



# GET /stock?symbol=GOOG
#?symbol= GOOG is a query string, therefore it will be available in the body of our block
# => 845.45

get "/stocks" do

	@stock_symbol = params[:stock_symbol]
	
	response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
	
	@price = response["Data"]["LastPrice"]

	@random_stuff_you_enter = params[:stuff]

	erb :stocks


	
end

# GET /SteveMartin

# get "/stocks/:stock_symbol"

# get "/:username" do
# 	params[:username]
# end

# #GET /?username=SteveMartin

# get "/" do
# 	params[:username]
# end
