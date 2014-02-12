require "sinatra"
require "sinatra/reloader" 
require 'erb'
require 'pry'

get ('/') do
  erb :index
end

get('/personal_data/:data_point')do
  "The data_point is #{params[:data_point]}"
end