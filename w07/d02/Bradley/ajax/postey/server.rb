require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

posts  = []

get '/' do
  @posts = posts
  erb :index
end

post '/' do
  post = {title: params[:title], content: params[:content]}
  posts << post
  JSON(posts)
end