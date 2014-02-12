require 'sinatra'
require 'sinatra/reloader'
require 'pry'
# like curl for Ruby
require 'httparty'

# GET /
# => User to be presented w/ "Welcome to our Stock.ly"
get '/' do 
	erb :index
end

# GET /stocks?symbol=GOOG
# => 845.45
get '/stocks' do 
	# binding.pry
	@stock_symbol = params[:stock_symbol]
	@random_string = params[:stuff]

													 # Host													Path
	response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")

	@price = response["Data"]["LastPrice"]

	erb :stocks
end

