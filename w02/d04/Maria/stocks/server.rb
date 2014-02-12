require "sinatra"
require "sinatra/reloader"
require "httparty"
require "pry"
# GET /
#=>want user to be presented with "Welcome to our Stock.ly"

get "/" do 
 erb :index 
end

#key of the hash we are sending up to server is @stock_symbol so the value (in the stscks.erb page is AAPL )
get "/stocks" do
  @stuff = params[:stuff]
  @stock_symbol = params[:stock_symbol] #this part not getting as it conects to @price
#paramsare the key value symbols
  response = HTTParty.get("http://dev.markitondemand.com/API/Quote/json?symbol=#{@stock_symbol}")

  @price = response["Data"]["LastPrice"]

 erb :stocks
end





