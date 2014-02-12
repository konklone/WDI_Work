require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require "httparty"

# GET /
#=> User to be presented with "Welcome to our Stock.ly"

get "/" do
  erb :index
end

# GET /stocks?symbol=GOOG
#=> 845.45

get "/stocks" do

  @stock_symbol = params[:stock_symbol]
  @random_string_from_user = params[:stuff]
  
  response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")

  @price = response["Data"]["LastPrice"]

  erb :stocks
end

# # GET /stocks/GOOG

# get "/stocks/:stock_symbol"

# # GET /SteveMartin

# get "/:username" do
#   params[:username]
# end

# # GET /?username=SteveMartin

# get "/" do
#   params[:username]
# end




# require 'sinatra'
# require 'sinatra/reloader'
# require 'httparty'
# require 'pry'

# # GET /
# # => User to be presented with "Welcome to our stock app."

# # GET /stocks?symbol=GOOG
# # => 845.45

# get "/" do
# erb :index
# end

# get "/stocks" do
# @stock_symbol = params[:stock_symbol]
# response = HTTParty.get("http://dev.markitondemandcom/Api/Quote/json?symbol=#{@stock_symbol}")
# @price = response["Data"]["LastPrice"]
# erb :stocks
# end 

# # type localhost:4567/stocks?symbol=GOOG