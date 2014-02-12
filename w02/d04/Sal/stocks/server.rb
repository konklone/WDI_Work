require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

#GET /stocks?symbol=GOOG
# => 845.45

get "/" do 
	erb :index
end

get "/stocks" do
	@stock_symbol = params[:stock_symbol]
	@random_string_from_user = params[:stuff]
	response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
	@price = response["Data"]["LastPrice"]
	erb :stocks
end