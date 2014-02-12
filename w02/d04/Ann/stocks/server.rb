require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

#GET / 
#=> User to be prestned with "Welcome to our Stock.ly"

get ("/") do 
  erb :index 
end 

#GET /stocks?symbol=GOOG 
get ("/stocks") do 
  @stock_symbol = params[:stock_symbol]
  #doing this to inspect parameters 
  response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
  
  @price = response["Data"]["LastPrice"]

  erb :stocks
end 

#do response["Data"]["LastPrice"]

