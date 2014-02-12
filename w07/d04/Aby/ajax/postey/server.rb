require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

posts = [{title: "First Post", content: "OMG so much stuff happened today."}]

get '/' do
  @posts = posts
  erb :index
end

post "/" do
  # pizza = {toppings: ["cheese", "mushrooms"], price: 16.99}
  # JSON(pizza)

  # Write the logic to append the new post to the posts array
  posts << {title: params[:title], content: params[:content]}

  JSON(posts)
end