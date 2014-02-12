require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'


posts = []


get '/' do
  erb :index
end

post "/" do
	# pizza = {toppings: ["cheese", "mushrooms"], price: 16.99}
	# JSON(pizza)
	posts << {title: params[:title], content: params[:content]}

	JSON(posts)
end