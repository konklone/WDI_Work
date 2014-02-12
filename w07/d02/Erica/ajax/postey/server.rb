require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'

posts = [{title: "this is a title", content: "This is the content!"}]

get "/" do
  @posts = posts
  erb :index  
end

post "/" do
  # pizza = {toppings: ["cheese", "mushrooms"], price :16.99}
  # JSON(pizza)

  # write the logic to append the new post to the posts array
 
  posts << {title: params[:title], content: params[:content]}

  JSON(posts)
end


