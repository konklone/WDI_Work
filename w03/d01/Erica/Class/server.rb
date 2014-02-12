#require 
require 'sinatra'
require 'sinatra/reloader'
# <link rel="stylesheet" href="/style.css">

#create a route
#create an index and a views folder
get '/' do
  erb :index 
end 

get '/multiple' do
  @number_squares = params[:num].to_i
  erb :multiples
end
