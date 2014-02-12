require 'sinatra'
require 'erb'
require 'sinatra/reloader'

get( "/" ) do 
  erb :boxes  
end 
