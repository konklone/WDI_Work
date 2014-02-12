require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
# require 'pry'
# GET /stocks?symbol=GOOG 
#==> 845.45


get "/" do
  erb :index
end

get "/stocks" do
  @stock_symbol = params[:stock_symbol]
  @random_string_from_user = params[:stuff]
  response= HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
  @price = response["Data"]["LastPrice"]
  erb :stocks
end

# # GET /SteveMartin

# get "/:username" do 
#   params[:username]  
# end

# # GET /?username=SteveMartin

# get "/" do
#   params[:username]
# end

