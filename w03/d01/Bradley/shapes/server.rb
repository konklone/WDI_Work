require 'sinatra'
require 'sinatra/reloader'

get("/") do
  erb :index
end

get("/multiple") do
  @num = params[:num].to_i
  erb :multiple
end