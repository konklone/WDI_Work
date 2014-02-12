require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'

posts = [{title: "First Post", content: "So much stuff"}]

get '/' do
  @posts = posts
  erb :index
end

post '/' do 
  posts << {title: params[:title], content: params[:content]}
  JSON(posts)
end