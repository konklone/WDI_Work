require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

posts = []

get '/?' do
  @posts = posts
  erb :index
end

post '/?' do
  posts << {title: params[:title], content: params[:content]}
  JSON(posts)
end