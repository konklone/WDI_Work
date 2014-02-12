require 'sinatra'
require 'erb'
require 'sinatra/reloader'
require 'pry'


get ("/") do
  erb :boxes
end



