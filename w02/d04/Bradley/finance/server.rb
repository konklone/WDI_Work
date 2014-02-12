require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get("/") do 
  erb :index
end

get("/stocks") do
  @stock_symbol = params[:stock_symbol]
  response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
  @price = response["Data"]["LastPrice"]
  erb :stocks
end

