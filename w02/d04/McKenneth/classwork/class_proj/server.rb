require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

# GET /
#=> "Welcome to Stock.ly"

  get("/") do 
    erb :index
  end

# Get /stocks?symbol=GOOG
#=>845.45
  get("/stocks") do 
    @stock_symbol = params[:stock_symbol]
    response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
    @prices = response["Data"]["LastPrice"]
    erb :stocks
  end