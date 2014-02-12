require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require "httparty"

get "/" do
  erb :index
end

# http://localhost:4567/stocks?stock_symbol=GOOG

get "/stocks" do
  @stock_symbol = params[:stock_symbol]
  @price = response["Data"]["LastPrice"]
  @random = params[:stuff]
  erb :form
end