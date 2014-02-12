require 'sinatra'
require 'sinatra/reloader'

get "/" do
  # redirect to("/multiple")
  erb :index
end

get "/mutliple" do
  @num_squares = params[:num].to_i
  erb :multiple
end