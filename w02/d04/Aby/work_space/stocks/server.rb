require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

# User presented with "Welcome to Stock.ly"

get "/" do 
	erb :index
end

# GET /stocks?symbol=GOOG
get "/stocks" do 

	@stock_symbol = params[:symbol]
	response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
	erb :stocks
	@price = response["Data"]["LastPrice"]

end
	

