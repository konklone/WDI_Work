require "sinatra"
require "sinatra/reloader"

# GET /
#=>want user to be presented with "Welcome to our Stock.ly"

get "/" do 
 erb :index 
end
get "/stocks" do
  erb :stocks
end





