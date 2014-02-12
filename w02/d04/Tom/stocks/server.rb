require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'


# Create the root route
get "/" do
  erb :index
end


# Get stock price for Google - GOOG
get "/stocks" do
  @stock_symbol = params[:stock_symbol]

  response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")

  @price = response["Data"]["LastPrice"]

  erb :stocks
end


