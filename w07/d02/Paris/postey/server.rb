require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

posts =  [{title: "First Post", content: "OMG"}]

get '/' do 
  # @posts = posts
  erb :index
end


post "/" do
  # accept JSON or
  # accept XML or
  # pizza = {toppings: ["cheese", "mushrooms"], price: 16.99}
  # JSON(pizza)

  posts << {title: params[:title], content: params[:content]}
  JSON(posts)
end

