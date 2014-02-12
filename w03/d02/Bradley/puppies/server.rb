require 'sinatra'
require 'sinatra/reloader'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "bradpuder",
  :password => "",
  :database => "puppies"
  )

require_relative './model/puppy'

get("/") do
  erb :index
end

get("/all") do
  @puppies = Puppy.all
  erb :all
end

get("/new") do
  erb :new
end

post("/all") do
  puppy = Puppy.new(author: params[:author], photo: params[:photo], date: params[:date])
  puppy.save
  redirect "/all/#{puppy.id}"
end

get("/all/:id") do
  @puppy = Puppy.find(params[:id])
  erb :show
end


