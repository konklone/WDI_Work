require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/'  do 
  erb :index
end
  
post '/' do
  erb :index
end
