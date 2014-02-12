require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

posts = [{title: "First Post", content: "Wow I love it"}]

get '/' do
  @posts = posts
  erb :index
end

post "/" do
  # pizza = {toppings: ["cheese", "mushroooms"], price: 16.99}
  # JSON(pizza)
  posts << {title: params[:title], content: params[:content]}
#"post succeeded!!"
JSON(posts)

end