require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

posts = [{title: "First Post title", content: "content aaaeeeea"}]

get '/' do
  @posts = posts
  erb :index
end

post '/' do
  # accept JSON, XML, soemthing else
  # default: form-encoded

  # string being sent when post request made
  # pizza = {toppings: ["cheese", "mushrooms"], price: 16.99}
  # JSON(pizza)

  posts << {title: params[:title], content: params[:content]}

  JSON(posts)
end

