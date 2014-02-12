require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

posts = [{title: "first post", content: "omg"}]

get '/' do
  @posts = posts
  erb :index
end

post '/' do
  # Accept JSON or
  # Accept XML
  # pr accept something else

  # DEFAULT - form-encoded
  # binding.pry

  posts << {title: params[:title], content: params[:content]}

  JSON(posts)

end