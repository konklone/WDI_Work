require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

post "/" do
  binding.pry
end
