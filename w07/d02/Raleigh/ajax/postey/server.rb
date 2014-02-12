require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

posts = [{title: "This is a title", content: "This is the content"}]

get '/' do 
   @posts = posts
   erb :index
end

post '/' do 
   # pizza = {toppings: ["cheese", "pepperoni"], price: 16.95}
   # JSON(pizza)
   posts << {title: params[:title], content: params[:content]}

   JSON(posts)
end
