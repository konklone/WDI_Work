require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

# GET /
# => User to be presented with "Welcome to Stock.ly"

# GET /stocks?=symbol=GOOG
# => 845.45

get "/" do
	erb :index
end

get "/stocks" do
	@stock_symbol = params[:stock_symbol]
	response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
	
	@price = response["Data"]["LastPrice"]

	erb :stocks
end